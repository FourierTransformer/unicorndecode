local data = {
'qiet',    --0x00
'qiex',    --0x01
'qie',    --0x02
'qiep',    --0x03
'quot',    --0x04
'quox',    --0x05
'quo',    --0x06
'quop',    --0x07
'qot',    --0x08
'qox',    --0x09
'qo',    --0x0a
'qop',    --0x0b
'qut',    --0x0c
'qux',    --0x0d
'qu',    --0x0e
'qup',    --0x0f
'qurx',    --0x10
'qur',    --0x11
'qyt',    --0x12
'qyx',    --0x13
'qy',    --0x14
'qyp',    --0x15
'qyrx',    --0x16
'qyr',    --0x17
'jjit',    --0x18
'jjix',    --0x19
'jji',    --0x1a
'jjip',    --0x1b
'jjiet',    --0x1c
'jjiex',    --0x1d
'jjie',    --0x1e
'jjiep',    --0x1f
'jjuox',    --0x20
'jjuo',    --0x21
'jjuop',    --0x22
'jjot',    --0x23
'jjox',    --0x24
'jjo',    --0x25
'jjop',    --0x26
'jjut',    --0x27
'jjux',    --0x28
'jju',    --0x29
'jjup',    --0x2a
'jjurx',    --0x2b
'jjur',    --0x2c
'jjyt',    --0x2d
'jjyx',    --0x2e
'jjy',    --0x2f
'jjyp',    --0x30
'njit',    --0x31
'njix',    --0x32
'nji',    --0x33
'njip',    --0x34
'njiet',    --0x35
'njiex',    --0x36
'njie',    --0x37
'njiep',    --0x38
'njuox',    --0x39
'njuo',    --0x3a
'njot',    --0x3b
'njox',    --0x3c
'njo',    --0x3d
'njop',    --0x3e
'njux',    --0x3f
'nju',    --0x40
'njup',    --0x41
'njurx',    --0x42
'njur',    --0x43
'njyt',    --0x44
'njyx',    --0x45
'njy',    --0x46
'njyp',    --0x47
'njyrx',    --0x48
'njyr',    --0x49
'nyit',    --0x4a
'nyix',    --0x4b
'nyi',    --0x4c
'nyip',    --0x4d
'nyiet',    --0x4e
'nyiex',    --0x4f
'nyie',    --0x50
'nyiep',    --0x51
'nyuox',    --0x52
'nyuo',    --0x53
'nyuop',    --0x54
'nyot',    --0x55
'nyox',    --0x56
'nyo',    --0x57
'nyop',    --0x58
'nyut',    --0x59
'nyux',    --0x5a
'nyu',    --0x5b
'nyup',    --0x5c
'xit',    --0x5d
'xix',    --0x5e
'xi',    --0x5f
'xip',    --0x60
'xiet',    --0x61
'xiex',    --0x62
'xie',    --0x63
'xiep',    --0x64
'xuox',    --0x65
'xuo',    --0x66
'xot',    --0x67
'xox',    --0x68
'xo',    --0x69
'xop',    --0x6a
'xyt',    --0x6b
'xyx',    --0x6c
'xy',    --0x6d
'xyp',    --0x6e
'xyrx',    --0x6f
'xyr',    --0x70
'yit',    --0x71
'yix',    --0x72
'yi',    --0x73
'yip',    --0x74
'yiet',    --0x75
'yiex',    --0x76
'yie',    --0x77
'yiep',    --0x78
'yuot',    --0x79
'yuox',    --0x7a
'yuo',    --0x7b
'yuop',    --0x7c
'yot',    --0x7d
'yox',    --0x7e
'yo',    --0x7f
'yop',    --0x80
'yut',    --0x81
'yux',    --0x82
'yu',    --0x83
'yup',    --0x84
'yurx',    --0x85
'yur',    --0x86
'yyt',    --0x87
'yyx',    --0x88
'yy',    --0x89
'yyp',    --0x8a
'yyrx',    --0x8b
'yyr',    --0x8c
'[?]',    --0x8d
'[?]',    --0x8e
'[?]',    --0x8f
'Qot',    --0x90
'Li',    --0x91
'Kit',    --0x92
'Nyip',    --0x93
'Cyp',    --0x94
'Ssi',    --0x95
'Ggop',    --0x96
'Gep',    --0x97
'Mi',    --0x98
'Hxit',    --0x99
'Lyr',    --0x9a
'Bbut',    --0x9b
'Mop',    --0x9c
'Yo',    --0x9d
'Put',    --0x9e
'Hxuo',    --0x9f
'Tat',    --0xa0
'Ga',    --0xa1
'[?]',    --0xa2
'[?]',    --0xa3
'Ddur',    --0xa4
'Bur',    --0xa5
'Gguo',    --0xa6
'Nyop',    --0xa7
'Tu',    --0xa8
'Op',    --0xa9
'Jjut',    --0xaa
'Zot',    --0xab
'Pyt',    --0xac
'Hmo',    --0xad
'Yit',    --0xae
'Vur',    --0xaf
'Shy',    --0xb0
'Vep',    --0xb1
'Za',    --0xb2
'Jo',    --0xb3
'[?]',    --0xb4
'Jjy',    --0xb5
'Got',    --0xb6
'Jjie',    --0xb7
'Wo',    --0xb8
'Du',    --0xb9
'Shur',    --0xba
'Lie',    --0xbb
'Cy',    --0xbc
'Cuop',    --0xbd
'Cip',    --0xbe
'Hxop',    --0xbf
'Shat',    --0xc0
'[?]',    --0xc1
'Shop',    --0xc2
'Che',    --0xc3
'Zziet',    --0xc4
'[?]',    --0xc5
'Ke',    --0xc6
'[?]',    --0xc7
'[?]',    --0xc8
'[?]',    --0xc9
'[?]',    --0xca
'[?]',    --0xcb
'[?]',    --0xcc
'[?]',    --0xcd
'[?]',    --0xce
'[?]',    --0xcf
'[?]',    --0xd0
'[?]',    --0xd1
'[?]',    --0xd2
'[?]',    --0xd3
'[?]',    --0xd4
'[?]',    --0xd5
'[?]',    --0xd6
'[?]',    --0xd7
'[?]',    --0xd8
'[?]',    --0xd9
'[?]',    --0xda
'[?]',    --0xdb
'[?]',    --0xdc
'[?]',    --0xdd
'[?]',    --0xde
'[?]',    --0xdf
'[?]',    --0xe0
'[?]',    --0xe1
'[?]',    --0xe2
'[?]',    --0xe3
'[?]',    --0xe4
'[?]',    --0xe5
'[?]',    --0xe6
'[?]',    --0xe7
'[?]',    --0xe8
'[?]',    --0xe9
'[?]',    --0xea
'[?]',    --0xeb
'[?]',    --0xec
'[?]',    --0xed
'[?]',    --0xee
'[?]',    --0xef
'[?]',    --0xf0
'[?]',    --0xf1
'[?]',    --0xf2
'[?]',    --0xf3
'[?]',    --0xf4
'[?]',    --0xf5
'[?]',    --0xf6
'[?]',    --0xf7
'[?]',    --0xf8
'[?]',    --0xf9
'[?]',    --0xfa
'[?]',    --0xfb
'[?]',    --0xfc
'[?]',    --0xfd
'[?]',    --0xfe
}
return data
