# unicorndecode
[![Build Status](https://travis-ci.org/FourierTransformer/unicorndecode.svg?branch=master)](https://travis-ci.org/FourierTransformer/unicorndecode) [![Coverage Status](https://coveralls.io/repos/github/FourierTransformer/unicorndecode/badge.svg?branch=master)](https://coveralls.io/github/FourierTransformer/unicorndecode?branch=master)


unicorndecode is a port of the [Text::Unicode](http://search.cpan.org/perldoc/Text::Unidecode) perl library into lua. It attempts to take unicode characters and represent them in ASCII. It does this by removing accents or transliterating other languages into Roman characters - which can occasionally work well and sometimes not so well!

## Installing
unicorndecode is installed via luarocks:
It works out of the box with Lua 5.2/5.3, LuaJIT 2.0/2.1 and will work with Lua 5.1 if [luabitop](https://luarocks.org/modules/luarocks/luabitop) is installed.

```
luarocks install unicorndecode
```

## Unidecoding
### `decodedString, isUTF8 = unicorndecode.decode(string)`
The `decode` function takes in a string and returns the unidecoded version of that string and whether the string includes utf8 characters or not.

Example unidecode:

```lua
local unicorndecode = require('unicorndecode')
decodedString, isUTF8 = unicorndecode.decode('Brontë')
```

In this case, `decodedString` is `Bronte` and `isUTF8` is `true`.

## Quick Notes
 - The unidecode data comes from the perl [Text::Unidecode](http://search.cpan.org/perldoc/Text::Unidecode) library. As such, this library has all of the same caveats that Text::Unidecode does. It would be a good idea to read that page to understand when unicorndecode should be used.
 - The `unidecode_data.lua` table is created from the JSON file generated in [UnicodeConverter](https://github.com/FourierTransformer/UnidecodeConverter) passed through `misc_scripts/convert_json_to_lua_table.lua`.

## License
This library is released under the [MIT License](LICENSE)
