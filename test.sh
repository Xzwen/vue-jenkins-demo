#!/bin/bash
set -u
set -e
set -o pipefail
set -x

echo "Deployment start"
# git pull
# echo "git pull success"
# npm install
# echo "依赖成功"
# echo "请输入打包环境"
# npm run build

cp -r dist/* C:/Users/Administrator/Desktop/invoice/jenkins-web-build
echo "copy success"

cd C:/Users/Administrator/Desktop/invoice/jenkins-web-build
echo "into C:/Users/Administrator/Desktop/invoice/jenkins-web-build"

git add .
git commit -m '新打包文件'

git push

echo "Deployment end"