#!/bin/bash

USERNAME="raja9658"
PASSWD="Raja@12345"
ORGANIZATIONNAME="raja9658"
REPOSITORY="docker-version"

# get token to be able to talk to Docker Hub
TOKEN=$(curl -s -H "Content-Type: application/json" -X POST -d '{"username": "'${USERNAME}'" , "password": "'${PASSWD}'"}' https://hub.docker.com/v2/users/login/ | jq -r .token)

#echo ${TOKEN}
echo "Identifying and deleting images first tag in ${ORGANIZATIONNAME} docker hub account"

# get tags for repo
# you can use jq for search name
IMAGE_TAGS=$(curl -s -H "Authorization: JWT ${TOKEN}" https://hub.docker.com/v2/repositories/${ORGANIZATIONNAME}/${REPOSITORY}/tags/ | jq -r '.results|.[]|.name')
echo $IMAGE_TAGS

FIRST_TAG=$(curl -s -H "Authorization: JWT ${TOKEN}" https://hub.docker.com/v2/repositories/${ORGANIZATIONNAME}/${REPOSITORY}/tags/  | jq -r '.results|.[7]|.name')
echo "first tag is ${FIRST_TAG}"
## Please uncomment below line to delete docker hub images of docker hub repositories 
curl -s  -X DELETE  -H "Authorization: JWT ${TOKEN}" https://hub.docker.com/v2/repositories/${ORGANIZATIONNAME}/${REPOSITORY}/tags/${FIRST_TAG}/
echo "$?"

if [ ${FIRST_TAG} = "null" ]
 then
        echo "first tag is showing null."
        echo "you have to push to dockerhub"
 else
        echo "successfully deleted"
fi

echo "Script execution end"
