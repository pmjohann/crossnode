#!/bin/sh

# COPY BIND MOUNTED BUILD FOLDER TO A CLEAN PLACE
cp -R /build /cleanbuild && cd /cleanbuild

# REMOVE node_modules FOLDER
rm -rf /cleanbuild/node_modules

# INSTALL PACKAGE DEPENDENCIES
npm install

# CONDITIONAL BUILDS
if echo $1 | grep "windows" > /dev/null; then
    nexe -i "/cleanbuild/$ENTRYPOINT" -t "windows-x64-$NODE_VERSION" -o "/build/win64.exe"
fi

if echo $1 | grep "darwin" > /dev/null; then
    nexe -i "/cleanbuild/$ENTRYPOINT" -t "mac-x64-$NODE_VERSION" -o "/build/darwin64"
fi

if echo $1 | grep "linux" > /dev/null; then
    nexe -i "/cleanbuild/$ENTRYPOINT" -t "linux-x64-$NODE_VERSION" -o "/build/linux64"
fi
