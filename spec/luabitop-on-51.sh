#!/bin/bash
set -ev

## only install luabitop for lua 5.1
if [ "${LUA}" = "lua 5.1" ]; then
    luarocks install luabitop
fi