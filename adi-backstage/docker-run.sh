#docker network create backstage-network
 docker image build . -f ./Dockerfile --tag backstage
### PostgreSQL

docker run -d --name postgres-db \
  --network backstage-network \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=adipassword \
  -e POSTGRES_DB=backstage \
  -p 5432:5432 postgres:17.0-bookworm 


### Backstage
docker run -d --name backstage-app --network backstage-network  -e POSTGRES_HOST=postgres-db \
  -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=adipassword -e POSTGRES_DB=backstage -e BACKEND_SECRET=adi_secret_key \
  -e K8S_RANCHER_URL="https://host.docker.internal:6443" \
  -e K8S_RANCHER_TOKEN=eyJhbGciOiJSUzI1NiIsImtpZCI6IjVVMXYxMHpVaTlFOUhRTkpDSzVwRkhnOXUydy11WlZTQngtS29naWs3cDQifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImJhY2tzdGFnZS1zZWNyZXQiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiYmFja3N0YWdlIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiY2MyMzA5MWUtZmFhOC00ZTZlLWJiOWUtOWZkYzMyNDRiMTA1Iiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50OmRlZmF1bHQ6YmFja3N0YWdlIn0.B9EFrsORKmOYU7Lli8wehW9Wv0r33pzDVz-GadHgzWbuJ4T5GcZoO-Yadndl9zSw4ZzFrIBbECv1jCN3HuQGvUskk6KP3mnxgdtzSj6yPcKpphIHI_cTgsoBOMXNTHcOXYjjhLe1Hyk1TAhBBKfUnUeXCgwZX-KWIbQNQ016G3Rf4RXyL4LMTKWZJFF8VysU-zP04yWa7Qw3R908ZWfjpnVrH1GBA0MzDRxy1YuTeCVZbCz154ErRswslrJLGb5qec0IBFhG4tbTJcQ8yJP5mhxWAoYw6RmabQzhT1sNTOlnXmRQavDdAUiPwQ2yrVBvnm7dHs8mftzIAlihp-O3gQ

docker run -d --name backstage-app \
  --network backstage-network  \
  -e POSTGRES_HOST=postgres-db \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=adipassword \
  -e POSTGRES_DB=backstage \
  -e BACKEND_SECRET=adi_secret_key \
  -e GITHUB_CLIENT_ID=Ov23li8CSeSUcFcCOkGX \
  -e GITHUB_CLIENT_SECRET=3d3f4eb96cc322aea101975cea05e92923cd3d3b \
  -p 7007:7007 \
  backstage
