param(
    [string] $RootPath = $(Resolve-Path (Join-Path $PSScriptRoot '..\..\..'))
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$requiredEntrypoints = @(
    'AGENTS.md',
    'README.md',
    'docs/agent-rules/README.md',
    'docs/agent-rules/agent-protocol.md',
    'docs/architecture/index.md',
    'docs/knowledge/README.md',
    'docs/memory/index.md',
    'docs/memory/runtime/context.md'
)

$rootMarkdownFiles = @(
    'AGENTS.md',
    'README.md'
)

$markdownDirectories = @(
    'docs'
)

$rootPath = [System.IO.Path]::GetFullPath($RootPath)
$issues = [System.Collections.Generic.List[string]]::new()
$markdownFiles = [ordered]@{}

function Normalize-PathString {
    param([Parameter(Mandatory = $true)][string] $Path)
    return $Path.Replace('\', '/')
}

function Normalize-RelativePath {
    param([Parameter(Mandatory = $true)][string] $Path)

    $segments = (Normalize-PathString -Path $Path) -split '/'
    $normalized = New-Object System.Collections.Generic.List[string]

    foreach ($segment in $segments) {
        if ($segment -eq '' -or $segment -eq '.') {
            continue
        }

        if ($segment -eq '..') {
            if ($normalized.Count -gt 0) {
                $normalized.RemoveAt($normalized.Count - 1)
            }

            continue
        }

        $normalized.Add($segment)
    }

    return ($normalized -join '/')
}

function Should-AuditFile {
    param([Parameter(Mandatory = $true)][string] $RelativePath)
    return $true
}

function Requires-LastVerified {
    param([Parameter(Mandatory = $true)][string] $RelativePath)

    if (-not $RelativePath.StartsWith('docs/')) {
        return $false
    }

    if ($RelativePath.StartsWith('docs/memory/runtime/')) {
        return $false
    }

    $basename = [System.IO.Path]::GetFileName($RelativePath)
    return $basename -ne 'README.md' -and $basename -ne 'index.md'
}

function Has-LastVerifiedFrontMatter {
    param([Parameter(Mandatory = $true)][string] $Contents)

    $normalized = $Contents -replace '^\uFEFF', ''
    $frontMatterPattern = [regex]::Match(
        $normalized,
        '\A---(?:\r\n|\n|\r)(?<frontmatter>.*?)(?:\r\n|\n|\r)---(?:\r\n|\n|\r)',
        [System.Text.RegularExpressions.RegexOptions]::Singleline
    )

    if (-not $frontMatterPattern.Success) {
        return $false
    }

    return [regex]::IsMatch(
        $frontMatterPattern.Groups['frontmatter'].Value,
        '^last-verified:\s*\d{4}-\d{2}-\d{2}\s*$',
        [System.Text.RegularExpressions.RegexOptions]::Multiline
    )
}

function Get-MarkdownLinks {
    param([Parameter(Mandatory = $true)][string] $Contents)

    $links = New-Object System.Collections.Generic.List[object]
    $insideFence = $false
    $lines = $Contents -split "\r\n|\n|\r"

    for ($index = 0; $index -lt $lines.Length; $index++) {
        $line = $lines[$index]

        if ($line -match '^\s*(```|~~~)') {
            $insideFence = -not $insideFence
            continue
        }

        if ($insideFence) {
            continue
        }

        $lineWithoutInlineCode = [regex]::Replace($line, '`[^`]*`', '')
        $matches = [regex]::Matches($lineWithoutInlineCode, '(?<!!)\[[^\]]+\]\(([^)]+)\)')

        foreach ($match in $matches) {
            $links.Add([pscustomobject]@{
                Line = $index + 1
                Target = $match.Groups[1].Value
            })
        }
    }

    return $links
}

function Normalize-LinkTarget {
    param([Parameter(Mandatory = $true)][string] $Target)

    $trimmed = $Target.Trim()

    if ($trimmed -eq '') {
        return $null
    }

    if ($trimmed.StartsWith('<') -and $trimmed.EndsWith('>')) {
        $trimmed = $trimmed.Trim('<', '>')
    }

    $targetPath = ($trimmed -split '\s+', 2)[0]
    $targetPath = [System.Uri]::UnescapeDataString($targetPath)

    if ($targetPath -eq '' -or $targetPath.StartsWith('#')) {
        return $null
    }

    if ($targetPath -match '^(?:https?:|mailto:|app://|plugin://)') {
        return $null
    }

    return ($targetPath -split '#', 2)[0]
}

function Test-LinkTargetExists {
    param(
        [Parameter(Mandatory = $true)][string] $RootPath,
        [Parameter(Mandatory = $true)][string] $FromPath,
        [Parameter(Mandatory = $true)][string] $Target
    )

    $normalizedTarget = Normalize-PathString -Path $Target

    if ($normalizedTarget.StartsWith('/')) {
        $relativeCandidate = $normalizedTarget.TrimStart('/')
    } else {
        $rawFromDirectory = [System.IO.Path]::GetDirectoryName($FromPath)
        if ([string]::IsNullOrEmpty($rawFromDirectory)) {
            $fromDirectory = ''
        } else {
            $fromDirectory = Normalize-PathString -Path $rawFromDirectory
        }

        if ($fromDirectory -eq '.') {
            $fromDirectory = ''
        }

        $relativeCandidate = Normalize-RelativePath -Path ($fromDirectory + '/' + $normalizedTarget)
    }

    $absoluteCandidate = Join-Path $RootPath ($relativeCandidate.Replace('/', [System.IO.Path]::DirectorySeparatorChar))
    return Test-Path -LiteralPath $absoluteCandidate
}

foreach ($relativePath in $requiredEntrypoints) {
    $absolutePath = Join-Path $rootPath ($relativePath.Replace('/', [System.IO.Path]::DirectorySeparatorChar))
    if (-not (Test-Path -LiteralPath $absolutePath)) {
        $issues.Add("Missing required entrypoint: $relativePath")
    }
}

foreach ($relativePath in $rootMarkdownFiles) {
    $absolutePath = Join-Path $rootPath $relativePath
    if (Test-Path -LiteralPath $absolutePath) {
        $markdownFiles[$relativePath] = $absolutePath
    }
}

foreach ($relativeDirectory in $markdownDirectories) {
    $absoluteDirectory = Join-Path $rootPath ($relativeDirectory.Replace('/', [System.IO.Path]::DirectorySeparatorChar))

    if (-not (Test-Path -LiteralPath $absoluteDirectory)) {
        continue
    }

    foreach ($file in Get-ChildItem -LiteralPath $absoluteDirectory -Recurse -File -Filter *.md) {
        $absolutePath = $file.FullName
        $relativePath = Normalize-PathString -Path ($absolutePath.Substring($rootPath.Length).TrimStart('\', '/'))

        if (Should-AuditFile -RelativePath $relativePath) {
            $markdownFiles[$relativePath] = $absolutePath
        }
    }
}

foreach ($entry in $markdownFiles.GetEnumerator() | Sort-Object Name) {
    $relativePath = $entry.Key
    $absolutePath = $entry.Value
    $contents = [System.IO.File]::ReadAllText($absolutePath)

    if (Requires-LastVerified -RelativePath $relativePath) {
        if (-not (Has-LastVerifiedFrontMatter -Contents $contents)) {
            $issues.Add("Missing last-verified front matter: $relativePath")
        }
    }

    foreach ($link in Get-MarkdownLinks -Contents $contents) {
        $target = Normalize-LinkTarget -Target $link.Target

        if ($null -eq $target) {
            continue
        }

        if (-not (Test-LinkTargetExists -RootPath $rootPath -FromPath $relativePath -Target $target)) {
            $issues.Add(("Broken markdown link: {0}:{1} -> {2}" -f $relativePath, $link.Line, $target))
        }
    }
}

$sortedIssues = @($issues | Sort-Object)

if ($sortedIssues.Count -eq 0) {
    Write-Host ("OK: checked {0} markdown files and all live doc gates passed." -f $markdownFiles.Count) -ForegroundColor Green
    exit 0
}

Write-Error ("Live doc audit failed with {0} issue(s) across {1} markdown files." -f $sortedIssues.Count, $markdownFiles.Count)

foreach ($issue in $sortedIssues) {
    Write-Host ("- {0}" -f $issue) -ForegroundColor Yellow
}

exit 1
