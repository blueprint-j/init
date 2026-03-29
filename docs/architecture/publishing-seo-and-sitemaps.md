---
last-verified: 2026-03-29
---

# Publishing SEO And Sitemaps

## 목적
사용자 표면, SEO 메타, robots, sitemap 같은 생성 산출물의 구조를 설명한다.

## 이 문서가 다루는 것
- SEO 메타, sitemap, robots, generated output이 어떤 파이프라인으로 조립되는가
- source-first asset 또는 build 산출물 경계를 어디서 관리하는가
- 사용자 표면 변경이 생성 산출물과 만나는 내부 구조 지점

## 이 문서가 다루지 않는 것
- 어떤 경로를 indexable로 볼지에 대한 최종 제품 정책
- thin content 허용 여부 같은 사용자 노출 기준
- 임시 캠페인성 노출 판단이나 작업 메모

## 핵심 규칙
- SEO 정책은 `docs/knowledge/product-reference.md`와 architecture를 함께 읽고 판단한다.
- 빌드 산출물은 source-first로 다룬다.
- indexability, canonical, generated output 경로는 한 문서 세트에서 일관되게 관리한다.

## 이 문서에 함께 남길 항목
- SEO 메타 조립 경로
- generated output 경로
- 관련 라우트 / 명령 진입점
