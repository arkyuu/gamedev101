#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# substitua pelo seu repositório se necessário
git push -f git@github.com:arkyuu/gamedev101-site.git main:gh-pages

cd -