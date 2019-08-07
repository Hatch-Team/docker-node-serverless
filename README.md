# Docker-node-serverless

[![Dockerhub badge](http://dockeri.co/image/hatchteam/serverless-node-deploy-aws)](https://hub.docker.com/r/hatchteam/serverless-node-deploy-aws)

Docker-powered build/deployment environment for Serverless projects. This Docker image is intended for use with CI/CD tools such as CircleCI.


---

This image is based on node:8.10-alpine ([AWS Lambda uses Node v8.10](http://docs.aws.amazon.com/lambda/latest/dg/current-supported-versions.html)) and has the AWS CLI.

Serverless should be used from the building project node_modules.

docker build . -t hatchteam/serverless-node-deploy-aws -t hatchteam/serverless-node-deploy-aws:10
docker push  hatchteam/serverless-node-deploy-aws
docker push hatchteam/serverless-node-deploy-aws:10