package = "unicorndecode"
version = "scm-0"
source = {
  url = "git://github.com/FourierTransformer/unicornDecode.git",
}
description = {
  summary = "Unidecode for Lua",
  detailed = [[
    This is a port of unidecode written in Lua. It allows you to convert UTF-8 characters into similar-looking ASCII. Still under development!
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
    ["unidecode.load"] = "unidecode/load.lua",

    -- is having this many files bad?
    ["unidecode.x000"] = "unidecode/x000.lua",
    ["unidecode.x012"] = "unidecode/x012.lua",
    ["unidecode.x027"] = "unidecode/x027.lua",
    ["unidecode.x055"] = "unidecode/x055.lua",
    ["unidecode.x066"] = "unidecode/x066.lua",
    ["unidecode.x077"] = "unidecode/x077.lua",
    ["unidecode.x088"] = "unidecode/x088.lua",
    ["unidecode.x099"] = "unidecode/x099.lua",
    ["unidecode.x0b1"] = "unidecode/x0b1.lua",
    ["unidecode.x0c2"] = "unidecode/x0c2.lua",
    ["unidecode.x0d3"] = "unidecode/x0d3.lua",
    ["unidecode.x001"] = "unidecode/x001.lua",
    ["unidecode.x013"] = "unidecode/x013.lua",
    ["unidecode.x028"] = "unidecode/x028.lua",
    ["unidecode.x056"] = "unidecode/x056.lua",
    ["unidecode.x067"] = "unidecode/x067.lua",
    ["unidecode.x078"] = "unidecode/x078.lua",
    ["unidecode.x089"] = "unidecode/x089.lua",
    ["unidecode.x09a"] = "unidecode/x09a.lua",
    ["unidecode.x0b2"] = "unidecode/x0b2.lua",
    ["unidecode.x0c3"] = "unidecode/x0c3.lua",
    ["unidecode.x0d4"] = "unidecode/x0d4.lua",
    ["unidecode.x002"] = "unidecode/x002.lua",
    ["unidecode.x014"] = "unidecode/x014.lua",
    ["unidecode.x02c"] = "unidecode/x02c.lua",
    ["unidecode.x057"] = "unidecode/x057.lua",
    ["unidecode.x068"] = "unidecode/x068.lua",
    ["unidecode.x079"] = "unidecode/x079.lua",
    ["unidecode.x08a"] = "unidecode/x08a.lua",
    ["unidecode.x09b"] = "unidecode/x09b.lua",
    ["unidecode.x0b3"] = "unidecode/x0b3.lua",
    ["unidecode.x0c4"] = "unidecode/x0c4.lua",
    ["unidecode.x0d5"] = "unidecode/x0d5.lua",
    ["unidecode.x003"] = "unidecode/x003.lua",
    ["unidecode.x015"] = "unidecode/x015.lua",
    ["unidecode.x02e"] = "unidecode/x02e.lua",
    ["unidecode.x058"] = "unidecode/x058.lua",
    ["unidecode.x069"] = "unidecode/x069.lua",
    ["unidecode.x07a"] = "unidecode/x07a.lua",
    ["unidecode.x08b"] = "unidecode/x08b.lua",
    ["unidecode.x09c"] = "unidecode/x09c.lua",
    ["unidecode.x0b4"] = "unidecode/x0b4.lua",
    ["unidecode.x0c5"] = "unidecode/x0c5.lua",
    ["unidecode.x0d6"] = "unidecode/x0d6.lua",
    ["unidecode.x004"] = "unidecode/x004.lua",
    ["unidecode.x016"] = "unidecode/x016.lua",
    ["unidecode.x02f"] = "unidecode/x02f.lua",
    ["unidecode.x059"] = "unidecode/x059.lua",
    ["unidecode.x06a"] = "unidecode/x06a.lua",
    ["unidecode.x07b"] = "unidecode/x07b.lua",
    ["unidecode.x08c"] = "unidecode/x08c.lua",
    ["unidecode.x09d"] = "unidecode/x09d.lua",
    ["unidecode.x0b5"] = "unidecode/x0b5.lua",
    ["unidecode.x0c6"] = "unidecode/x0c6.lua",
    ["unidecode.x0d7"] = "unidecode/x0d7.lua",
    ["unidecode.x005"] = "unidecode/x005.lua",
    ["unidecode.x017"] = "unidecode/x017.lua",
    ["unidecode.x030"] = "unidecode/x030.lua",
    ["unidecode.x05a"] = "unidecode/x05a.lua",
    ["unidecode.x06b"] = "unidecode/x06b.lua",
    ["unidecode.x07c"] = "unidecode/x07c.lua",
    ["unidecode.x08d"] = "unidecode/x08d.lua",
    ["unidecode.x09e"] = "unidecode/x09e.lua",
    ["unidecode.x0b6"] = "unidecode/x0b6.lua",
    ["unidecode.x0c7"] = "unidecode/x0c7.lua",
    ["unidecode.x0f9"] = "unidecode/x0f9.lua",
    ["unidecode.x006"] = "unidecode/x006.lua",
    ["unidecode.x018"] = "unidecode/x018.lua",
    ["unidecode.x031"] = "unidecode/x031.lua",
    ["unidecode.x05b"] = "unidecode/x05b.lua",
    ["unidecode.x06c"] = "unidecode/x06c.lua",
    ["unidecode.x07d"] = "unidecode/x07d.lua",
    ["unidecode.x08e"] = "unidecode/x08e.lua",
    ["unidecode.x09f"] = "unidecode/x09f.lua",
    ["unidecode.x0b7"] = "unidecode/x0b7.lua",
    ["unidecode.x0c8"] = "unidecode/x0c8.lua",
    ["unidecode.x0fa"] = "unidecode/x0fa.lua",
    ["unidecode.x007"] = "unidecode/x007.lua",
    ["unidecode.x01d"] = "unidecode/x01d.lua",
    ["unidecode.x032"] = "unidecode/x032.lua",
    ["unidecode.x05c"] = "unidecode/x05c.lua",
    ["unidecode.x06d"] = "unidecode/x06d.lua",
    ["unidecode.x07e"] = "unidecode/x07e.lua",
    ["unidecode.x08f"] = "unidecode/x08f.lua",
    ["unidecode.x0a0"] = "unidecode/x0a0.lua",
    ["unidecode.x0b8"] = "unidecode/x0b8.lua",
    ["unidecode.x0c9"] = "unidecode/x0c9.lua",
    ["unidecode.x0fb"] = "unidecode/x0fb.lua",
    ["unidecode.x009"] = "unidecode/x009.lua",
    ["unidecode.x01e"] = "unidecode/x01e.lua",
    ["unidecode.x033"] = "unidecode/x033.lua",
    ["unidecode.x05d"] = "unidecode/x05d.lua",
    ["unidecode.x06e"] = "unidecode/x06e.lua",
    ["unidecode.x07f"] = "unidecode/x07f.lua",
    ["unidecode.x090"] = "unidecode/x090.lua",
    ["unidecode.x0a1"] = "unidecode/x0a1.lua",
    ["unidecode.x0b9"] = "unidecode/x0b9.lua",
    ["unidecode.x0ca"] = "unidecode/x0ca.lua",
    ["unidecode.x0fc"] = "unidecode/x0fc.lua",
    ["unidecode.x00a"] = "unidecode/x00a.lua",
    ["unidecode.x01f"] = "unidecode/x01f.lua",
    ["unidecode.x04d"] = "unidecode/x04d.lua",
    ["unidecode.x05e"] = "unidecode/x05e.lua",
    ["unidecode.x06f"] = "unidecode/x06f.lua",
    ["unidecode.x080"] = "unidecode/x080.lua",
    ["unidecode.x091"] = "unidecode/x091.lua",
    ["unidecode.x0a2"] = "unidecode/x0a2.lua",
    ["unidecode.x0ba"] = "unidecode/x0ba.lua",
    ["unidecode.x0cb"] = "unidecode/x0cb.lua",
    ["unidecode.x0fd"] = "unidecode/x0fd.lua",
    ["unidecode.x00b"] = "unidecode/x00b.lua",
    ["unidecode.x020"] = "unidecode/x020.lua",
    ["unidecode.x04e"] = "unidecode/x04e.lua",
    ["unidecode.x05f"] = "unidecode/x05f.lua",
    ["unidecode.x070"] = "unidecode/x070.lua",
    ["unidecode.x081"] = "unidecode/x081.lua",
    ["unidecode.x092"] = "unidecode/x092.lua",
    ["unidecode.x0a3"] = "unidecode/x0a3.lua",
    ["unidecode.x0bb"] = "unidecode/x0bb.lua",
    ["unidecode.x0cc"] = "unidecode/x0cc.lua",
    ["unidecode.x0fe"] = "unidecode/x0fe.lua",
    ["unidecode.x00c"] = "unidecode/x00c.lua",
    ["unidecode.x021"] = "unidecode/x021.lua",
    ["unidecode.x04f"] = "unidecode/x04f.lua",
    ["unidecode.x060"] = "unidecode/x060.lua",
    ["unidecode.x071"] = "unidecode/x071.lua",
    ["unidecode.x082"] = "unidecode/x082.lua",
    ["unidecode.x093"] = "unidecode/x093.lua",
    ["unidecode.x0a4"] = "unidecode/x0a4.lua",
    ["unidecode.x0bc"] = "unidecode/x0bc.lua",
    ["unidecode.x0cd"] = "unidecode/x0cd.lua",
    ["unidecode.x0ff"] = "unidecode/x0ff.lua",
    ["unidecode.x00d"] = "unidecode/x00d.lua",
    ["unidecode.x022"] = "unidecode/x022.lua",
    ["unidecode.x050"] = "unidecode/x050.lua",
    ["unidecode.x061"] = "unidecode/x061.lua",
    ["unidecode.x072"] = "unidecode/x072.lua",
    ["unidecode.x083"] = "unidecode/x083.lua",
    ["unidecode.x094"] = "unidecode/x094.lua",
    ["unidecode.x0ac"] = "unidecode/x0ac.lua",
    ["unidecode.x0bd"] = "unidecode/x0bd.lua",
    ["unidecode.x0ce"] = "unidecode/x0ce.lua",
    ["unidecode.x1d4"] = "unidecode/x1d4.lua",
    ["unidecode.x00e"] = "unidecode/x00e.lua",
    ["unidecode.x023"] = "unidecode/x023.lua",
    ["unidecode.x051"] = "unidecode/x051.lua",
    ["unidecode.x062"] = "unidecode/x062.lua",
    ["unidecode.x073"] = "unidecode/x073.lua",
    ["unidecode.x084"] = "unidecode/x084.lua",
    ["unidecode.x095"] = "unidecode/x095.lua",
    ["unidecode.x0ad"] = "unidecode/x0ad.lua",
    ["unidecode.x0be"] = "unidecode/x0be.lua",
    ["unidecode.x0cf"] = "unidecode/x0cf.lua",
    ["unidecode.x1d5"] = "unidecode/x1d5.lua",
    ["unidecode.x00f"] = "unidecode/x00f.lua",
    ["unidecode.x024"] = "unidecode/x024.lua",
    ["unidecode.x052"] = "unidecode/x052.lua",
    ["unidecode.x063"] = "unidecode/x063.lua",
    ["unidecode.x074"] = "unidecode/x074.lua",
    ["unidecode.x085"] = "unidecode/x085.lua",
    ["unidecode.x096"] = "unidecode/x096.lua",
    ["unidecode.x0ae"] = "unidecode/x0ae.lua",
    ["unidecode.x0bf"] = "unidecode/x0bf.lua",
    ["unidecode.x0d0"] = "unidecode/x0d0.lua",
    ["unidecode.x1d6"] = "unidecode/x1d6.lua",
    ["unidecode.x010"] = "unidecode/x010.lua",
    ["unidecode.x025"] = "unidecode/x025.lua",
    ["unidecode.x053"] = "unidecode/x053.lua",
    ["unidecode.x064"] = "unidecode/x064.lua",
    ["unidecode.x075"] = "unidecode/x075.lua",
    ["unidecode.x086"] = "unidecode/x086.lua",
    ["unidecode.x097"] = "unidecode/x097.lua",
    ["unidecode.x0af"] = "unidecode/x0af.lua",
    ["unidecode.x0c0"] = "unidecode/x0c0.lua",
    ["unidecode.x0d1"] = "unidecode/x0d1.lua",
    ["unidecode.x1d7"] = "unidecode/x1d7.lua",
    ["unidecode.x011"] = "unidecode/x011.lua",
    ["unidecode.x026"] = "unidecode/x026.lua",
    ["unidecode.x054"] = "unidecode/x054.lua",
    ["unidecode.x065"] = "unidecode/x065.lua",
    ["unidecode.x076"] = "unidecode/x076.lua",
    ["unidecode.x087"] = "unidecode/x087.lua",
    ["unidecode.x098"] = "unidecode/x098.lua",
    ["unidecode.x0b0"] = "unidecode/x0b0.lua",
    ["unidecode.x0c1"] = "unidecode/x0c1.lua",
    ["unidecode.x0d2"] = "unidecode/x0d2.lua"
  }
}