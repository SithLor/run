

# arg to to rebuild the runtime
if [ "$1" == "rebuild" ]; then
    chmod +x ./deps_check.sh
    chmod +x ./lua_runtime_complie.sh
    chmod +x ./runtime_remove.sh
    ./runtime_remove.sh
    ./deps_check.sh
    ./lua_runtime_complie.sh
fi

if [ "$1" == "setup" ]; then
    chmod +x ./deps_check.sh
    chmod +x ./lua_runtime_complie.sh
    chmod +x ./runtime_remove.sh
    ./deps_check.sh # CHECK FOR DEPENDENCIES AND INSTALL THEM
    ./lua_runtime_complie.sh # DOWNLOAD AND COMPILE LUA 5.4.6
fi
if [ "$1" == "run" ]; then
    chmod +x ./deps_check.sh
    chmod +x ./lua_runtime_complie.sh
    chmod +x ./runtime_remove.sh
    ./deps_check.sh # CHECK FOR DEPENDENCIES AND INSTALL THEM
    ./lua_runtime_complie.sh # DOWNLOAD AND COMPILE LUA 5.4.6
    LUA_BIN_PATH="./runtime/lua-5.4.6/install/bin/lua";
    LUAC_BIN_PATH="./runtime/lua-5.4.6/install/bin/luac";
    LUA_INCLUDE_PATH="./runtime/lua-5.4.6/install/include";
    LUA_LIB_PATH="./runtime/lua-5.4.6/install/lib";
    echo "Running Lua 5.4.6"
    echo ""
    echo ""
    echo ""
    # COMPILE LUA FILE
    $LUA_BIN_PATH ./code/main.lua
fi

