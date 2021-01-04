FROM node:14.15.3-alpine as base

LABEL "com.github.actions.name"="Vuepress deploy"
LABEL "com.github.actions.description"="A GitHub Action to build and deploy Vuepress sites to GitHub Pages"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/imaegoo/vuepress-deploy"
LABEL "homepage"="https://github.com/imaegoo/vuepress-deploy"
LABEL "maintainer"="Jenkey2011 <jenkey2011@163.com>"

RUN apk add --no-cache git jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
