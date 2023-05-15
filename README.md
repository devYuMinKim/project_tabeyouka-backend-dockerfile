# project_team-5-backend-dockerfile
> 이 레포지토리는 Docker를 사용하여 Laravel 백엔드를 배포하는 데 필요한 설정 및 파일을 제공합니다. 이 레포지토리를 사용하면 쉽게 Laravel 백엔드를 개발 및 배포할 수 있습니다.

## 구성 요소
> 이 레포지토리는 다음과 같은 구성 요소를 포함합니다.

1. Dockerfile
2. docker-compose.yml
3. .env example 파일

## 사용법
### 1. .env 파일 설정

다음과 같은 명령어를 사용하여 `.env.example` 파일을 복사하여 `.env` 파일을 생성합니다.
```bash
cp .env.example .env
```
그리고 나서 `.env` 파일을 수정하여 사용하려는 설정으로 변경합니다.

### 2. Dockerfile 빌드

프로젝트 루트 디렉토리에서 다음과 같은 명령어를 실행하여 Docker 이미지를 빌드합니다.
```bash
docker build -t my-laravel-app .
```

### 3. 컨테이너 시작

다음과 같은 명령어를 실행하여 컨테이너를 시작합니다.
```bash
docker-compose up -d
```

### 4. 컨테이너 로그 확인

컨테이너 내부의 로그를 확인하기 위해서는 다음과 같은 명령어를 실행합니다.
```bash
docker-compose logs -f
```

### 5. 컨테이너 종료

다음과 같은 명령어를 실행하여 컨테이너를 종료합니다.
```bash
docker-compose down
```

## 참고 자료

이 레포지토리에서 제공하는 예제와 자료 이외에도 Laravel 개발에 도움이 될 수 있는 다양한 자료들이 있습니다. 다음은 이를 참고할 수 있는 몇 가지 링크입니다.

1. [Laravel 공식문서](https://laravel.com/docs/10.x)
2. [MariaDB 공식문서](https://mariadb.org/documentation/)
3. [Docker 공식문서](https://docs.docker.com/)
