#!/bin/sh

npm install

nexe -i "/build/$ENTRYPOINT" -t "windows-x64-$NODE_VERSION" -o "/build/win64.exe"
nexe -i "/build/$ENTRYPOINT" -t "mac-x64-$NODE_VERSION" -o "/build/darwin64"
nexe -i "/build/$ENTRYPOINT" -t "linux-x86-$NODE_VERSION" -o "/build/linux64"
