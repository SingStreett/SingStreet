#서버
FE: https://i9b110.p.ssafy.io/
BE: https://i9b110.p.ssafy.io/backend
BE-swagger: http://i9b110.p.ssafy.io:4050/swagger-ui/index.html

# git 컨벤션

### Branch

- master : 배포
- develop/be : 배포 전 백엔드 병합
- develop/fe : 배포 전 프론트엔드 병합
- feature/be/[기능명] : 백엔드 기능 개발
- feature/fe/[기능명] : 프론트엔드 기능 개발
- hotfix/be/[기능명] : 급한 백엔드 에러 수정
- hotfix/fe/[기능명] : 급한 프론트엔드 에러 수정

### Commit Convention

| 태그 | 설명 | 예시 |
| --- | --- | --- |
| Feat | 새로운 기능 추가 | Feat: 피커 거리순 찾기 기능 추가 |
| DB | DB 변경 | DB: user 테이블에 user_id 컬럼 추가 |
| Fix | 버그 수정 | Fix: 거리 지정 불가 수정  |
| Build | 빌드 관련 파일 수정 | Build: Docker 파일 수정 |
| Docs | 문서 추가/수정/삭제 | Docs: 리드미 수정 |
| Style | 코드형식 변경(비즈니스 로직 변경 x) | Style: 피커 서비스 코드형식 변경 |
| Refactor | 코드 리팩토링 | Refactor: 피커 비즈니스 로직 리팩토링 |
| Test | 테스트 | Refactor: 회원가입 테스트 |
| Chore | 기타 변경사항 | Chore: 공백제거 |
