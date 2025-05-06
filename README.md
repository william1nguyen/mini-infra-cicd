# Mini-Infra-CI/CD

Stack:

- gitlab
- gitlab-runner
- go-harbor
- argoCD
- minikube

Tools:

- Docker

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
