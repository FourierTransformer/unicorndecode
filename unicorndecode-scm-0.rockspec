package = "unicorndecode"
version = "scm-0"
source = {
  url = "git://github.com/FourierTransformer/unicornDecode.git",
}
description = {
  summary = "Unidecode for Lua",
  detailed = [[
    This is a port of unidecode written in Lua. It allows you to convert UTF-8 characters into similar-looking ASCII.
  ]],
  homepage = "https://github.com/FourierTransformer/unicornDecode",
  maintainer = "Shakil Thakur <shakil.thakur@gmail.com>",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    ["unicorndecode"] = "unicorndecode.lua",
    ["unidecode_data"] = "unidecode_data.lua",
  }
}