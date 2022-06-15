FROM amazon/aws-lambda-nodejs

LABEL version="1.0.1"
LABEL repository="https://github.com/vnshgrg/github-action-amazon-lambda-serverless"
LABEL homepage="https://github.com/vnshgrg/github-action-amazon-lambda-serverless"
LABEL maintainer="Avinash"

LABEL "com.github.actions.name"="Serverless on AWS Lambda NodeJS"
LABEL "com.github.actions.description"="Wraps the Serverless Framework to enable common Serverless commands."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"

RUN npm i -g serverless@3.x
ENTRYPOINT ["serverless"]
