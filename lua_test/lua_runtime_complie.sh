#!/bin/bash

cd ./runtime


# check if the lua-5.4.6.tar.gz file exists and lua-5.4.6 directory exists else compie
if [ -f lua-5.4.6.tar.gz ]; then
    if [ -d lua-5.4.6 ]; then
        echo "Lua 5.4.6 source code already exists"
    else
        echo "Lua 5.4.6 source code does not exist"
        echo "Downloading Lua 5.4.6 soucre code"
        curl -L -R -O https://www.lua.org/ftp/lua-5.4.6.tar.gz
        echo "Extracting Lua 5.4.6 source code"
        tar zxf lua-5.4.6.tar.gz
        echo "Compiling Lua 5.4.6"
        cd lua-5.4.6
        make all local
    fi
else
    echo "Lua 5.4.6 source code does not exist"
    echo "Downloading Lua 5.4.6 soucre code"
    curl -L -R -O https://www.lua.org/ftp/lua-5.4.6.tar.gz
    echo "Extracting Lua 5.4.6 source code"
    tar zxf lua-5.4.6.tar.gz
    echo "Compiling Lua 5.4.6"
    cd lua-5.4.6
    make all local
fi

