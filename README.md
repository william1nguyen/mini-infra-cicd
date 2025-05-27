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

```
chmod +x ./start-env-dev.sh
chmod +x ./stop-env-dev.sh
./start-env-dev.sh
```

## Gitlab runner

- Create new runner(untaged)
- Register new runner

```
gitlab-runner register  --url http://localhost:8088  --token REGISTER_TOKEN --docker-network-mode 'host'
```

- Add volumes to runner

```
vi /etc/gitlab-runner/config.toml
```

```
volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
```

## Harbor

domain: harbor.local
port: 80

### Login to harbor registry

```
docker login harbor.local:80
```

### Commands to tag and push image

- create new image tag

```
docker tag SOURCE_IMAGE[:TAG] harbor.local:80/PROJECT_NAME/REPOSITORY[:TAG]
```

- push image to harbor registry

```
docker push harbor.local:80/PROJECT_NAME/REPOSITORY[:TAG]
```

### Commands to pull image

```
docker pull harbor.local:80/PROJECT_NAME/REPOSITORY[:TAG]
```
