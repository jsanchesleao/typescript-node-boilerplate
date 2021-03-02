#!/usr/bin/env bash

git clone git@github.com:jsanchesleao/typescript-node-boilerplate.git $1
cd $1

sed -i "s/toy-project/$1/" package.json
rm -rf .git/
yarn install
yarn dev

rm cli.sh