#!/bin/lua

-- fire up cjson
local cjson = require 'cjson'

-- load up the transformation table
local file = assert(io.open('transform.json', 'r'))
transformationJSON = file:read("*a")
file:close()

-- load the json into a lua table
local luaDictionary = cjson.decode(transformationJSON)
local luaTransforms = {}

-- a function to escape strings going into lua tables.
local function escape(field)
    field = tostring(field)

    if field:find([[\]]) then
        field = field:gsub([[\]], [[\\]])
    end

    if field:find('"') then
        field = field:gsub('"', '\\"')
    end

    if field:find('\n') then
        field = field:gsub('\n', '\\n')
    end

    if field:find('\r') then
        field = field:gsub('\r', '\\r')
    end

    return field
end

-- transform the table real quick...
for k, v in pairs(luaDictionary) do
    -- escape all the values required
    for i, value in ipairs(v) do
        v[i] = escape(value)
    end

    -- expand the rows if they are too short
    if #v < 256 then
        for i = #v, 256 do
            v[i] = '[?]'
        end
    end

    luaTransforms[tonumber(k)] = v
end

-- just a quick string builder to ensure i don't mess up the counts!
-- NOTE: be careful using this due to the lack of null checking.
function stringBuilder()
    local output = {}
    local count = 0
    return function(s)
        count = count + 1
        output[count] = s
        return output
    end
end

-- start of the file
local output = stringBuilder()
output("local data = {\n")

-- iterate over the table
-- for k, v in ipairs(luaTransforms) do
for j = 1, 255 do
    -- start each row
    -- output('[' .. tonumber(j) .. '] = {"')
    output('    {"')

    -- concat all the values together
    output(table.concat(luaTransforms[j], '", "'))

    -- add the end of line
    output('"},\n')

end

-- just close out the main table
output("}\n")

-- that 0th table entry tho
output('\ndata[0] = {"')
output(table.concat(luaTransforms[0], '", "'))
output('"}\n')
output('\nreturn data;\n')

-- write out the file
outFile = table.concat(output())
file = assert(io.open('unidecode_data.lua', 'w'))
file:write(outFile)
file:close()
