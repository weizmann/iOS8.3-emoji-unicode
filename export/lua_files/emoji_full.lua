require smartinput 
local P = {}
P._G = _G

if _REQUIREDNAME == nil then
	emoji_full = P
else
	_G[_REQUIREDNAME] = P
end
setfenv(1, P)
	
local si = _G.smartinput
	
category_recent = {
		
}

category_nature = {
		"Grinning Face", --1
		"u1f601", --2
		"u1f602 1f639", --3
		"u1f603", --4
		"u1f604", --5
		"u1f605", --6
		"u1f606", --7
		"u1f607", --8
		"u1f608", --9
		"u1f364 1f47f", --10
		"u1f609", --11
		"u1f60a", --12
		"White Smiling Face", --13
		"u1f60b", --14
		"u1f60c 1f625", --15
		"u1f60d", --16
		"u1f60e", --17
		"u1f60f", --18
		"u1f610", --19
		"Expressionless Face", --20
		"u1f612", --21
		"u1f613", --22
		"u1f614", --23
		"Confused Face", --24
		"u1f616", --25
		"Kissing Face", --26
		"u1f618", --27
		"Kissing Face With Smiling Eyes", --28
		"u1f61a", --29
		"Face With Stuck-Out Tongue", --30
		"u1f61c", --31
		"u1f61d", --32
		"u1f61e", --33
		"Worried Face", --34
		"u1f620", --35
		"u1f621 1f64e", --36
		"u1f622 1f62d", --37
		"u1f623", --38
		"u1f624", --39
		"u1f625", --40
		"Frowning Face With Open Mouth", --41
		"Anguished Face", --42
		"u1f628", --43
		"u1f629", --44
		"u1f62a", --45
		"u1f62b", --46
		"Grimacing Face", --47
		"u1f62d", --48
		"u1f603 1f63a", --49
		"Hushed Face", --50
		"u1f605 1f630", --51
		"u1f631", --52
		"u1f632", --53
		"u1f633", --54
		"Sleeping Face", --55
		"u1f635", --56
		"u1f636", --57
		"u1f637", --58
		"u1f638", --59
		"u1f639", --60
		"u1f63a", --61
		"u1f63b", --62
		"u1f63c", --63
		"u1f63d", --64
		"u1f63e", --65
		"u1f63f", --66
		"u1f640", --67
		"u1f463", --68
		"u1f464", --69
		"u1f465", --70
		"u1f466", --71
		"u1f467", --72
		"u1f1ee-1f1f2 1f1f4-1f1f2 1f468 1f469 1f474 1f475 1f482", --73
		"u1f469 1f475", --74
		"Family Man Woman Boy", --75
		"Family Man Woman Girl", --76
		"u1f46a", --77
		"Family Man Woman Boy Boy", --78
		"Family Man Woman Girl Girl", --79
		"Family Woman Woman Boy", --80
		"Family Woman Woman Girl", --81
		"Family Woman Woman Girl Boy", --82
		"Family Woman Woman Boy Boy", --83
		"Family Woman Woman Girl Girl", --84
		"Family Man Man Boy", --85
		"Family Man Man Girl", --86
		"Family Man Man Girl Boy", --87
		"Family Man Man Boy Boy", --88
		"Family Man Man Girl Girl", --89
		"u1f46b", --90
		"u1f46c", --91
		"u1f46d", --92
		"u1f46e", --93
		"u1f46f", --94
		"u1f470", --95
		"u1f471", --96
		"u1f472", --97
		"u1f473", --98
		"u1f474", --99
		"u1f475", --100
		"u1f476", --101
		"u1f477", --102
		"u1f478", --103
		"u1f482", --104
		"u1f47c", --105
		"u1f385", --106
		"u1f47b", --107
		"u1f479", --108
		"u1f47a", --109
		"u1f4a9", --110
		"u1f480", --111
		"u1f47d", --112
		"u1f47e", --113
		"u1f647", --114
		"u1f481", --115
		"u1f645", --116
		"u1f646", --117
		"u1f64b", --118
		"u1f64e", --119
		"u1f64d", --120
		"u1f486", --121
		"u1f487", --122
		"u1f491", --123
		"Couple With Heart Woman Woman", --124
		"Couple With Heart Man Man", --125
		"u1f48f 1f618", --126
		"Kiss Woman Woman", --127
		"Kiss Man Man", --128
		"u1f64c", --129
		"u1f44f", --130
		"u1f350 1f442 1f631", --131
		"u1f440 1f601 1f604 1f606 1f60a 1f60d 1f61a 1f61d 1f638 1f63b 1f63d", --132
		"u1f43d 1f443 1f685", --133
		"u1f444 1f603 1f636 1f63a", --134
		"u1f48b", --135
		"u1f445", --136
		"u1f485", --137
		"u1f44b", --138
		"u1f44d", --139
		"u1f44e", --140
		"White Up Pointing Index", --141
		"u1f446", --142
		"u1f447", --143
		"u1f448", --144
		"u1f449", --145
		"u1f44c", --146
		"Victory Hand", --147
		"u1f44a", --148
		"u270a", --149
		"u270b", --150
		"u1f4aa", --151
		"u1f450", --152
		"u1f64f", --153
}

category_food_drink = {
		"u1f331", --1
		"u1f332", --2
		"u1f333", --3
		"u1f334", --4
		"u1f335", --5
		"u1f337", --6
		"u1f338", --7
		"u1f339", --8
		"u1f33a", --9
		"u1f33b", --10
		"u1f338 1f33c", --11
		"u1f490", --12
		"u1f33e", --13
		"u1f33f", --14
		"u1f340", --15
		"u1f341", --16
		"u1f342", --17
		"u1f343", --18
		"u1f344", --19
		"u1f330", --20
		"u1f1f2-1f1f8 1f400", --21
		"u1f401", --22
		"u1f42d", --23
		"u1f439", --24
		"u1f371 1f402 1f4ee", --25
		"u1f403", --26
		"u1f404", --27
		"u1f42e", --28
		"u1f405", --29
		"u1f406", --30
		"u1f42f", --31
		"u1f407", --32
		"u1f430", --33
		"u1f408", --34
		"u1f431 1f63e 1f63f 1f640", --35
		"u1f3a0 1f40e", --36
		"u1f434", --37
		"u1f40f 1f68a", --38
		"u1f411", --39
		"u1f410", --40
		"u1f413", --41
		"u1f414", --42
		"u1f424 1f425", --43
		"u1f423", --44
		"u1f425", --45
		"u1f426", --46
		"u1f427", --47
		"u1f418", --48
		"u1f42a", --49
		"u1f42b", --50
		"u1f417", --51
		"u1f416", --52
		"u1f437", --53
		"u1f43d", --54
		"u1f415", --55
		"u1f429", --56
		"u1f436", --57
		"u1f43a", --58
		"u1f43b", --59
		"u1f428", --60
		"u1f43c", --61
		"u1f435", --62
		"u1f648", --63
		"u1f649", --64
		"u1f64a", --65
		"u1f412 1f648 1f649 1f64a", --66
		"u1f409", --67
		"u1f432", --68
		"u1f40a", --69
		"u1f40d", --70
		"u1f422", --71
		"u1f438", --72
		"u1f40b 1f433", --73
		"u1f433", --74
		"u1f42c", --75
		"u1f419", --76
		"u1f3a3 1f41f 1f420 1f421", --77
		"u1f420", --78
		"u1f421", --79
		"u1f41a", --80
		"u1f40c", --81
		"u1f41b", --82
		"u1f418 1f41c", --83
		"u1f41d", --84
		"u1f41e", --85
		"u1f43e", --86
		"High Voltage Sign", --87
		"u1f525", --88
		"u1f319", --89
		"Black Sun With Rays", --90
		"Sun Behind Cloud", --91
		"Cloud", --92
		"u1f4a7", --93
		"u1f4a6", --94
		"Umbrella With Rain Drops", --95
		"u1f4a8", --96
		"Snowflake", --97
		"u1f31f", --98
		"White Medium Star", --99
		"u1f320", --100
		"u1f304", --101
		"u1f305", --102
		"u1f308", --103
		"u1f30a", --104
		"u1f30b", --105
		"u1f30c", --106
		"u1f5fb", --107
		"u1f5fe", --108
		"u1f310", --109
		"u1f30d", --110
		"u1f30e", --111
		"u1f30f", --112
		"u1f311", --113
		"u1f312", --114
		"u1f313", --115
		"u1f314", --116
		"u1f315", --117
		"u1f316", --118
		"u1f317", --119
		"u1f318", --120
		"u1f31a", --121
		"u1f31d", --122
		"u1f31b", --123
		"u1f31c", --124
		"u1f31e", --125
}

category_celebration = {
		"u1f345", --1
		"u1f346", --2
		"u1f33d", --3
		"u1f360", --4
		"u1f347", --5
		"u1f348 1f349", --6
		"u1f349", --7
		"u1f34a", --8
		"u1f34b", --9
		"u1f34c", --10
		"u1f34d", --11
		"u1f34e", --12
		"u1f34f", --13
		"u1f350", --14
		"u1f351", --15
		"u1f352", --16
		"u1f353", --17
		"u1f354", --18
		"u1f355", --19
		"u1f356", --20
		"u1f357", --21
		"u1f358", --22
		"u1f359", --23
		"u1f35a", --24
		"u1f35b", --25
		"u1f35c", --26
		"u1f35d", --27
		"u1f35e", --28
		"u1f35f", --29
		"u1f361", --30
		"u1f362", --31
		"u1f363", --32
		"u1f364", --33
		"u1f365", --34
		"u1f366", --35
		"u1f367", --36
		"u1f366 1f368", --37
		"u1f369", --38
		"u1f36a", --39
		"u1f36b", --40
		"u1f36c", --41
		"u1f36d", --42
		"u1f36e", --43
		"u1f36f", --44
		"u1f370", --45
		"u1f371", --46
		"u1f372", --47
		"u1f373", --48
		"u1f374", --49
		"u1f375", --50
		"Hot Beverage", --51
		"u1f376", --52
		"u1f377", --53
		"u1f378", --54
		"u1f379", --55
		"u1f37a", --56
		"u1f37b", --57
		"u1f37c", --58
}

category_activity = {
		"u1f380 1f49d", --1
		"u1f381", --2
		"u1f382", --3
		"u1f383", --4
		"u1f384", --5
		"u1f38b", --6
		"u1f38d", --7
		"u1f391", --8
		"u1f386", --9
		"u1f387", --10
		"u1f389", --11
		"u1f38a", --12
		"u1f388 1f4ac 1f4ad", --13
		"u1f4ab", --14
		"u2728", --15
		"u1f4a5", --16
		"u1f393", --17
		"u1f451", --18
		"u1f38e", --19
		"u1f38f", --20
		"u1f390", --21
		"u1f38c", --22
		"u1f3ee", --23
		"u1f48d", --24
		"Heavy Black Heart", --25
		"u1f494", --26
		"u1f48c", --27
		"u1f495", --28
		"u1f49e", --29
		"u1f493", --30
		"u1f497", --31
		"u1f496", --32
		"u1f498", --33
		"u1f49d", --34
		"u1f49f", --35
		"u1f49c", --36
		"u1f49b", --37
		"u1f49a", --38
		"u1f499", --39
}

category_travel_places = {
		"u1f3c3", --1
		"u1f6b6", --2
		"u1f483", --3
		"u1f6a3", --4
		"u1f3ca", --5
		"u1f3c4", --6
		"u1f6c0", --7
		"u1f3c2", --8
		"u1f3bf", --9
		"Snowman Without Snow", --10
		"u1f6b4 1f6b5", --11
		"u1f6b5", --12
		"u1f3c7", --13
		"u1f3aa", --14
		"u1f3a3", --15
		"Soccer Ball", --16
		"u1f3c0", --17
		"u1f3c8", --18
		"Baseball", --19
		"u1f3be", --20
		"u1f3c9", --21
		"Flag In Hole", --22
		"u1f3c6", --23
		"u1f3bd", --24
		"u1f3c1", --25
		"u1f3b9", --26
		"u1f3b8", --27
		"u1f3bb", --28
		"u1f3b7", --29
		"u1f3ba", --30
		"u1f3b5", --31
		"u1f3b6", --32
		"u1f3bc", --33
		"u1f3a7", --34
		"u1f3a4", --35
		"u1f3ad", --36
		"u1f3ab", --37
		"u1f3a9", --38
		"u1f3aa", --39
		"u1f3ac", --40
		"u1f3a8", --41
		"u1f3af", --42
		"u1f3b1", --43
		"u1f3b3", --44
		"u1f3b0", --45
		"u1f3b2", --46
		"u1f3ae", --47
		"u1f3b4", --48
		"u1f0cf", --49
		"Mahjong Tile Red Dragon", --50
		"u1f3a0", --51
		"u1f3a1", --52
		"u1f3a2", --53
}

category_objects_symbols = {
		"u1f683", --1
		"u1f69e", --2
		"u1f682", --3
		"u1f68b", --4
		"u1f69d", --5
		"u1f684", --6
		"u1f685", --7
		"u1f684 1f686", --8
		"u1f687", --9
		"u1f688", --10
		"u1f689", --11
		"u1f68a", --12
		"u1f68c 1f68d 1f68e 1f690", --13
		"u1f68d", --14
		"u1f68e", --15
		"u1f690", --16
		"u1f691", --17
		"u1f692", --18
		"u1f693 1f694", --19
		"u1f694", --20
		"u1f6a8", --21
		"u1f695 1f696", --22
		"u1f696", --23
		"u1f697 1f698", --24
		"u1f698", --25
		"u1f699", --26
		"u1f69a", --27
		"u1f69b", --28
		"u1f69c", --29
		"u1f6b2", --30
		"u1f68f", --31
		"Fuel Pump", --32
		"u1f6a7", --33
		"u1f6a6", --34
		"u1f6a5", --35
		"u1f680", --36
		"u1f681", --37
		"Airplane", --38
		"u1f4ba", --39
		"Anchor", --40
		"u1f6a2", --41
		"u1f6a4", --42
		"Sailboat", --43
		"u1f6a1", --44
		"u1f6a0", --45
		"u1f69f", --46
		"u1f6c2", --47
		"u1f6c3", --48
		"u1f6c4", --49
		"u1f6c5", --50
		"u1f4b4", --51
		"u1f4b6", --52
		"u1f4b7", --53
		"u1f4b5", --54
		"u1f5fd", --55
		"u1f5ff", --56
		"u1f301", --57
		"u1f5fc", --58
		"Fountain", --59
		"u1f3f0", --60
		"u1f3ef", --61
		"u1f307", --62
		"u1f306", --63
		"u1f303", --64
		"u1f309", --65
		"u1f3e0", --66
		"u1f3e1", --67
		"u1f3e2", --68
		"u1f3ec", --69
		"u1f3ed", --70
		"u1f3e3", --71
		"u1f3e4", --72
		"u1f3e5", --73
		"u1f3e6", --74
		"u1f3e8 1f3e9", --75
		"u1f3e9", --76
		"u1f492", --77
		"Church", --78
		"u1f3ea", --79
		"u1f3eb", --80
		"u1f1e6-1f1fa", --81
		"u1f1e6-1f1f9", --82
		"u1f1e7-1f1ea", --83
		"u1f1e7-1f1f7", --84
		"u1f1e8-1f1e6", --85
		"u1f1e8-1f1f1", --86
		"u1f1e8-1f1f3", --87
		"u1f1e8-1f1f4", --88
		"u1f1e9-1f1f0", --89
		"u1f1eb-1f1ee", --90
		"u1f1eb-1f1f7", --91
		"u1f1e9-1f1ea", --92
		"u1f1ed-1f1f0", --93
		"u1f1ee-1f1f3", --94
		"u1f1ee-1f1e9", --95
		"u1f1ee-1f1ea", --96
		"u1f1ee-1f1f1", --97
		"u1f1ee-1f1f9", --98
		"u1f1ef-1f1f5", --99
		"u1f1f0-1f1f7", --100
		"u1f1f2-1f1f4", --101
		"u1f1f2-1f1fe", --102
		"u1f1f2-1f1fd", --103
		"u1f1f3-1f1f1", --104
		"u1f1f3-1f1ff", --105
		"u1f1f3-1f1f4", --106
		"u1f1f5-1f1ed", --107
		"u1f1f5-1f1f1", --108
		"u1f1f5-1f1f9", --109
		"u1f1f5-1f1f7", --110
		"u1f1f7-1f1fa", --111
		"u1f1f8-1f1e6", --112
		"u1f1f8-1f1ec", --113
		"u1f1ff-1f1e6", --114
		"u1f1ea-1f1f8", --115
		"u1f1f8-1f1ea", --116
		"u1f1e8-1f1ed", --117
		"u1f1f9-1f1f7", --118
		"Flag For Great Britain", --119
		"Flag For USA", --120
		"u1f1e6-1f1ea", --121
		"u1f1fb-1f1f3", --122
}

category_ = {
		"u23f1", --1
		"u1f4f1", --2
		"u1f4f2", --3
		"u1f4bb", --4
		"u23f0", --5
		"u23f3", --6
		"Hourglass", --7
		"u1f3a5 1f4f7 1f4f9", --8
		"u1f4f9", --9
		"u1f3a5", --10
		"u1f4fa", --11
		"u1f4fb", --12
		"u1f4df", --13
		"u1f4de", --14
		"Black Telephone", --15
		"u1f4e0", --16
		"u1f4bd", --17
		"u1f4be", --18
		"u1f4bf", --19
		"u1f4c0", --20
		"u1f4fc", --21
		"u1f50b", --22
		"u1f50c", --23
		"u1f4a1", --24
		"u1f526", --25
		"u1f4e1", --26
		"u1f4b3", --27
		"u1f4b8", --28
		"u1f4b0", --29
		"u1f48e", --30
		"u1f302", --31
		"u1f45d", --32
		"u1f45b", --33
		"u1f45c", --34
		"u1f4bc", --35
		"u1f392", --36
		"u1f484", --37
		"u1f453", --38
		"u1f452", --39
		"u1f461", --40
		"u1f460", --41
		"u1f462", --42
		"u1f45e", --43
		"u1f45f", --44
		"u1f459", --45
		"u1f457", --46
		"u1f458", --47
		"u1f45a", --48
		"u1f455", --49
		"u1f454", --50
		"u1f456", --51
		"u1f6aa", --52
		"u1f6bf", --53
		"u1f6c1", --54
		"u1f6bd", --55
		"u1f488", --56
		"u1f489", --57
		"u1f48a", --58
		"u1f52c", --59
		"u1f52d", --60
		"u1f52e", --61
		"u1f527", --62
		"u1f52a", --63
		"u1f529", --64
		"u1f528", --65
		"u1f4a3", --66
		"u1f6ac 1f6ad", --67
		"u1f52b", --68
		"u1f516", --69
		"u1f4f0", --70
		"u1f1f9-1f1f7 1f412 1f510 1f511 1f648 1f649 1f64a", --71
		"u1f4e8", --72
		"u1f4e9", --73
		"u1f4e8", --74
		"u1f4e7", --75
		"u1f4e5", --76
		"u1f4e4", --77
		"u1f4e6", --78
		"u1f4ef", --79
		"u1f4ee", --80
		"u1f4ea", --81
		"u1f4eb", --82
		"u1f4ec", --83
		"u1f4ed", --84
		"u1f4c4", --85
		"u1f4c3", --86
		"u1f4d1", --87
		"u1f4c8", --88
		"u1f4c9", --89
		"u1f4ca", --90
		"u1f4c5 1f4c6", --91
		"u1f4c6", --92
		"u1f505", --93
		"u1f506", --94
		"u1f4dc", --95
		"u1f4cb", --96
		"u1f4d6", --97
		"u1f4d3", --98
		"u1f4d4", --99
		"u1f4d2", --100
		"u1f4d5", --101
		"u1f4d7", --102
		"u1f4d8", --103
		"u1f4d9", --104
		"u1f4da", --105
		"u1f4c7", --106
		"u1f517", --107
		"u1f4ce", --108
		"u1f4cc 1f4cd", --109
		"Black Scissors", --110
		"u1f4d0", --111
		"u1f4cd", --112
		"u1f4cf", --113
		"u1f6a9", --114
		"u1f4c1 1f4c2", --115
		"u1f4c2", --116
		"Black Nib", --117
		"Pencil", --118
		"u1f4dd", --119
		"u1f50f", --120
		"u1f510", --121
		"u1f512 1f513 1f550 1f551 1f552 1f553 1f554 1f555 1f556 1f557 1f558 1f559 1f55a 1f55b 23f0 23f2", --122
		"u1f513", --123
		"u1f4e3", --124
		"u1f4e2", --125
		"u1f4e2 1f508", --126
		"u1f509", --127
		"u1f50a", --128
		"u1f507", --129
		"u1f4a4", --130
		"u1f514", --131
		"u1f515", --132
		"u1f4ad", --133
		"u1f4ac", --134
		"u1f6b8", --135
		"u1f50d", --136
		"u1f50e", --137
		"u1f6ab", --138
		"No Entry", --139
		"u1f4db", --140
		"u1f6b7", --141
		"u1f6af", --142
		"u1f6b3", --143
		"u1f6b1", --144
		"u1f4f5", --145
		"u1f51e", --146
		"u1f251", --147
		"u1f250", --148
		"u1f4ae", --149
		"Circled Ideograph Secret", --150
		"Circled Ideograph Congratulation", --151
		"u1f234", --152
		"u1f235", --153
		"u1f232", --154
		"u1f236", --155
		"Squared CJK Unified Ideograph-7121", --156
		"u1f238", --157
		"u1f23a", --158
		"u1f237", --159
		"u1f239", --160
		"u1f233", --161
		"u1f202", --162
		"u1f201", --163
		"Squared CJK Unified Ideograph-6307", --164
		"u1f4b9", --165
		"Sparkle", --166
		"Eight Spoked Asterisk", --167
		"u274e", --168
		"u2705", --169
		"Eight Pointed Black Star", --170
		"u1f4f3", --171
		"u1f4f4", --172
		"u1f19a", --173
		"u1f170", --174
		"u1f171", --175
		"u1f18e", --176
		"u1f191", --177
		"u1f17e", --178
		"u1f198", --179
		"u1f194", --180
		"Negative Squared Latin Capital Letter P", --181
		"u1f6be", --182
		"u1f192", --183
		"u1f193", --184
		"u1f195", --185
		"u1f196", --186
		"u1f197", --187
		"u1f199", --188
		"u1f3e7", --189
		"Aries", --190
		"Taurus", --191
		"Gemini", --192
		"Cancer", --193
		"Leo", --194
		"Virgo", --195
		"Libra", --196
		"Scorpius", --197
		"Sagittarius", --198
		"Capricorn", --199
		"Aquarius", --200
		"Pisces", --201
		"u1f6bb", --202
		"u1f6b9 1f6ba", --203
		"u1f6ba", --204
		"u1f6bc", --205
		"Wheelchair Symbol", --206
		"u1f6b0 1f6b1", --207
		"u1f6ad", --208
		"u1f6ae", --209
		"Black Right-Pointing Triangle", --210
		"Black Left-Pointing Triangle", --211
		"u1f53c", --212
		"u1f53d", --213
		"u23e9", --214
		"u23ea", --215
		"u23eb", --216
		"u23ec", --217
		"Black Rightwards Arrow", --218
		"Leftwards Black Arrow", --219
		"Upwards Black Arrow", --220
		"Downwards Black Arrow", --221
		"North East Arrow", --222
		"South East Arrow", --223
		"South West Arrow", --224
		"North West Arrow", --225
		"Up Down Arrow", --226
		"Left Right Arrow", --227
		"u1f504", --228
		"Rightwards Arrow With Hook", --229
		"Leftwards Arrow With Hook", --230
		"Arrow Pointing Rightwards Then Curving Upwards", --231
		"Arrow Pointing Rightwards Then Curving Downwards", --232
		"u1f500", --233
		"u1f501", --234
		"u1f502", --235
		"Hash Key", --236
		"Keycap0", --237
		"Keycap1", --238
		"Keycap2", --239
		"Keycap3", --240
		"Keycap4", --241
		"Keycap5", --242
		"Keycap6", --243
		"Keycap7", --244
		"Keycap8", --245
		"Keycap9", --246
		"u1f51f", --247
		"u1f522", --248
		"u1f524", --249
		"u1f521", --250
		"u1f520", --251
		"Information Source", --252
		"u1f4f6", --253
		"u1f3a6", --254
		"u1f523", --255
		"u2795", --256
		"u2796", --257
		"Wavy Dash", --258
		"u2797", --259
		"Heavy Multiplication X", --260
		"u2705", --261
		"u1f503 1f504", --262
		"Trade Mark Sign", --263
		"Copyright Sign", --264
		"Registered Sign", --265
		"u1f4b1", --266
		"u1f4b2", --267
		"u27b0 27bf", --268
		"u27bf", --269
		"Part Alternation Mark", --270
		"Heavy Exclamation Mark Symbol", --271
		"u2753", --272
		"u2755", --273
		"u2754", --274
		"Double Exclamation Mark", --275
		"Exclamation Question Mark", --276
		"u274c 274e", --277
		"Heavy Large Circle", --278
		"u1f4af", --279
		"u1f51a", --280
		"u1f519", --281
		"u1f51b", --282
		"u1f51d", --283
		"u1f51c", --284
		"u1f300", --285
		"Circled Latin Capital Letter M", --286
		"u26ce", --287
		"u1f52f", --288
		"u1f530", --289
		"u1f531", --290
		"Warning Sign", --291
		"Hot Springs", --292
		"Black Universal Recycling Symbol", --293
		"u1f4a2", --294
		"u1f4a0", --295
		"Black Spade Suit", --296
		"Black Heart Suit", --297
		"Black Club Suit", --298
		"Black Diamond Suit", --299
		"Ballot Box With Check", --300
		"Medium White Circle", --301
		"Medium Black Circle", --302
		"u1f518", --303
		"u1f534", --304
		"u1f535", --305
		"u1f53a", --306
		"u1f53b", --307
		"u1f538", --308
		"u1f539", --309
		"u1f536", --310
		"u1f537", --311
		"Black Small Square", --312
		"White Small Square", --313
		"Black Large Square", --314
		"White Large Square", --315
		"Black Medium Square", --316
		"White Medium Square", --317
		"Black Medium Small Square", --318
		"White Medium Small Square", --319
		"u1f532", --320
		"u1f533", --321
		"u1f550", --322
		"u1f55c", --323
		"u1f551", --324
		"u1f55d", --325
		"u1f552", --326
		"u1f55e", --327
		"u1f553", --328
		"u1f55f", --329
		"u1f554", --330
		"u1f560", --331
		"u1f555", --332
		"u1f561", --333
		"u1f556", --334
		"u1f562", --335
		"u1f557", --336
		"u1f563", --337
		"u1f558", --338
		"u1f564", --339
		"u1f559", --340
		"u1f565", --341
		"u1f55a", --342
		"u1f566", --343
		"u1f55b", --344
		"u1f567", --345
}

return P
