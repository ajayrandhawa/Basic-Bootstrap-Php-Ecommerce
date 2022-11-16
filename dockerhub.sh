TOKEN=curl -s -H "Content-Type: application/json" -X POST -H "Content-Type: application/json" -d '{"username":"raja9658" , "password":Raja@12345}' "https://hub.docker.com/v2/users/login/"
curl "https://hub.docker.com/v2/repositories/raja9658/docker-version/tags/" -X GET -H "Authorization: JWT ${TOKEN}"

curl "https://hub.docker.com/v2/repositories/raja9658/docker-version/tags/6/" -X DELETE -H "Authorization: JWT ${TOKEN}"
