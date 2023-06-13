# project_tabeyouka-backend-dockerfile
> 이 레포지토리는 Docker를 사용하여 Tabeyouka Laravel 백엔드를 배포하는 데 필요한 설정 및 파일을 제공합니다. <br>
> 이 레포지토리를 사용하면 쉽게 食べようか 프로젝트를 세팅할 수 있습니다. <br>
> [Docker hub](https://hub.docker.com/repository/docker/devyuminkim/team5/general)에서 배포 중입니다.

## 요구 사항
- Docker 설치: [Docker 공식 사이트](https://docs.docker.com/get-docker/)에서 적절한 버전의 Docker를 설치해야 합니다.

## 사용법
1. 도커 이미지를 클론해옵니다.
   ```docker
    docker pull devyuminkim/team5:team5-integration
   ```
2. 도커를 실행합니다.
   ```docker
    docker run -d --name team5 -p 8080:80 team5
   ```
3. 정상적으로 세팅이 완료되었다면, 브라우저에서 `localhost:8080`으로 접속됩니다! 프로젝트를 진행해주세요!
