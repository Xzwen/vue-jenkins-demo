#!/bin/bash
set -u
set -e
set -o pipefail
set -x

echo "Deployment start"
git pull origin master
echo "git pull success"
npm install
echo "依赖成功"
echo "请输入打包环境"
npm run build

# cp -r dist/* C:/Users/Administrator/Desktop/invoice/jenkins-web-build
# echo "copy success"

# cd C:/Users/Administrator/Desktop/invoice/jenkins-web-build
# echo "into C:/Users/Administrator/Desktop/invoice/jenkins-web-build"

# cd ../
# rm -rf jenkins-web-build
# git clone git@github.com:Xzwen/jenkins-web-build.git
# cp -r frontend-build/dist/* jenkins-web-build
# cd jenkins-web-build

# git remote remove origin
# git remote add build git@github.com:Xzwen/jenkins-web-build.git
git add .
git commit -m '新打包文件'
# git add dist/

# git commit -m '新打包文件'
currentbranch=$(git branch --show-current)
git push -u origin $currentbranch

echo "Deployment end"