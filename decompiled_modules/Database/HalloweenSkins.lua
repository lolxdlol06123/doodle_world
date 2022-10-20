-- Decompiled with the Synapse X Luau decompiler.

local v1 = {};
local v2 = {};
v1.Encounterable = {
	Moss = {
		Skin = 10, 
		Rarity = 2
	}, 
	Mold = {
		Skin = 9, 
		Rarity = 2
	}, 
	Partybug = {
		Skin = 9, 
		Rarity = 2
	}, 
	Geckgoo = {
		Skin = 7, 
		Rarity = 3
	}, 
	Slibble = {
		Skin = 5, 
		Rarity = 3
	}, 
	Squed = {
		Skin = 8, 
		Rarity = 3
	}, 
	Shmellow = {
		Skin = 4, 
		Rarity = 3
	}, 
	Plipo = {
		Skin = 9, 
		Rarity = 3
	}, 
	Wiglet = {
		Skin = 8, 
		Rarity = 3
	}, 
	Riffrat = {
		Skin = 8, 
		Rarity = 3
	}, 
	Grimsugar = {
		Skin = 8, 
		Rarity = 2
	}, 
	Glubbie = {
		Skin = 7, 
		Rarity = 1
	}, 
	Snobat = {
		Skin = 7, 
		Rarity = 3
	}, 
	Klydaskunk = {
		Skin = 8, 
		Rarity = 2
	}, 
	Borbo = {
		Skin = 8, 
		Rarity = 3
	}, 
	Swoptar = {
		Skin = 9, 
		Rarity = 2
	}, 
	Yagoat = {
		Skin = 7, 
		Rarity = 3
	}, 
	Archuma = {
		Skin = 7, 
		Rarity = 2
	}, 
	Rosebug = {
		Skin = 6, 
		Rarity = 3
	}, 
	Pandishi = {
		Skin = 7, 
		Rarity = 1
	}, 
	Squonk = {
		Skin = 8, 
		Rarity = 1
	}, 
	Tortles = {
		Skin = 9, 
		Rarity = 2
	}, 
	Junipyro = {
		Skin = 5, 
		Rarity = 1
	}, 
	Pupskey = {
		Skin = 6, 
		Rarity = 1
	}, 
	Glummish = {
		Skin = 8, 
		Rarity = 2
	}, 
	Bunsweet = {
		Skin = 10, 
		Rarity = 2
	}, 
	Hattrix = {
		Skin = 1, 
		Rarity = 1
	}
};
v1.Purchasable = {
	Chronos = {
		Name = "Chronos", 
		Showcase = "Chronos", 
		Skin = 6, 
		Cost = 2000
	}, 
	Kibara = {
		Name = "Kibara", 
		Showcase = "Shyce", 
		Skin = 6, 
		Cost = 450
	}, 
	Gomutt = {
		Name = "Gomutt", 
		Showcase = "Muttish", 
		Skin = 10, 
		Cost = 120
	}, 
	Spirasol = {
		Name = "Spirasol", 
		Showcase = "Kowosu", 
		Skin = 8, 
		Cost = 500
	}, 
	Theaterror = {
		Name = "Theaterror", 
		Showcase = "Dramask", 
		Skin = 7, 
		Cost = 110
	}, 
	Springling = {
		Name = "Springling", 
		Showcase = "Springling", 
		Skin = 8, 
		Cost = 55
	}, 
	Jelluminous = {
		Name = "Jelluminous", 
		Showcase = "Lilbulb", 
		Skin = 8, 
		Cost = 60
	}, 
	Cacmeow = {
		Name = "Cacmeow", 
		Skin = 8, 
		Showcase = "Cacmeow", 
		Cost = 95
	}, 
	Malotrick = {
		Name = "Malotrick", 
		Skin = 6, 
		Showcase = "Malotrick", 
		Cost = 220
	}, 
	Xenoxious = {
		Name = "Xenoxious", 
		Skin = 10, 
		Showcase = "Xenoxious", 
		Cost = 800
	}, 
	Spunny = {
		Name = "Spunny", 
		Skin = 8, 
		Cost = 210, 
		Showcase = "Spunny"
	}, 
	Drakothread = {
		Name = "Drakothread", 
		Showcase = "Twigon", 
		Skin = 4, 
		Cost = 175
	}, 
	Prickles = {
		Name = "Prickles", 
		Skin = 6, 
		Cost = 100, 
		Showcase = "Needling"
	}, 
	Runewt = {
		Name = "Runewt", 
		Skin = 2, 
		Cost = 150, 
		Showcase = "Runewt"
	}, 
	Terruma = {
		Name = "Terruma", 
		Skin = 8, 
		Cost = 230, 
		Showcase = "Coalt"
	}, 
	Djinneko = {
		Name = "Djinneko", 
		Skin = 7, 
		Cost = 250, 
		Showcase = "Apurrition"
	}, 
	Abyssent = {
		Name = "Abyssent", 
		Skin = 9, 
		Cost = 275, 
		Showcase = "Angerler"
	}, 
	Medikrow = {
		Name = "Medikrow", 
		Skin = 7, 
		Cost = 75, 
		Showcase = "Maskrow"
	}, 
	Humbiscus = {
		Name = "Humbiscus", 
		Skin = 7, 
		Cost = 65, 
		Showcase = "Flittum"
	}, 
	Candeigon = {
		Name = "Candeigon", 
		Skin = 7, 
		Cost = 45, 
		Showcase = "Indigoo"
	}, 
	Antenaflight = {
		Name = "Antenaflight", 
		Skin = 6, 
		Cost = 40, 
		Showcase = "Larvennae"
	}, 
	Skadean = {
		Name = "Skadean", 
		Skin = 8, 
		Cost = 190, 
		Showcase = "Schiwi"
	}, 
	Kelpimer = {
		Name = "Kelpimer", 
		Skin = 8, 
		Cost = 300, 
		Showcase = "Kelpie"
	}, 
	Wolfreeze = {
		Name = "Wolfreeze", 
		Skin = 6, 
		Cost = 400, 
		Showcase = "Pupskey"
	}, 
	Hattrix = {
		Name = "Hattrix", 
		Skin = 1, 
		Cost = 200, 
		Showcase = "Hattrix"
	}
};
local v3, v4, v5 = pairs(v1.Encounterable);
while true do
	local v6, v7 = v3(v4, v5);
	if not v6 then
		break;
	end;
	for v8 = 1, v7.Rarity do
		table.insert(v2, v6);
	end;
end;
function v1.GetRarityTable(p1)
	return v2;
end;
return v1;
