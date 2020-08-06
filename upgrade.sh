#!/bin/sh
brew upgrade
brew install --HEAD libimobiledevice
brew install ideviceinstaller ios-deploy cocoapods
brew cleanup
npm config set registry https://registry.npm.taobao.org --global
npm config set disturl https://npm.taobao.org/dist --global
yarn global add react-native-cli
npm install -g npm-check-updates
git stash
git pull
git stash pop
ncu -u -x react-native
yarn global add @tarojs/cli@latest
yarn config set registry https://registry.npm.taobao.org --global
yarn config set disturl https://npm.taobao.org/dist --global
yarn
cd ios
pod install
cd ..

