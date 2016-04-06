local info = {
    _VERSION = 'unicornDecode scm-0',
    _DESCRIPTION = 'Unidecode for Lua',
    _URL         = 'https://github.com/FourierTransformer/unicornDecode',
    _LICENSE     = [[
        The MIT License (MIT)
        Copyright (c) 2016 Shakil Thakur
        Permission is hereby granted, free of charge, to any person obtaining a copy
        of this software and associated documentation files (the "Software"), to deal
        in the Software without restriction, including without limitation the rights
        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
        copies of the Software, and to permit persons to whom the Software is
        furnished to do so, subject to the following conditions:
        The above copyright notice and this permission notice shall be included in all
        copies or substantial portions of the Software.
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
        SOFTWARE.
    ]]
}

local load = require('load')
local bit = require("bit")
local bor, blshift, brshift = bit.bor, bit.lshift, bit.rshift

-- load up the unicode magic perl tables!
local unicodeMagics = {}
for i = 1, #load do
	unicodeMagics[tonumber(load[i]:sub(2), 16)] = require('unidecode.' .. load[i])
end

-- create a fallback mechanism... (just returns '[?]')
local backupTable = setmetatable({}, {__index = function() return '[?]' end})
setmetatable(unicodeMagics, {__index = function() return backupTable end})

-- determines how many additional bytes are needed to parse the unicode char
-- NOTE: assumes the UTF-8 input is clean - which gets dangerous.
local function additionalBytes(val)
    if val >= 240 then
        return 3, 240
    elseif val >= 224 then
        return 2, 224
    elseif val >= 192 then
        return 1, 192
    else
        return 0
    end
end

local function unicornDecode(inputString)
	-- SO MANY VARS!
	local val, extraBytes, byteVal, extraByteVal
	local inputLength = #inputString
	print("inputLength", inputLength)
	local i = 1

	-- PERF!
	local sbyte, schar = string.byte, string.char

	-- LUA's STRING BUILDER!
	local output = {}
	local count = 1

	-- iterate over the entire input string
	while i <= inputLength do

		-- get the byte value of the current char
	    val = sbyte(inputString, i)

	    -- figure out how manu additional bytes are needed
	    extraBytes, byteVal = additionalBytes(val)
	    -- print("extraBytes", extraBytes, val)

	    -- if there are additional bytes this is UTF-8!
	    if extraBytes > 0 then
	    	-- remove the preceding 1's in binary
	        val = val - byteVal
	        -- print("val", val)

	        -- add each additional byte to get the unicode value
	        --[[ ex: for the two byte unicode value (in binary):
				110xxxxx 10yyyyyy
				has the unicdoe value: xxxxxyyyyyy
	        ]]
	        for j = 1, extraBytes do
	            extraByteVal = sbyte(inputString, i+j)
	            -- print("extraByteVal", extraByteVal)
	            extraByteVal = extraByteVal - 128 --remove the header byte
	            val = bor(blshift(val, 6), extraByteVal) --combines it
	        end

	        -- add the equivalent ascii char to the output
	        output[count] = unicodeMagics[brshift(val, 8)][(val % 256) + 1]
	        count = count + 1
	        i = i + 1 + extraBytes

	    -- otherwise it's just ASCII
	    else
	        output[count] = schar(val)
	        count = count + 1
	        i = i + 1
	    end
	end

	-- concat the string together!
	return table.concat(output), inputLength ~= (count-1)
end

return unicornDecode
