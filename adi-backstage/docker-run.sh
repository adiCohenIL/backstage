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
docker run -d --name backstage-app --network backstage-network  -e POSTGRES_HOST=postgres-db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=adipassword -e POSTGRES_DB=backstage -e BACKEND_SECRET=adi_secret_key -e GITHUB_CLIENT_ID=Ov23li8CSeSUcFcCOkGX -e GITHUB_CLIENT_SECRET=3d3f4eb96cc322aea101975cea05e92923cd3d3b -p 3000:7007 backstage

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
