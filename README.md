# Mini-Infra-CI/CD

This is mini CI/CD version (docker version) for testing on local.

Stack:

- gitlab
- gitlab-runner
- go-harbor
- argoCD
- minikube

Tools:

- Docker

## Start docker container

```bash
chmod +x ./start-env-dev.sh
chmod +x ./stop-env-dev.sh
./start-env-dev.sh
```

## Gitlab runner

- Create new runner(untaged)
- Register new runner

```bash
gitlab-runner register  --url http://localhost:8088  --token REGISTER_TOKEN --docker-network-mode 'host'
```

- Add volumes to runner

```bash
vi /etc/gitlab-runner/config.toml
```

```
volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
```

## Harbor

domain: harbor.local
port: 80

### Login to harbor registry

```bash
docker login harbor.local:80
```

### Commands to tag and push image

- create new image tag

```bash
docker tag SOURCE_IMAGE[:TAG] harbor.local:80/PROJECT_NAME/REPOSITORY[:TAG]
```

- push image to harbor registry

```bash
docker push harbor.local:80/PROJECT_NAME/REPOSITORY[:TAG]
```

### Commands to pull image

```bash
docker pull harbor.local:80/PROJECT_NAME/REPOSITORY[:TAG]
```
