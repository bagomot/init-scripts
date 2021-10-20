#!/bin/bash

# Run the script from the directory in which you want to create a directory with the project. 
# Something like: sh /path/to/script

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
GRAY="\e[90m"
ENDCOLOR="\e[0m"

echo -e "Enter the name of the project (e.g. ${GRAY}example123${ENDCOLOR}):"
read project_name

# check exist project path
if [ -d $project_name ]; then
    echo -e "${RED}Project ${project_name} already exists in the current directory.${ENDCOLOR}"
    exit 1
fi

mkdir ${project_name}
cd ${project_name}

echo -e "\n${YELLOW}Initializing git repository...${ENDCOLOR}"
git init

echo -e "\n${YELLOW}Initializing nodejs...${ENDCOLOR}"
npm init -y

echo -e "\n${YELLOW}Installing typescript and development packages...${ENDCOLOR}"
npm install -D typescript
npm install -D ts-node-dev
npm install -D eslint

echo -e "\n${YELLOW}Initializing typescript...${ENDCOLOR}"
tsc --init

echo -e "\n${YELLOW}Initializing eslint...${ENDCOLOR}"
./node_modules/.bin/eslint --init

echo -e "\n${YELLOW}Creating source files...${ENDCOLOR}"
mkdir src && touch src/app.ts

echo -e "\n${GREEN}COMPLETED SUCCESSFULLY!${ENDCOLOR}"