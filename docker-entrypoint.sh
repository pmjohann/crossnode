#!/bin/sh

# COPY BIND MOUNTED BUILD FOLDER TO A CLEAN PLACE
cp -R /build /cleanbuild && cd /cleanbuild

# REMOVE node_modules FOLDER
rm -rf /cleanbuild/node_modules

# INSTALL PACKAGE DEPENDENCIES
npm install

nexe -i "/cleanbuild/$ENTRYPOINT" -t "windows-x64-$NODE_VERSION" -o "/build/win64.exe"
nexe -i "/cleanbuild/$ENTRYPOINT" -t "mac-x64-$NODE_VERSION" -o "/build/darwin64"
nexe -i "/cleanbuild/$ENTRYPOINT" -t "linux-x64-$NODE_VERSION" -o "/build/linux64"
