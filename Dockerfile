from node:alpine as builder
workdir '/app'
copy package.json .
run npm isntall
copy . . 
run npm run build
from nginx
copy --from=builder /app/build  usr/share/nginx/html