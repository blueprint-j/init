# 메모리 구조 지도

`docs/memory/`는 현재 작업을 위한 live state 전용 공간이다.

## 이 폴더가 다루는 것
- 현재 목표
- 작업 중 가정과 blocker
- 짧은 진행 로그

## 이 폴더가 다루지 않는 것
- 장기 행동 규칙
- 내부 구조 설명
- 사용자 노출 정책
- durable한 설계 결정

## 사용 문서
- [runtime/context.md](runtime/context.md): 현재 작업의 단일 상태 문서
- [runtime/dailylog.md](runtime/dailylog.md): 짧은 진행 로그와 임시 관찰

## 운영 기준
- 작업이 끝나면 durable한 결과는 해당 canonical 문서로 승격한다.
- runtime 문서는 다음 작업을 위해 가볍게 유지한다.
