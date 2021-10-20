# Скрипт автоматической инициализации новго проекта nodejs ts
 
echo Введите название корневой директории проекта:
 
read project

mkdir $project
cd $project

git init

npm init -y

npm install -D typescript
npm install -D tslint
npm install -D ts-node-dev

tsc --init

./node_modules/.bin/tslint --init

mkdir src

touch src/app.ts

echo Инициализация проекта $project завершена.