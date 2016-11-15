local unicorndecode = require('unicorndecode')

local unidecodeTest = {
    {"Brontë", "Bronte"},
    {"Herp", "Herp"},
    {"北亰", "Bei Jing"},
    {"læti", "laeti"}
}

describe("unicorndecode", function()
    for _, value in ipairs(unidecodeTest) do
        it("should unidecode " .. value[1], function()
            assert.equals(value[2], unicorndecode.decode(value[1]))
        end)
    end
end)