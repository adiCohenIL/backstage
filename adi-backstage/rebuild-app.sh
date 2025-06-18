yarn build:all
docker stop backstage-app ; docker rm backstage-app ;  docker  build  . -f ./Dockerfile --tag backstage
docker run -d --name backstage-app --network backstage-network  -e POSTGRES_HOST=postgres-db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=adipassword -e POSTGRES_DB=backstage -e BACKEND_SECRET=adi_secret_key -e GITHUB_CLIENT_ID=Ov23li8CSeSUcFcCOkGX -e GITHUB_CLIENT_SECRET=3d3f4eb96cc322aea101975cea05e92923cd3d3b -p 3000:7007 backstage
docker restart backstage-app postgres-db
