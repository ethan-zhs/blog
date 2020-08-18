###!/usr/bin/env sh

### 确保脚本抛出遇到的错误
set -e

### 生成静态文件
npm run build

### 进入生成的文件夹
cd dist

git init
git add -A
git commit -m 'deploy'

### 部署到 https://USERNAME.github.io
git push -f git@github.com:ethan-zhs/ethan-zhs.github.io.git master