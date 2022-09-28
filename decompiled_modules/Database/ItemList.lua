-- Decompiled with the Synapse X Luau decompiler.
-- This also contains the functions used in the items, which shows you what the items do in-depth

local u1 = {};
return function(p1)
	local l__Utilities__1 = p1.Utilities;
	u1.ShopRequirements = {
		["Basic Capsule"] = { "Starter", 1 }, 
		["Striped Capsule"] = { "1stKey", 2 }, 
		["Medical Capsule"] = { "CapsuleQuest", 3 }, 
		["Heart Capsule"] = { "CapsuleQuest", 4 }, 
		["Dense Capsule"] = { "CapsuleQuest", 5 }, 
		["Gold Capsule"] = { "Starter", 6 }, 
		Bandage = { "Starter", 7 }, 
		["Super Bandage"] = { "1stKey", 8 }, 
		Antidote = { "Starter", 9 }, 
		["Anti-Paralysis Spray"] = { "Starter", 10 }, 
		["Anti-Sleep Spray"] = { "Starter", 11 }, 
		["Stat Candy"] = { "Starter", 12 }, 
		["Level-Down Cube"] = { "Starter", 13 }, 
		["Level-Up Cube"] = { "Starter", 14 }, 
		["Swarm Snack"] = { "Starter", 15 }, 
		["Lesser Chain Ticket"] = { "Starter", 16 }, 
		["Greater Chain Ticket"] = { "Starter", 17 }, 
		["Doodle Unlocker"] = { "Starter", 18 }
	};
	local v2 = {
		Description = "These bandages heal a Doodle by 25 HP.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		Image = "http://www.roblox.com/asset/?id=8736096006"
	};
	function v2.Function(p2, p3, p4)
		local v3 = l__Utilities__1:GetStats(p2);
		if p2.currenthp == v3.hp then
			return (p2.Nickname or p2.Name) .. " is already at full health!";
		end;
		if p2.currenthp == 0 then
			return "You can't use Bandage on a fainted doodle!";
		end;
		if not game:GetService("RunService"):IsServer() then
			return "You used Bandage on " .. (p2.Nickname or p2.Name) .. ".", true;
		end;
		p2.currenthp = math.min(p2.currenthp + 25, v3.hp);
		if p3 then
			p3:AddAction(p3.ActionList, {
				Player = p2.Owner, 
				Doodle = p2, 
				Action = "PlayAnim", 
				Move = "GenericHeal"
			});
			p3:AddAction(p3.ActionList, {
				Action = "UpdateHealth", 
				currenthp = p2.currenthp, 
				Doodle = p2, 
				Player = p4
			});
			p3:AddDialogue(p3.ActionList, (p2.Nickname or p2.Name) .. " was healed!");
		end;
		return true;
	end;
	u1.Bandage = v2;
	u1["Super Bandage"] = {
		Description = "These bandages heal a Doodle by 60 HP.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 1000, 
		Image = "http://www.roblox.com/asset/?id=9685180454", 
		Function = function(p5, p6, p7)
			local v4 = l__Utilities__1:GetStats(p5);
			if p5.currenthp == v4.hp then
				return (p5.Nickname or p5.Name) .. " is already at full health!";
			end;
			if p5.currenthp == 0 then
				return "You can't use Super Bandage on a fainted doodle!";
			end;
			if not game:GetService("RunService"):IsServer() then
				return "You used Super Bandage on " .. (p5.Nickname or p5.Name) .. ".", true;
			end;
			p5.currenthp = math.min(p5.currenthp + 60, v4.hp);
			if p6 then
				p6:AddAction(p6.ActionList, {
					Player = p5.Owner, 
					Doodle = p5, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p6:AddAction(p6.ActionList, {
					Action = "UpdateHealth", 
					currenthp = p5.currenthp, 
					Doodle = p5, 
					Player = p7
				});
				p6:AddDialogue(p6.ActionList, (p5.Nickname or p5.Name) .. " was healed!");
			end;
			return true;
		end
	};
	u1["Ice Cream Pop"] = {
		Description = "Feed this item to a Doodle to replenish all of their Moves' Uses by 10.", 
		Target = "Party", 
		Category = "Medicine", 
		Image = "http://www.roblox.com/asset/?id=9425430888", 
		Color3 = Color3.fromRGB(102, 97, 147), 
		Function = function(p8, p9, p10)
			if not game:GetService("RunService"):IsServer() then
				return "You fed Ice Cream Pop to " .. (p8.Nickname or p8.Name) .. ".", true;
			end;
			for v5, v6 in pairs(p8.Moves) do
				p8.Moves[v5].Uses = math.min(l__Utilities__1.GetMaxUses(v6.Name), v6.Uses + 10);
			end;
			if p9 then
				p9:AddAction(p9.ActionList, {
					Player = p8.Owner, 
					Doodle = p8, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p9:AddDialogue(p9.ActionList, (p8.Nickname or p8.Name) .. " had their moves replenished!");
			end;
			return true;
		end
	};
	u1["Anti-Burn Spray"] = {
		Description = "Use this spray on a Doodle to cure their burn.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		CureStatus = true, 
		Image = "http://www.roblox.com/asset/?id=8974960723", 
		Function = function(p11, p12, p13)
			if p11.Status ~= "Burn" then
				return (p11.Nickname or p11.Name) .. " isn't burned!";
			end;
			if not game:GetService("RunService"):IsServer() or p11.Status ~= "Burn" then
				return "You used Anti-Burn Spray on " .. (p11.Nickname or p11.Name) .. ".", true;
			end;
			p11.Status = nil;
			if p12 then
				p12:AddAction(p12.ActionList, {
					Player = p11.Owner, 
					Doodle = p11, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p12:AddAction(p12.ActionList, {
					Player = p11.Owner, 
					Doodle = p11, 
					Action = "ClearStatus"
				});
				p12:AddDialogue(p12.ActionList, (p11.Nickname or p11.Name) .. " was cured of their Burn!");
			end;
			return true;
		end
	};
	u1["Anti-Freeze Spray"] = {
		Description = "Use this spray on a Doodle to cure their freeze.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		CureStatus = true, 
		Image = "http://www.roblox.com/asset/?id=8974962320", 
		Function = function(p14, p15, p16)
			if p14.Status ~= "Frozen" then
				return (p14.Nickname or p14.Name) .. " isn't frozen!";
			end;
			if not game:GetService("RunService"):IsServer() or p14.Status ~= "Frozen" then
				return "You used Anti-Freeze Spray on " .. (p14.Nickname or p14.Name) .. ".", true;
			end;
			p14.Status = nil;
			if p15 then
				p15:AddAction(p15.ActionList, {
					Player = p14.Owner, 
					Doodle = p14, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p15:AddAction(p15.ActionList, {
					Player = p14.Owner, 
					Doodle = p14, 
					Action = "ClearStatus"
				});
				p15:AddDialogue(p15.ActionList, (p14.Nickname or p14.Name) .. " was cured of their freeze!");
			end;
			return true;
		end
	};
	u1["Anti-Sleep Spray"] = {
		Description = "Use this item to throw it at a Doodle to wake them up.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		CureStatus = true, 
		Image = "http://www.roblox.com/asset/?id=8974962769", 
		Function = function(p17, p18, p19)
			if p17.Status ~= "Sleep" then
				return (p17.Nickname or p17.Name) .. " isn't asleep!";
			end;
			if not game:GetService("RunService"):IsServer() or p17.Status ~= "Sleep" then
				return "You threw Anti-Sleep Spray at " .. (p17.Nickname or p17.Name) .. ".", true;
			end;
			p17.Status = nil;
			if p18 then
				p18:AddAction(p18.ActionList, {
					Player = p17.Owner, 
					Doodle = p17, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p18:AddAction(p18.ActionList, {
					Player = p17.Owner, 
					Doodle = p17, 
					Action = "ClearStatus"
				});
				p18:AddDialogue(p18.ActionList, (p17.Nickname or p17.Name) .. " was awakened!");
			end;
			return true;
		end
	};
	u1.Antidote = {
		Description = "Use this spray on a Doodle to cure their poisoning.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		CureStatus = true, 
		Image = "http://www.roblox.com/asset/?id=8974963169", 
		Function = function(p20, p21, p22)
			if p20.Status ~= "Poison" then
				return (p20.Nickname or p20.Name) .. " isn't poisoned!";
			end;
			if not game:GetService("RunService"):IsServer() or p20.Status ~= "Poison" then
				return "You used Antidote on " .. (p20.Nickname or p20.Name) .. ".", true;
			end;
			p20.Status = nil;
			if p21 then
				p21:AddAction(p21.ActionList, {
					Player = p20.Owner, 
					Doodle = p20, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p21:AddAction(p21.ActionList, {
					Player = p20.Owner, 
					Doodle = p20, 
					Action = "ClearStatus"
				});
				p21:AddDialogue(p21.ActionList, (p20.Nickname or p20.Name) .. " was cured of their poisoning!");
			end;
			return true;
		end
	};
	u1.Disinfectant = {
		Description = "Use this spray on a Doodle to cure their disease.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		CureStatus = true, 
		Image = "http://www.roblox.com/asset/?id=8974961687", 
		Function = function(p23, p24, p25)
			if p23.Status ~= "Diseased" then
				return (p23.Nickname or p23.Name) .. " isn't diseased!";
			end;
			if not game:GetService("RunService"):IsServer() or p23.Status ~= "Diseased" then
				return "You used Disinfectant on " .. (p23.Nickname or p23.Name) .. ".", true;
			end;
			p23.Status = nil;
			if p24 then
				p24:AddAction(p24.ActionList, {
					Player = p23.Owner, 
					Doodle = p23, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p24:AddAction(p24.ActionList, {
					Player = p23.Owner, 
					Doodle = p23, 
					Action = "ClearStatus"
				});
				p24:AddDialogue(p24.ActionList, (p23.Nickname or p23.Name) .. " was cured of their disease!");
			end;
			return true;
		end
	};
	u1["Anti-Paralysis Spray"] = {
		Description = "Use this spray on a Doodle to cure their paralysis.", 
		Target = "Party", 
		Category = "Medicine", 
		Price = 400, 
		CureStatus = true, 
		Image = "http://www.roblox.com/asset/?id=8974961170", 
		Function = function(p26, p27, p28)
			if p26.Status ~= "Paralysis" then
				return (p26.Nickname or p26.Name) .. " isn't paralyzed!";
			end;
			if not game:GetService("RunService"):IsServer() or p26.Status ~= "Paralysis" then
				return "You used Anti-Paralysis Spray on " .. (p26.Nickname or p26.Name) .. ".", true;
			end;
			p26.Status = nil;
			if p27 then
				p27:AddAction(p27.ActionList, {
					Player = p26.Owner, 
					Doodle = p26, 
					Action = "PlayAnim", 
					Move = "GenericHeal"
				});
				p27:AddAction(p27.ActionList, {
					Player = p26.Owner, 
					Doodle = p26, 
					Action = "ClearStatus"
				});
				p27:AddDialogue(p27.ActionList, (p26.Nickname or p26.Name) .. " was cured of their paralysis!");
			end;
			return true;
		end
	};
	u1["Orb of Darkness"] = {
		Description = "This strange orb of darkness allows certain Doodles to evolve.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		EvolveItem = true, 
		Color3 = Color3.fromRGB(21, 21, 21), 
		DontCloseImmediately = true, 
		Image = "http://www.roblox.com/asset/?id=8463940065", 
		Function = function(p29, p30, p31)
			if p30 then
				return false;
			end;
			local v7 = p1.DoodleInfo[p29.Name];
			if v7.Evolve and v7.Evolve.Item and v7.Evolve.Item["Orb of Darkness"] then
				local v8 = true;
			else
				v8 = false;
			end;
			if not v8 then
				return (p29.Nickname or p29.Name) .. " cannot evolve using the Orb of Darkness!";
			end;
			if game:GetService("RunService"):IsServer() then
				p29:EvolveItem(p31, "Orb of Darkness");
				return true;
			end;
			return "Evolving " .. (p29.Nickname or p29.Name) .. "...", true;
		end
	};
	u1["Strange Catalyst"] = {
		Description = "A strange, reactive item that may make a certain Doodle evolve. It doesn't seem safe to touch. ", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		EvolveItem = true, 
		Color3 = Color3.fromRGB(91, 59, 135), 
		DontCloseImmediately = true, 
		Image = "http://www.roblox.com/asset/?id=8789994663", 
		Function = function(p32, p33, p34)
			if p33 then
				return false;
			end;
			local v9 = p1.DoodleInfo[p32.Name];
			if v9.Evolve and v9.Evolve.Item and v9.Evolve.Item["Strange Catalyst"] then
				local v10 = true;
			else
				v10 = false;
			end;
			if not v10 then
				return (p32.Nickname or p32.Name) .. " cannot evolve using the Strange Catalyst!";
			end;
			if game:GetService("RunService"):IsServer() then
				p32:EvolveItem(p34, "Strange Catalyst");
				return true;
			end;
			return "Evolving " .. (p32.Nickname or p32.Name) .. "...", true;
		end
	};
	u1["Strange Substance"] = {
		Description = "A strange, reactive substance allows certain Doodles to evolve. It's oddly warm to the touch.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		EvolveItem = true, 
		Color3 = Color3.fromRGB(97, 24, 47), 
		DontCloseImmediately = true, 
		Image = "http://www.roblox.com/asset/?id=8789995239", 
		Function = function(p35, p36, p37)
			if p36 then
				return false;
			end;
			local v11 = p1.DoodleInfo[p35.Name];
			if v11.Evolve and v11.Evolve.Item and v11.Evolve.Item["Strange Substance"] then
				local v12 = true;
			else
				v12 = false;
			end;
			if not v12 then
				return (p35.Nickname or p35.Name) .. " cannot evolve using the Strange Substance!";
			end;
			if game:GetService("RunService"):IsServer() then
				p35:EvolveItem(p37, "Strange Substance");
				return true;
			end;
			return "Evolving " .. (p35.Nickname or p35.Name) .. "...", true;
		end
	};
	u1["Strange Solution"] = {
		Description = "A strange, reactive liquid that may make a certain Doodle evolve. It's cool to the touch.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		EvolveItem = true, 
		Color3 = Color3.fromRGB(33, 117, 187), 
		DontCloseImmediately = true, 
		Image = "http://www.roblox.com/asset/?id=8789994917", 
		Function = function(p38, p39, p40)
			if p39 then
				return false;
			end;
			local v13 = p1.DoodleInfo[p38.Name];
			if v13.Evolve and v13.Evolve.Item and v13.Evolve.Item["Strange Solution"] then
				local v14 = true;
			else
				v14 = false;
			end;
			if not v14 then
				return (p38.Nickname or p38.Name) .. " cannot evolve using the Strange Solution!";
			end;
			if game:GetService("RunService"):IsServer() then
				p38:EvolveItem(p40, "Strange Solution");
				return true;
			end;
			return "Evolving " .. (p38.Nickname or p38.Name) .. "...", true;
		end
	};
	local v15 = {
		Description = "Give this item to a Doodle to have it cure a status effect when the Doodle is inflicted with one. This item is consumed after one use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(65, 175, 238), 
		Image = "http://www.roblox.com/asset/?id=7325480728"
	};
	local u2 = {
		Paralysis = "Paralysis", 
		Poison = "Poison", 
		Rage = "Rage", 
		Burn = "Burn", 
		Sleep = "Sleep", 
		Frozen = "Freeze", 
		Marked = "Mark", 
		Vulnerable = "Vulnerable", 
		Cursed = "Curse", 
		Diseased = "Disease"
	};
	function v15.OnStatus(p41, p42, p43)
		if not p42.Status or not u2[p42.Status] then
			return false;
		end;
		p42.Status = nil;
		p41:AddDialogue(p41.ActionList, "The Cure Jelly got rid of " .. "&DOODLENAME," .. p42.ID .. "&" .. "'s " .. u2[p42.Status] .. "!");
		p41:AddAction(p41.ActionList, {
			Player = p42.Owner, 
			Doodle = p42, 
			Action = "ClearStatus"
		});
		p42.HeldItem = nil;
		return true;
	end;
	u1["Cure Jelly"] = v15;
	u1["Sniper Scope"] = {
		Description = "Give this item to a Doodle. The holder, if they haven't taken damage yet this turn, has a boosted critical hit rate.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(133, 129, 129), 
		Image = "http://www.roblox.com/asset/?id=10006059298", 
		CritRate = function(p44, p45, p46, p47, p48)
			if p45.Revenge and #p45.Revenge ~= 0 then
				return p48;
			end;
			return p48 / 3;
		end
	};
	u1["Running Shoes"] = {
		Description = "Give this item to a Doodle so it can flee from any wild Doodle without fail.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(205, 64, 44), 
		Image = "http://www.roblox.com/asset/?id=9575744399", 
		RunningShoes = true
	};
	u1["Frozen TV Dinner"] = {
		Description = "Give this item to a Doodle. They will be so distracted snacking on a delicious dinner that they will always attack last.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(130, 186, 237), 
		Image = "http://www.roblox.com/asset/?id=7325464936", 
		AttackLast = true
	};
	u1["Wake-up Jelly"] = {
		Description = "Give this item to a Doodle to wake it up when it gets put to sleep. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(87, 31, 189), 
		Image = "http://www.roblox.com/asset/?id=7325464058", 
		OnStatus = function(p49, p50, p51)
			if not p50.Status or p50.Status ~= "Sleep" or not u2[p50.Status] then
				return false;
			end;
			local l__Status__16 = p50.Status;
			p50.Status = nil;
			p49:AddDialogue(p49.ActionList, "The Wake-up Jelly woke up " .. "&DOODLENAME," .. p50.ID .. "&!");
			p50.HeldItem = nil;
			p50.Resting = nil;
			return true;
		end
	};
	u1["Heal Jelly"] = {
		Description = "Give this item to a Doodle to have them heal after their health drops below half.  This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(211, 54, 107), 
		Image = "http://www.roblox.com/asset/?id=7325470567", 
		AfterDamage = function(p52, p53, p54)
			local l__hp__17 = p53.Stats.hp;
			local v18 = math.floor(l__hp__17 * 0.25);
			if p53.currenthp <= l__hp__17 / 2 then
				p52:AddDialogue(p52.ActionList, p53.Name .. " used its Heal Jelly!");
				p52:TakeDamage(p53, -v18);
				p53.HeldItem = nil;
				p52:AddDialogue(p52.ActionList, p53.Name .. " restored health!");
			end;
		end
	};
	u1["Speed Jelly"] = {
		Description = "Give this item to a Doodle to have them boost their speed when their health gets low. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(0, 145, 40), 
		Image = "http://www.roblox.com/asset/?id=7325462367", 
		AfterDamage = function(p55, p56, p57)
			if p56.currenthp <= p56.Stats.hp / 4 and p56.Boosts.spe < 6 then
				p55:AddDialogue(p55.ActionList, "&DOODLENAME," .. p56.ID .. "& used their Speed Jelly!");
				l__Utilities__1.ChangeStats(p55, p56, p56, 100, {
					spe = 1
				});
				p56.HeldItem = nil;
			end;
		end
	};
	u1["Strength Jelly"] = {
		Description = "Give this item to a Doodle to increase the power of one of their weak attacks. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(185, 19, 26), 
		Image = "http://www.roblox.com/asset/?id=7325464522", 
		OffensiveDamageCalc = function(p58, p59, p60, p61, p62)
			if not (p62 < p60.Stats.hp / 4) then
				return p62;
			end;
			p59.HeldItem = nil;
			p58:AddDialogue(p58.ActionList, "&DOODLENAME," .. p59.ID .. "& used their Strength Jelly! This next attack is doing more damage!");
			return p62 * 2;
		end
	};
	u1["Plant Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Plant-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(57, 137, 30), 
		Image = "http://www.roblox.com/asset/?id=9552698960", 
		OffensiveDamageCalc = function(p63, p64, p65, p66, p67)
			if p66.Type ~= "Plant" then
				return p67;
			end;
			p64.HeldItem = nil;
			p63:AddDialogue(p63.ActionList, "&DOODLENAME," .. p64.ID .. "& consumed their Plant Taffy! This attack is doing more damage!");
			return p67 * 1.5;
		end
	};
	u1["Plant Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Plant-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(57, 137, 30), 
		Image = "http://www.roblox.com/asset/?id=9918371596", 
		DuringDamageCalc = function(p68, p69, p70, p71, p72)
			if p71.Type ~= "Plant" then
				return p72;
			end;
			p68:AddDialogue(p68.ActionList, "&DOODLENAME," .. p70.ID .. "&'s Plant Candy Cube reduced the damage of this attack!");
			p70.HeldItem = nil;
			return math.floor(p72 * 0.5);
		end
	};
	u1["Mind Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Mind-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(173, 89, 97), 
		Image = "http://www.roblox.com/asset/?id=9553024865", 
		OffensiveDamageCalc = function(p73, p74, p75, p76, p77)
			if p76.Type ~= "Mind" then
				return p77;
			end;
			p74.HeldItem = nil;
			p73:AddDialogue(p73.ActionList, "&DOODLENAME," .. p74.ID .. "& consumed their Mind Taffy! This attack is doing more damage!");
			return p77 * 1.5;
		end
	};
	u1["Mind Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Mind-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(119, 60, 46), 
		Image = "http://www.roblox.com/asset/?id=9918370444", 
		DuringDamageCalc = function(p78, p79, p80, p81, p82)
			if p81.Type ~= "Mind" then
				return p82;
			end;
			p78:AddDialogue(p78.ActionList, "&DOODLENAME," .. p80.ID .. "&'s Mind Candy Cube reduced the damage of this attack!");
			p80.HeldItem = nil;
			return math.floor(p82 * 0.5);
		end
	};
	u1["Air Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Air-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(169, 212, 227), 
		Image = "http://www.roblox.com/asset/?id=9552702093", 
		OffensiveDamageCalc = function(p83, p84, p85, p86, p87)
			if p86.Type ~= "Air" then
				return p87;
			end;
			p84.HeldItem = nil;
			p83:AddDialogue(p83.ActionList, "&DOODLENAME," .. p84.ID .. "& consumed their Air Taffy! This attack is doing more damage!");
			return p87 * 1.5;
		end
	};
	u1["Air Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of an Air-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(169, 212, 227), 
		Image = "http://www.roblox.com/asset/?id=9918363418", 
		DuringDamageCalc = function(p88, p89, p90, p91, p92)
			if p91.Type ~= "Air" then
				return p92;
			end;
			p88:AddDialogue(p88.ActionList, "&DOODLENAME," .. p90.ID .. "&'s Air Candy Cube reduced the damage of this attack!");
			p90.HeldItem = nil;
			return math.floor(p92 * 0.5);
		end
	};
	u1["Basic Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Basic-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(136, 136, 136), 
		Image = "http://www.roblox.com/asset/?id=9552701606", 
		OffensiveDamageCalc = function(p93, p94, p95, p96, p97)
			if p96.Type ~= "Basic" then
				return p97;
			end;
			p94.HeldItem = nil;
			p93:AddDialogue(p93.ActionList, "&DOODLENAME," .. p94.ID .. "& consumed their Basic Taffy! This attack is doing more damage!");
			return p97 * 1.5;
		end
	};
	u1["Basic Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Basic-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(136, 136, 136), 
		Image = "http://www.roblox.com/asset/?id=9918363973", 
		DuringDamageCalc = function(p98, p99, p100, p101, p102)
			if p101.Type ~= "Basic" then
				return p102;
			end;
			p98:AddDialogue(p98.ActionList, "&DOODLENAME," .. p100.ID .. "&'s Basic Candy Cube reduced the damage of this attack!");
			p100.HeldItem = nil;
			return math.floor(p102 * 0.5);
		end
	};
	u1["Insect Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Insect-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(169, 209, 84), 
		Image = "http://www.roblox.com/asset/?id=9552701242", 
		OffensiveDamageCalc = function(p103, p104, p105, p106, p107)
			if p106.Type ~= "Insect" then
				return p107;
			end;
			p104.HeldItem = nil;
			p103:AddDialogue(p103.ActionList, "&DOODLENAME," .. p104.ID .. "& consumed their Insect Taffy! This attack is doing more damage!");
			return p107 * 1.5;
		end
	};
	u1["Insect Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Insect-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(169, 209, 84), 
		Image = "http://www.roblox.com/asset/?id=9918368279", 
		DuringDamageCalc = function(p108, p109, p110, p111, p112)
			if p111.Type ~= "Insect" then
				return p112;
			end;
			p108:AddDialogue(p108.ActionList, "&DOODLENAME," .. p110.ID .. "&'s Insect Candy Cube reduced the damage of this attack!");
			p110.HeldItem = nil;
			return math.floor(p112 * 0.5);
		end
	};
	u1["Pocket Storage"] = {
		Description = "Access your Doodle Storage remotely.", 
		Type = "OverworldOnly", 
		Category = "Key Items", 
		InfiniteUses = true, 
		Color3 = Color3.fromRGB(234, 172, 158), 
		Image = "http://www.roblox.com/asset/?id=10649026745", 
		SpecialFunction = function(p113, p114)
			local v19 = p113.Dialogue:SaySimpleYesNo("Do you want to access your Doodle Storage?");
			p113.Dialogue:Hide();
			if v19 == "Yes" then
				p114.ItemUI.Visible = false;
				local v20 = p113.PC.new();
				p113.PCClosed:Wait();
				p113.Controls:ToggleWalk(true);
			end;
			p113.Talky.Visible = false;
		end
	};
	u1["Swarm Snack"] = {
		Description = "These treats may be a little too tasty. Sprinkle these around and watch the Doodles swarm!", 
		Type = "OverworldOnly", 
		Category = "Items", 
		GemPrice = 600, 
		Color3 = Color3.fromRGB(110, 167, 215), 
		Image = "http://www.roblox.com/asset/?id=10778778895", 
		NonPartyFunc = function(p115, p116)
			local v21 = nil;
			p115.Process = true;
			local v22 = nil;
			local v23 = nil;
			v22, v21, v23 = p115.Network:get("GetSwarm");
			if v22 then
				p115.Gui:SayText("", "There is already a swarm of " .. v22.Name .. " " .. v21[v22.Chunk] .. "! There are " .. v23 .. " seconds left of this swarm.", nil, true);
				p115.Talky.Visible = false;
			elseif not v22 then
				local l__Name__24 = p115.CurrentChunk.Name;
				if not v21[l__Name__24] then
					p115.Gui:SayText("", "You can't start a swarm here.", nil, true);
					p115.Talky.Visible = false;
				else
					local v25 = p115.Dialogue:SaySimpleYesNo("Do you want to start a swarm " .. v21[l__Name__24] .. "?");
					p115.Dialogue:Hide();
					if v25 == "Yes" then
						p116:Destroy();
						p115.Menu:MakeInactive(true);
						p115.Network:get("StartSwarm", l__Name__24);
					end;
				end;
			end;
			p115.Process = false;
		end
	};
	u1["Chain Preserver"] = {
		Description = "Stores a chain for later use. ", 
		Type = "OverworldOnly", 
		Category = "Key Items", 
		InfiniteUses = true, 
		Color3 = Color3.fromRGB(255, 66, 87), 
		Image = "http://www.roblox.com/asset/?id=9631194297", 
		SpecialFunction = function(p117, p118)
			p117.Process = true;
			local v26, v27 = p117.ClientDatabase:PDSFunc("ChainPreserver");
			local v28 = "Do you want to store your current chain?";
			if v27.Name then
				if v26.Name then
					v28 = "Do you want to switch your current chain with your stored chain? Current stored chain: #" .. v27.Number .. " for " .. v27.Name .. ".";
				else
					v28 = "Do you want to take out your current preserved chain? Current stored chain: #" .. v27.Number .. " for " .. v27.Name .. ".";
				end;
			end;
			local v29 = nil;
			if p117.Dialogue:SaySimpleYesNo(v28) == "Yes" then
				p117.Network:post("PreserveChain");
				if v26.Name then
					v29 = "New stored chain: #" .. v26.Number .. " for " .. v26.Name .. ".";
				end;
			end;
			if v29 then
				p117.Gui:SayText("", v29, nil, true);
			end;
			p117.Talky.Visible = false;
			p117.Process = false;
		end
	};
	u1["Crystal Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Crystal-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(65, 195, 205), 
		Image = "http://www.roblox.com/asset/?id=9552700861", 
		OffensiveDamageCalc = function(p119, p120, p121, p122, p123)
			if p122.Type ~= "Crystal" then
				return p123;
			end;
			p120.HeldItem = nil;
			p119:AddDialogue(p119.ActionList, "&DOODLENAME," .. p120.ID .. "& consumed their Crystal Taffy! This attack is doing more damage!");
			return p123 * 1.5;
		end
	};
	u1["Crystal Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Crystal-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(65, 195, 205), 
		Image = "http://www.roblox.com/asset/?id=9918365054", 
		DuringDamageCalc = function(p124, p125, p126, p127, p128)
			if p127.Type ~= "Crystal" then
				return p128;
			end;
			p124:AddDialogue(p124.ActionList, "&DOODLENAME," .. p126.ID .. "&'s Crystal Candy Cube reduced the damage of this attack!");
			p126.HeldItem = nil;
			return math.floor(p128 * 0.5);
		end
	};
	u1["Food Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Food-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(209, 131, 87), 
		Image = "http://www.roblox.com/asset/?id=9552699828", 
		OffensiveDamageCalc = function(p129, p130, p131, p132, p133)
			if p132.Type ~= "Food" then
				return p133;
			end;
			p130.HeldItem = nil;
			p129:AddDialogue(p129.ActionList, "&DOODLENAME," .. p130.ID .. "& consumed their Food Taffy! This attack is doing more damage!");
			return p133 * 1.5;
		end
	};
	u1["Food Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Food-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(209, 131, 87), 
		Image = "http://www.roblox.com/asset/?id=9918367440", 
		DuringDamageCalc = function(p134, p135, p136, p137, p138)
			if p137.Type ~= "Food" then
				return p138;
			end;
			p134:AddDialogue(p134.ActionList, "&DOODLENAME," .. p136.ID .. "&'s Food Candy Cube reduced the damage of this attack!");
			p136.HeldItem = nil;
			return math.floor(p138 * 0.5);
		end
	};
	u1["Water Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Water-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(45, 84, 179), 
		Image = "http://www.roblox.com/asset/?id=9552699458", 
		OffensiveDamageCalc = function(p139, p140, p141, p142, p143)
			if p142.Type ~= "Water" then
				return p143;
			end;
			p140.HeldItem = nil;
			p139:AddDialogue(p139.ActionList, "&DOODLENAME," .. p140.ID .. "& consumed their Water Taffy! This attack is doing more damage!");
			return p143 * 1.5;
		end
	};
	u1["Water Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Water-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(45, 84, 179), 
		Image = "http://www.roblox.com/asset/?id=9918373556", 
		DuringDamageCalc = function(p144, p145, p146, p147, p148)
			if p147.Type ~= "Water" then
				return p148;
			end;
			p144:AddDialogue(p144.ActionList, "&DOODLENAME," .. p146.ID .. "&'s Water Candy Cube reduced the damage of this attack!");
			p146.HeldItem = nil;
			return math.floor(p148 * 0.5);
		end
	};
	u1["Spirit Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Spirit-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(50, 37, 83), 
		Image = "http://www.roblox.com/asset/?id=9553014795", 
		OffensiveDamageCalc = function(p149, p150, p151, p152, p153)
			if p152.Type ~= "Spirit" then
				return p153;
			end;
			p150.HeldItem = nil;
			p149:AddDialogue(p149.ActionList, "&DOODLENAME," .. p150.ID .. "& consumed their Spirit Taffy! This attack is doing more damage!");
			return p153 * 1.5;
		end
	};
	u1["Spirit Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Spirit-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(50, 37, 83), 
		Image = "http://www.roblox.com/asset/?id=9918373034", 
		DuringDamageCalc = function(p154, p155, p156, p157, p158)
			if p157.Type ~= "Spirit" then
				return p158;
			end;
			p154:AddDialogue(p154.ActionList, "&DOODLENAME," .. p156.ID .. "&'s Spirit Candy Cube reduced the damage of this attack!");
			p156.HeldItem = nil;
			return math.floor(p158 * 0.5);
		end
	};
	u1["Spark Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Spark-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(241, 173, 30), 
		Image = "http://www.roblox.com/asset/?id=9553013394", 
		OffensiveDamageCalc = function(p159, p160, p161, p162, p163)
			if p162.Type ~= "Spark" then
				return p163;
			end;
			p160.HeldItem = nil;
			p159:AddDialogue(p159.ActionList, "&DOODLENAME," .. p160.ID .. "& consumed their Spark Taffy! This attack is doing more damage!");
			return p163 * 1.5;
		end
	};
	u1["Spark Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Spark-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(241, 173, 30), 
		Image = "http://www.roblox.com/asset/?id=9918372658", 
		DuringDamageCalc = function(p164, p165, p166, p167, p168)
			if p167.Type ~= "Spark" then
				return p168;
			end;
			p164:AddDialogue(p164.ActionList, "&DOODLENAME," .. p166.ID .. "&'s Spark Candy Cube reduced the damage of this attack!");
			p166.HeldItem = nil;
			return math.floor(p168 * 0.5);
		end
	};
	u1["Poison Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Poison-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(129, 93, 174), 
		Image = "http://www.roblox.com/asset/?id=9553012344", 
		OffensiveDamageCalc = function(p169, p170, p171, p172, p173)
			if p172.Type ~= "Poison" then
				return p173;
			end;
			p170.HeldItem = nil;
			p169:AddDialogue(p169.ActionList, "&DOODLENAME," .. p170.ID .. "& consumed their Poison Taffy! This attack is doing more damage!");
			return p173 * 1.5;
		end
	};
	u1["Poison Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Poison-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(129, 93, 174), 
		Image = "http://www.roblox.com/asset/?id=9918372062", 
		DuringDamageCalc = function(p174, p175, p176, p177, p178)
			if p177.Type ~= "Poison" then
				return p178;
			end;
			p174:AddDialogue(p174.ActionList, "&DOODLENAME," .. p176.ID .. "&'s Poison Candy Cube reduced the damage of this attack!");
			p176.HeldItem = nil;
			return math.floor(p178 * 0.5);
		end
	};
	u1["Mythic Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Mythic-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(34, 48, 119), 
		Image = "http://www.roblox.com/asset/?id=9553011102", 
		OffensiveDamageCalc = function(p179, p180, p181, p182, p183)
			if p182.Type ~= "Mythic" then
				return p183;
			end;
			p180.HeldItem = nil;
			p179:AddDialogue(p179.ActionList, "&DOODLENAME," .. p180.ID .. "& consumed their Mythic Taffy! This attack is doing more damage!");
			return p183 * 1.5;
		end
	};
	u1["Mythic Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Mythic-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(34, 48, 119), 
		Image = "http://www.roblox.com/asset/?id=9918371058", 
		DuringDamageCalc = function(p184, p185, p186, p187, p188)
			if p187.Type ~= "Mythic" then
				return p188;
			end;
			p184:AddDialogue(p184.ActionList, "&DOODLENAME," .. p186.ID .. "&'s Mythic Candy Cube reduced the damage of this attack!");
			p186.HeldItem = nil;
			return math.floor(p188 * 0.5);
		end
	};
	u1["Metal Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Metal-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(77, 99, 100), 
		Image = "http://www.roblox.com/asset/?id=9553009871", 
		OffensiveDamageCalc = function(p189, p190, p191, p192, p193)
			if p192.Type ~= "Metal" then
				return p193;
			end;
			p190.HeldItem = nil;
			p189:AddDialogue(p189.ActionList, "&DOODLENAME," .. p190.ID .. "& consumed their Metal Taffy! This attack is doing more damage!");
			return p193 * 1.5;
		end
	};
	u1["Metal Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Metal-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(77, 99, 100), 
		Image = "http://www.roblox.com/asset/?id=9918369974", 
		DuringDamageCalc = function(p194, p195, p196, p197, p198)
			if p197.Type ~= "Metal" then
				return p198;
			end;
			p194:AddDialogue(p194.ActionList, "&DOODLENAME," .. p196.ID .. "&'s Metal Candy Cube reduced the damage of this attack!");
			p196.HeldItem = nil;
			return math.floor(p198 * 0.5);
		end
	};
	u1["Light Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Light-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(245, 213, 125), 
		Image = "http://www.roblox.com/asset/?id=9553007659", 
		OffensiveDamageCalc = function(p199, p200, p201, p202, p203)
			if p202.Type ~= "Light" then
				return p203;
			end;
			p200.HeldItem = nil;
			p199:AddDialogue(p199.ActionList, "&DOODLENAME," .. p200.ID .. "& consumed their Light Taffy! This attack is doing more damage!");
			return p203 * 1.5;
		end
	};
	u1["Light Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Light-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(245, 213, 125), 
		Image = "http://www.roblox.com/asset/?id=9918368731", 
		DuringDamageCalc = function(p204, p205, p206, p207, p208)
			if p207.Type ~= "Light" then
				return p208;
			end;
			p204:AddDialogue(p204.ActionList, "&DOODLENAME," .. p206.ID .. "&'s Light Candy Cube reduced the damage of this attack!");
			p206.HeldItem = nil;
			return math.floor(p208 * 0.5);
		end
	};
	u1["Melee Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Melee-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(191, 57, 49), 
		Image = "http://www.roblox.com/asset/?id=9553008930", 
		OffensiveDamageCalc = function(p209, p210, p211, p212, p213)
			if p212.Type ~= "Melee" then
				return p213;
			end;
			p210.HeldItem = nil;
			p209:AddDialogue(p209.ActionList, "&DOODLENAME," .. p210.ID .. "& consumed their Melee Taffy! This attack is doing more damage!");
			return p213 * 1.5;
		end
	};
	u1["Melee Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Melee-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(191, 57, 49), 
		Image = "http://www.roblox.com/asset/?id=9918369396", 
		DuringDamageCalc = function(p214, p215, p216, p217, p218)
			if p217.Type ~= "mELEE" then
				return p218;
			end;
			p214:AddDialogue(p214.ActionList, "&DOODLENAME," .. p216.ID .. "&'s Melee Candy Cube reduced the damage of this attack!");
			p216.HeldItem = nil;
			return math.floor(p218 * 0.5);
		end
	};
	u1["Ice Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Ice-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(107, 187, 213), 
		Image = "http://www.roblox.com/asset/?id=9553006558", 
		OffensiveDamageCalc = function(p219, p220, p221, p222, p223)
			if p222.Type ~= "Ice" then
				return p223;
			end;
			p220.HeldItem = nil;
			p219:AddDialogue(p219.ActionList, "&DOODLENAME," .. p220.ID .. "& consumed their Ice Taffy! This attack is doing more damage!");
			return p223 * 1.5;
		end
	};
	u1["Ice Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Ice-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(107, 187, 213), 
		Image = "http://www.roblox.com/asset/?id=9918367861", 
		DuringDamageCalc = function(p224, p225, p226, p227, p228)
			if p227.Type ~= "Ice" then
				return p228;
			end;
			p224:AddDialogue(p224.ActionList, "&DOODLENAME," .. p226.ID .. "&'s Ice Candy Cube reduced the damage of this attack!");
			p226.HeldItem = nil;
			return math.floor(p228 * 0.5);
		end
	};
	u1["Fire Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Fire-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(213, 67, 5), 
		Image = "http://www.roblox.com/asset/?id=9553005518", 
		OffensiveDamageCalc = function(p229, p230, p231, p232, p233)
			if p232.Type ~= "Fire" then
				return p233;
			end;
			p230.HeldItem = nil;
			p229:AddDialogue(p229.ActionList, "&DOODLENAME," .. p230.ID .. "& consumed their Fire Taffy! This attack is doing more damage!");
			return p233 * 1.5;
		end
	};
	u1["Fire Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Fire-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(213, 67, 5), 
		Image = "http://www.roblox.com/asset/?id=9918366463", 
		DuringDamageCalc = function(p234, p235, p236, p237, p238)
			if p237.Type ~= "Fire" then
				return p238;
			end;
			p234:AddDialogue(p234.ActionList, "&DOODLENAME," .. p236.ID .. "&'s Fire Candy Cube reduced the damage of this attack!");
			p236.HeldItem = nil;
			return math.floor(p238 * 0.5);
		end
	};
	u1["Earth Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Earth-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(164, 116, 91), 
		Image = "http://www.roblox.com/asset/?id=9553004221", 
		OffensiveDamageCalc = function(p239, p240, p241, p242, p243)
			if p242.Type ~= "Earth" then
				return p243;
			end;
			p240.HeldItem = nil;
			p239:AddDialogue(p239.ActionList, "&DOODLENAME," .. p240.ID .. "& consumed their Earth Taffy! This attack is doing more damage!");
			return p243 * 1.5;
		end
	};
	u1["Earth Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Earth-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(164, 116, 91), 
		Image = "http://www.roblox.com/asset/?id=9918365803", 
		DuringDamageCalc = function(p244, p245, p246, p247, p248)
			if p247.Type ~= "Earth" then
				return p248;
			end;
			p244:AddDialogue(p244.ActionList, "&DOODLENAME," .. p246.ID .. "&'s Earth Candy Cube reduced the damage of this attack!");
			p246.HeldItem = nil;
			return math.floor(p248 * 0.5);
		end
	};
	u1["Dark Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Dark-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(61, 62, 63), 
		Image = "http://www.roblox.com/asset/?id=9553003459", 
		OffensiveDamageCalc = function(p249, p250, p251, p252, p253)
			if p252.Type ~= "Dark" then
				return p253;
			end;
			p250.HeldItem = nil;
			p249:AddDialogue(p249.ActionList, "&DOODLENAME," .. p250.ID .. "& consumed their Dark Taffy! This attack is doing more damage!");
			return p253 * 1.5;
		end
	};
	u1["Dark Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Dark-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(61, 62, 63), 
		Image = "http://www.roblox.com/asset/?id=9918365362", 
		DuringDamageCalc = function(p254, p255, p256, p257, p258)
			if p257.Type ~= "Dark" then
				return p258;
			end;
			p254:AddDialogue(p254.ActionList, "&DOODLENAME," .. p256.ID .. "&'s Dark Candy Cube reduced the damage of this attack!");
			p256.HeldItem = nil;
			return math.floor(p258 * 0.5);
		end
	};
	u1["Beast Taffy"] = {
		Description = "A taffy made in Von Sweets' Factory. Give this item to boost the damage of one Beast-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(119, 60, 46), 
		Image = "http://www.roblox.com/asset/?id=9553001420", 
		OffensiveDamageCalc = function(p259, p260, p261, p262, p263)
			if p262.Type ~= "Beast" then
				return p263;
			end;
			p260.HeldItem = nil;
			p259:AddDialogue(p259.ActionList, "&DOODLENAME," .. p260.ID .. "& consumed their Beast Taffy! This attack is doing more damage!");
			return p263 * 1.5;
		end
	};
	u1["Beast Candy Cube"] = {
		Description = "Some candy made in von Sweets' factory. Give this item to a Doodle to reduce the power of a Beast-type attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(119, 60, 46), 
		Image = "http://www.roblox.com/asset/?id=9918364486", 
		DuringDamageCalc = function(p264, p265, p266, p267, p268)
			if p267.Type ~= "Beast" then
				return p268;
			end;
			p264:AddDialogue(p264.ActionList, "&DOODLENAME," .. p266.ID .. "&'s Beast Candy Cube reduced the damage of this attack!");
			p266.HeldItem = nil;
			return math.floor(p268 * 0.5);
		end
	};
	u1["Magical Jelly"] = {
		Description = "Give this item to a Doodle to increase the power of one of their magical attacks. This item is consumed  after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(185, 19, 26), 
		Image = "http://www.roblox.com/asset/?id=7325462966", 
		OffensiveDamageCalc = function(p269, p270, p271, p272, p273)
			if p272.Category ~= "Magical" then
				return p273;
			end;
			p270.HeldItem = nil;
			p269:AddDialogue(p269.ActionList, "&DOODLENAME," .. p270.ID .. "& used their Magical Jelly! This next attack is doing more damage!");
			return p273 * 1.2;
		end
	};
	u1["Defensive Jelly"] = {
		Description = "Give this item to a Doodle to reduce the power of a super-effective attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(51, 11, 153), 
		Image = "http://www.roblox.com/asset/?id=7325543224", 
		DuringDamageCalc = function(p274, p275, p276, p277, p278)
			if not (p1.Database.Typings:GetEffectiveness(p275, p276, p277.Type) > 1) then
				return p278;
			end;
			p274:AddDialogue(p274.ActionList, "&DOODLENAME," .. p276.ID .. "&'s Defensive Jelly reduced the damage of this attack!");
			p276.HeldItem = nil;
			return math.floor(p278 * 0.85);
		end
	};
	u1["Weird Jelly"] = {
		Description = "Give this item to a Doodle to boost their attack and magic attack after they are hit with a super effective attack. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(44, 44, 44), 
		Image = "http://www.roblox.com/asset/?id=8864653270", 
		AfterDamage = function(p279, p280, p281, p282)
			if not p281 then
				return;
			end;
			if p1.Database.Typings:GetEffectiveness(p281, p280, p282.Type) > 1 then
				p279:AddDialogue(p279.ActionList, "&DOODLENAME," .. p280.ID .. "&'s Weird Jelly activated!");
				l__Utilities__1.ChangeStats(p279, p280, p280, 100, {
					atk = 1, 
					matk = 1
				});
				p280.HeldItem = nil;
			end;
		end
	};
	u1["Power Jelly"] = {
		Description = "Give this item to a Doodle to restore their stats when they are lowered.  This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(175, 175, 174), 
		Image = "http://www.roblox.com/asset/?id=8864653882", 
		OnStatChange = function(p283, p284, p285, p286, p287)
			local v30 = nil;
			for v31, v32 in pairs(p284.Boosts) do
				if p284.Boosts[v31] < 0 then
					v30 = true;
					p284.Boosts[v31] = 0;
				end;
			end;
			if v30 then
				p283:AddDialogue(p283.ActionList, "&DOODLENAME," .. p284.ID .. "&'s Power Jelly prevented their stats from lowering!");
				p284.HeldItem = nil;
			end;
		end
	};
	u1["Candy Heart"] = {
		Description = "This weird object made of candy fits snugly in your hand, and feels as though it'll start beating.  Allows a certain Doodle to evolve.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		EvolveItem = true, 
		Color3 = Color3.fromRGB(255, 255, 255), 
		DontCloseImmediately = true, 
		Image = "http://www.roblox.com/asset/?id=8830143801", 
		Function = function(p288, p289, p290)
			if p289 then
				return false;
			end;
			local v33 = p1.DoodleInfo[p288.Name];
			if v33.Evolve and v33.Evolve.Item and v33.Evolve.Item["Candy Heart"] then
				local v34 = true;
			else
				v34 = false;
			end;
			if not v34 then
				return (p288.Nickname or p288.Name) .. " cannot evolve using the Candy Heart!";
			end;
			if game:GetService("RunService"):IsServer() then
				p288:EvolveItem(p290, "Candy Heart");
				return true;
			end;
			return "Evolving " .. (p288.Nickname or p288.Name) .. "...", true;
		end
	};
	u1["Orb of Light"] = {
		Description = "This strange orb of light allows certain Doodles to evolve.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		EvolveItem = true, 
		Color3 = Color3.fromRGB(255, 255, 127), 
		DontCloseImmediately = true, 
		Image = "http://www.roblox.com/asset/?id=8463939552", 
		Function = function(p291, p292, p293)
			if p292 then
				return false;
			end;
			local v35 = p1.DoodleInfo[p291.Name];
			if v35.Evolve and v35.Evolve.Item and v35.Evolve.Item["Orb of Light"] then
				local v36 = true;
			else
				v36 = false;
			end;
			if not v36 then
				return (p291.Nickname or p291.Name) .. " cannot evolve using the Orb of Light!";
			end;
			if game:GetService("RunService"):IsServer() then
				p291:EvolveItem(p293, "Orb of Light");
				return true;
			end;
			return "Evolving " .. (p291.Nickname or p291.Name) .. "...", true;
		end
	};
	u1["Gold Capsule"] = {
		Description = "Use this on a wild Doodle to capture it. This capsule will never fail on a wild doodle.", 
		Target = "Capsule", 
		CaptureRate = "Gold", 
		Price = 50, 
		RobuxOnly = true, 
		DevProduct = 1251977223, 
		Category = "Capsules", 
		BattleOnly = true, 
		Color3 = Color3.fromRGB(255, 224, 79), 
		CapsuleName = "Gold", 
		Image = "http://www.roblox.com/asset/?id=10007156625", 
		Function = function(p294, p295, p296)

		end
	};
	u1["Striped Capsule"] = {
		Description = "Use this on a wild Doodle in an attempt to capture it. Has a higher chance to capture than Basic Capsules.", 
		Target = "Capsule", 
		CaptureRate = 1.5, 
		Price = 1000, 
		Category = "Capsules", 
		BattleOnly = true, 
		CapsuleName = "Striped", 
		Image = "http://www.roblox.com/asset/?id=10007174600", 
		Function = function(p297, p298, p299)

		end
	};
	u1["Dense Capsule"] = {
		Description = "Use this on a wild Doodle in an attempt to capture it. Has a higher chance to capture heavier Doodles.", 
		Target = "Capsule", 
		CaptureRate = 1, 
		Category = "Capsules", 
		Price = 1000, 
		BattleOnly = true, 
		CapsuleName = "Dense", 
		Image = "http://www.roblox.com/asset/?id=10006233658", 
		Color3 = Color3.fromRGB(51, 49, 49), 
		CatchModifer = function(p300)
			if not p300 then
				return 1;
			end;
			local v37 = p1.DoodleInfo[p300.Name];
			if v37.Weight < 30 then
				return 0.25;
			end;
			if v37.Weight < 80 then
				return 0.75;
			end;
			if v37.Weight < 130 then
				return 1.25;
			end;
			if v37.Weight < 180 then
				return 1.75;
			end;
			if v37.Weight < 230 then
				return 2.25;
			end;
			if v37.Weight < 280 then
				return 2.5;
			end;
			return 3;
		end
	};
	u1["Polkadot Capsule"] = {
		Description = "Use this on a wild Doodle in an attempt to capture it. Has a higher chance to capture than Striped Capsules.", 
		Target = "Capsule", 
		CaptureRate = 2, 
		Price = 2000, 
		Category = "Capsules", 
		BattleOnly = true, 
		CapsuleName = "Polkadot", 
		Image = "http://www.roblox.com/asset/?id=10006345035", 
		Color3 = Color3.fromRGB(224, 82, 86), 
		Function = function(p301, p302, p303)

		end
	};
	u1["Heart Capsule"] = {
		Description = "Use this on a wild Doodle in an attempt to capture it. Doodles caught in this capsule will become friendlier faster.", 
		Target = "Capsule", 
		CaptureRate = 1, 
		Category = "Capsules", 
		BattleOnly = true, 
		Price = 1000, 
		CapsuleName = "Heart", 
		Image = "http://www.roblox.com/asset/?id=10006572228", 
		Color3 = Color3.fromRGB(224, 82, 86), 
		AfterCaught = function(p304)
			p304.Friendship = 128;
		end
	};
	u1["Medical Capsule"] = {
		Description = "Use this on a wild Doodle in an attempt to capture it. After being captured, the Doodle's health is fully restored .", 
		Target = "Capsule", 
		CaptureRate = 1, 
		Category = "Capsules", 
		BattleOnly = true, 
		Price = 1000, 
		CapsuleName = "Medical", 
		Image = "http://www.roblox.com/asset/?id=10006436146", 
		Color3 = Color3.fromRGB(137, 203, 255), 
		AfterCaught = function(p305)
			p305:Heal();
		end
	};
	u1["Basic Capsule"] = {
		Description = "Use this on a wild Doodle in an attempt to capture it.", 
		Target = "Capsule", 
		CaptureRate = 1, 
		Price = 400, 
		Category = "Capsules", 
		BattleOnly = true, 
		CapsuleName = "Basic", 
		Image = "http://www.roblox.com/asset/?id=10007141516", 
		Function = function(p306, p307, p308)

		end
	};
	u1["Magical Banana"] = {
		Description = "Use this on a Doodle in battle to temporarily raise its magic attack.", 
		Target = "Out", 
		Price = 1000, 
		BattleOnly = true, 
		Category = "Items", 
		Color3 = Color3.fromRGB(0, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=5723459665", 
		Function = function(p309, p310, p311)
			p309.Boosts.matk = p309.Boosts.matk + 2;
			return true;
		end
	};
	u1["Power Banana"] = {
		Description = "Use this on a Doodle in battle to temporarily raise its attack.", 
		Target = "Out", 
		BattleOnly = true, 
		Price = 1000, 
		Category = "Items", 
		Color3 = Color3.fromRGB(255, 255, 0), 
		Image = "http://www.roblox.com/asset/?id=5723501902", 
		Function = function(p312, p313, p314)
			p312.Boosts.atk = p312.Boosts.atk + 2;
			return true;
		end
	};
	u1["Speed Soda"] = {
		Description = "Use this on a Doodle in battle to temporarily raise its speed.", 
		Target = "Out", 
		BattleOnly = true, 
		Price = 1000, 
		Category = "Items", 
		Color3 = Color3.fromRGB(0, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=5721610564", 
		Function = function(p315, p316, p317)
			p315.Boosts.spe = p315.Boosts.spe + 2;
			return true;
		end
	};
	u1["Defense Orange"] = {
		Description = "Use this on a Doodle in battle to temporarily raise its defense.", 
		Target = "Out", 
		BattleOnly = true, 
		Price = 1000, 
		Category = "Items", 
		Color3 = Color3.fromRGB(255, 85, 0), 
		Image = "http://www.roblox.com/asset/?id=5723467215", 
		Function = function(p318, p319, p320)
			p318.Boosts.def = p318.Boosts.def + 2;
			return true;
		end
	};
	u1["Resist Grapes"] = {
		Description = "Use this on a Doodle in battle to temporarily raise its magical defense.", 
		Target = "Out", 
		BattleOnly = true, 
		Price = 1000, 
		Category = "Items", 
		Color3 = Color3.fromRGB(170, 85, 255), 
		Image = "http://www.roblox.com/asset/?id=5721610847", 
		Function = function(p321, p322, p323)
			p321.Boosts.mdef = p321.Boosts.mdef + 2;
			return true;
		end
	};
	u1["Starry Glasses"] = {
		Description = "Give this item to a Doodle and when it gets sent out, identifies the stars the opponents have.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(250, 208, 86), 
		Image = "http://www.roblox.com/asset/?id=9443817615", 
		SendOut = function(p324, p325, p326)
			local v38 = "Stars";
			if p326.Star == 1 then
				v38 = "Star";
			end;
			p324:AddDialogue(p324.ActionList, "&DOODLENAME," .. p326.ID .. "&" .. " has " .. p326.Star .. " " .. v38 .. "!");
		end
	};
	u1.Glasses = {
		Description = "Give this item to a Doodle to improve its accuracy of all its moves by 20%.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(0, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=5721611157", 
		AttackModifier = function(p327, p328, p329, p330)
			if typeof(p330.Accuracy) == "number" then
				p330.Accuracy = math.floor(p330.Accuracy * 1.2);
			end;
		end
	};
	u1["Ice Pack"] = {
		Description = "Give this item to a Doodle to improve the damage of its Ice-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(84, 120, 201), 
		Image = "http://www.roblox.com/asset/?id=9136451114", 
		ModifyDamage = function(p331, p332, p333, p334)
			local v39 = 1;
			if p334.Type == "Ice" then
				v39 = 1.2;
			end;
			return v39;
		end
	};
	u1["Lucky Pebble"] = {
		Description = "Give this item to a Doodle to improve the damage of its Earth-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(84, 120, 201), 
		Image = "http://www.roblox.com/asset/?id=9135923816", 
		ModifyDamage = function(p335, p336, p337, p338)
			local v40 = 1;
			if p338.Type == "Earth" then
				v40 = 1.2;
			end;
			return v40;
		end
	};
	u1.Battery = {
		Description = "Give this item to a Doodle to improve the damage of its Spark-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(236, 201, 98), 
		Image = "http://www.roblox.com/asset/?id=9136628337", 
		ModifyDamage = function(p339, p340, p341, p342)
			local v41 = 1;
			if p342.Type == "Spark" then
				v41 = 1.2;
			end;
			return v41;
		end
	};
	u1["Delicate Wing"] = {
		Description = "Give this item to a Doodle to improve the damage of its Insect-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(133, 229, 248), 
		Image = "http://www.roblox.com/asset/?id=9927426456", 
		ModifyDamage = function(p343, p344, p345, p346)
			local v42 = 1;
			if p346.Type == "Insect" then
				v42 = 1.25;
			end;
			return v42;
		end
	};
	u1["Pretty Seashell"] = {
		Description = "Give this item to a Doodle to improve the damage of its Water-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(246, 199, 207), 
		Image = "http://www.roblox.com/asset/?id=9927650899", 
		ModifyDamage = function(p347, p348, p349, p350)
			local v43 = 1;
			if p350.Type == "Water" then
				v43 = 1.25;
			end;
			return v43;
		end
	};
	u1["Small Sprout"] = {
		Description = "Give this item to a Doodle to improve the damage of its Plant-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(118, 147, 68), 
		Image = "http://www.roblox.com/asset/?id=9927929408", 
		ModifyDamage = function(p351, p352, p353, p354)
			local v44 = 1;
			if p354.Type == "Plant" then
				v44 = 1.25;
			end;
			return v44;
		end
	};
	u1.Bubblegum = {
		Description = "Give this item to a Doodle to improve the damage of its Food-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(230, 104, 167), 
		Image = "http://www.roblox.com/asset/?id=9717440683", 
		ModifyDamage = function(p355, p356, p357, p358)
			local v45 = 1;
			if p358.Type == "Food" then
				v45 = 1.25;
			end;
			return v45;
		end
	};
	local v46 = {
		Description = "Give this item to a Doodle. At the end of each turn, it inflicts a burn on the user.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(250, 179, 66), 
		Image = "http://www.roblox.com/asset/?id=10006277376"
	};
	local l__InflictStatus__3 = l__Utilities__1.InflictStatus;
	function v46.EndTurn(p359, p360, p361)
		if p360.currenthp > 0 and p360.Status == nil then
			l__InflictStatus__3(p359, p360, p360, 100, "Burn", nil, "&DOODLENAME," .. p360.ID .. "& is holding a lighter!");
			p360.NoBurn = true;
			p360.NoExtra = true;
		end;
	end;
	u1.Lighter = v46;
	u1["Used Timber"] = {
		Description = "Give this item to a Doodle to improve the damage of its Fire-type attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(68, 47, 45), 
		Image = "http://www.roblox.com/asset/?id=9136096252", 
		ModifyDamage = function(p362, p363, p364, p365)
			local v47 = 1;
			if p365.Type == "Fire" then
				v47 = 1.25;
			end;
			return v47;
		end
	};
	u1["Champion Belt"] = {
		Description = "Give this item to a Doodle to improve its physical attacks.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(248, 196, 100), 
		Image = "http://www.roblox.com/asset/?id=6830108296", 
		ModifyDamage = function(p366, p367, p368, p369)
			local v48 = 1;
			if p369.Category == "Physical" then
				v48 = 1.1;
			end;
			return v48;
		end
	};
	u1["Determination Jelly"] = {
		Description = "Give this item to a Doodle. If they have full HP, the holder will survive an attack that would otherwise cause it to faint. This item is consumed after use.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(224, 84, 3), 
		Image = "http://www.roblox.com/asset/?id=7325471960", 
		DuringDamageCalc = function(p370, p371, p372, p373, p374)
			local v49 = false;
			if typeof(p374) == "number" and p374 > 0 and p372.Stats.hp <= p374 and p372.Stats.hp <= p372.currenthp then
				p370:AddDialogue(p370.ActionList, "&DOODLENAME," .. p372.ID .. "& held on thanks to its Determination Jelly!");
				p374 = p372.currenthp - 1;
				v49 = true;
				p372.HeldItem = nil;
			end;
			return p374, v49;
		end
	};
	u1["Determination Headband"] = {
		Description = "Give this item to a Doodle. The Doodle may survive attacks that would otherwise cause it to faint.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(193, 80, 58), 
		Image = "http://www.roblox.com/asset/?id=6832985197", 
		DuringDamageCalc = function(p375, p376, p377, p378, p379)
			local v50 = false;
			if typeof(p379) == "number" and p379 > 0 and math.random(1, 8) == 1 and p377.currenthp <= p379 then
				p375:AddDialogue(p375.ActionList, "&DOODLENAME," .. p377.ID .. "& held on thanks to its Determination!");
				p379 = p377.currenthp - 1;
				v50 = true;
			end;
			return p379, v50;
		end
	};
	u1.Grease = {
		Description = "Give this item to a Doodle to prevent it from getting trapped or wrapped", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(207, 187, 127), 
		Image = "http://www.roblox.com/asset/?id=9135977089", 
		Grease = true
	};
	u1["Used Crayons"] = {
		Description = "Give this item to a Doodle to have it restore a little bit of its health at the end of every turn.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=6852190534", 
		EndTurn = function(p380, p381, p382)
			if p381.currenthp > 0 and p381.currenthp < p381.Stats.hp then
				p380:TakeDamage(p381, -math.floor(p381.Stats.hp / 16));
				p380:AddDialogue(p380.ActionList, "&DOODLENAME," .. p381.ID .. "& restored health from its Used Crayons!");
			end;
		end
	};
	u1["Dark Chocolate"] = {
		Description = "Give this item to a Doodle. If they're a Food-type, they gain health at the end of each turn. If not, they take damage at the end of each turn.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(84, 54, 46), 
		Image = "http://www.roblox.com/asset/?id=10005745096", 
		EndTurn = function(p383, p384, p385)
			if p384.currenthp > 0 then
				if l__Utilities__1.IsType(p384, "Food") and p384.currenthp < p384.Stats.hp then
					p383:TakeDamage(p384, -math.floor(p384.Stats.hp / 16));
					p383:AddDialogue(p383.ActionList, "&DOODLENAME," .. p384.ID .. "& restored health from its Dark Chocolate!");
					return;
				end;
				if not l__Utilities__1.IsType(p384, "Food") then
					p383:TakeDamage(p384, (math.floor(p384.Stats.hp / 16)));
					p383:AddDialogue(p383.ActionList, "&DOODLENAME," .. p384.ID .. "& took damage from its Dark Chocolate!");
				end;
			end;
		end
	};
	u1.Espresso = {
		Description = "Give this item to a Doodle. This Doodle has a 25% chance to move first each turn.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(173, 104, 61), 
		Image = "http://www.roblox.com/asset/?id=10743059479", 
		Espresso = true
	};
	u1["Spiky Thorns"] = {
		Description = "Give this item to a Doodle. If the holder is hit with a contact move, the attacker will also be damaged.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(118, 103, 118), 
		Image = "http://www.roblox.com/asset/?id=10779923969", 
		OnHit = function(p386, p387, p388, p389)
			if p389.Contact then
				local v51 = math.floor(p388.Stats.hp / 6);
				if v51 > 0 then
					p386:TakeDamage(p388, v51);
					p386:AddDialogue(p386.ActionList, "&DOODLENAME," .. p387.ID .. "&" .. "'s Spiky Thorns hurt " .. "&DOODLENAME," .. p388.ID .. "&!");
				end;
			end;
		end
	};
	u1["Sickly Ooze"] = {
		Description = "Whenever this Doodle would inflict Poison, inflict Diseased instead.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(164, 182, 113), 
		Image = "http://www.roblox.com/asset/?id=10615712182", 
		StatusModifier = function(p390, p391, p392, p393, p394)
			if p393 ~= "Poison" then
				return p393, p394;
			end;
			return "Diseased", p394 * 2;
		end
	};
	u1["Cursed Cloak"] = {
		Description = "Give this item to a Doodle. Disables the use of Support moves, but boosts Magical Defense by 50%.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(190, 165, 213), 
		Image = "http://www.roblox.com/asset/?id=10651317784", 
		ModifyDefense = function(p395, p396, p397, p398, p399)
			if p399 == "mdef" then
				return 1.5;
			end;
			return 1;
		end
	};
	u1["Gold Laminate"] = {
		Description = "Give this item to a Doodle to preserve it, stopping it from evolving. If the Doodle is able to evolve, boost its Defense and Magical Defense by 50%.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(254, 241, 203), 
		Image = "http://www.roblox.com/asset/?id=10663681148", 
		NoEvolve = true, 
		ModifyDefense = function(p400, p401, p402, p403, p404)
			if p1.DoodleInfo[p402.RealName].Evolve then
				return 1.5;
			end;
			return 1;
		end
	};
	u1.Laminate = {
		Description = "Give this item to a Doodle to preserve it, stopping it from evolving.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(214, 216, 236), 
		Image = "http://www.roblox.com/asset/?id=10663680220", 
		NoEvolve = true
	};
	u1["Level-Down Cube"] = {
		Description = "When this item is used on a Doodle, the Doodle levels down.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Price = 200, 
		LevelupItem = true, 
		DontCloseImmediately = true, 
		Color3 = Color3.fromRGB(85, 111, 121), 
		Image = "http://www.roblox.com/asset/?id=9283898560", 
		Function = function(p405, p406, p407)
			if p406 then
				return false;
			end;
			if p405.Level <= 5 then
				return (p405.Nickname or p405.Name) .. " is too low level!";
			end;
			if game:GetService("RunService"):IsServer() then
				p405:LevelDown(p407, true, false, true);
				return true;
			end;
			return (p405.Nickname or p405.Name) .. " leveled down!", true, "Levelup";
		end
	};
	u1["Doodle Unlocker"] = {
		Description = "Lets you un-tradelock a Doodle obtained from using a Roulette ticket.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Price = 40, 
		RobuxOnly = true, 
		Unlocker = true, 
		DevProduct = 1305015576, 
		Color3 = Color3.fromRGB(237, 196, 105), 
		Image = "http://www.roblox.com/asset/?id=10736808597", 
		Function = function(p408, p409, p410)
			if p409 then
				return false;
			end;
			if p408.NR then
				return (p408.Nickname or p408.Name) .. " is your beginner Doodle!";
			end;
			if not p408.TL then
				return "You can't unlock " .. (p408.Nickname or p408.Name) .. ", they aren't trade locked!";
			end;
			if game:GetService("RunService"):IsServer() then
				p408:Unlock();
				return true;
			end;
			return (p408.Nickname or p408.Name) .. " was unlocked!", true, "Lockpick";
		end
	};
	u1["Level-Up Cube"] = {
		Description = "When this item is used on a Doodle, the Doodle levels up!", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Price = 20, 
		RobuxOnly = true, 
		LevelupItem = true, 
		DevProduct = 1197967011, 
		DontCloseImmediately = true, 
		Color3 = Color3.fromRGB(65, 29, 2), 
		Image = "http://www.roblox.com/asset/?id=8951230295", 
		Function = function(p411, p412, p413)
			if p412 then
				return false;
			end;
			local v52 = l__Utilities__1.LevelCap(p413);
			if v52 < p411.Level + 1 then
				return (p411.Nickname or p411.Name) .. " is already past the level cap (" .. v52 .. ")!";
			end;
			if game:GetService("RunService"):IsServer() then
				p411:Levelup(p413, true, false, true);
				return true;
			end;
			return (p411.Nickname or p411.Name) .. " leveled up!", true, "Levelup";
		end
	};
	u1["Speed Token"] = {
		Description = "Use this on a Doodle that doesn't have 6 stars to give them a bit more speed.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		LevelupItem = true, 
		Color3 = Color3.fromRGB(167, 215, 252), 
		Image = "http://www.roblox.com/asset/?id=10715266359", 
		Function = function(p414, p415, p416)
			if p415 then
				return false;
			end;
			if p414.NStar + p414.Star >= 6 then
				return "You can't use any more speed tokens on " .. (p414.Nickname or p414.Name) .. "!";
			end;
			if game:GetService("RunService"):IsServer() then
				p414:SpeedToken(p416);
				return true;
			end;
			return (p414.Nickname or p414.Name) .. " gained a little bit of speed!", true, "Levelup";
		end
	};
	u1["Silver Level-Up Cube"] = {
		Description = "When this item is used on a Doodle, the Doodle levels up three times!", 
		Type = "OverworldOnly", 
		LevelupItem = true, 
		Target = "Party", 
		Category = "Items", 
		DontCloseImmediately = true, 
		Color3 = Color3.fromRGB(208, 208, 208), 
		Image = "http://www.roblox.com/asset/?id=8951231016", 
		Function = function(p417, p418, p419)
			if p418 then
				return false;
			end;
			if l__Utilities__1.LevelCap(p419) < p417.Level + 3 then
				return (p417.Nickname or p417.Name) .. " is too high level...";
			end;
			if not game:GetService("RunService"):IsServer() then
				return (p417.Nickname or p417.Name) .. " leveled up thrice!", true, "Levelup";
			end;
			local v53 = p417:Levelup(p419, true, true, true, (p417:Levelup(p419, true, true, false, (p417:Levelup(p419, true, true, false, {})))));
			return true;
		end
	};
	u1["Master Cube"] = {
		Description = "[DEV ITEM] When this item is used on a Doodle, the Doodle levels up to 100!", 
		Type = "OverworldOnly", 
		LevelupItem = true, 
		Target = "Party", 
		Category = "Items", 
		DontCloseImmediately = true, 
		Color3 = Color3.fromRGB(120, 120, 120), 
		Image = "http://www.roblox.com/asset/?id=8962603595", 
		Function = function(p420, p421, p422, p423)
			if p421 then
				return false;
			end;
			if p420.Level >= 100 then
				return (p420.Nickname or p420.Name) .. " is already level 100!";
			end;
			if not game:GetService("RunService"):IsServer() then
				return (p420.Nickname or p420.Name) .. " is now level 100!", true, "Levelup";
			end;
			local v54 = {};
			local v55 = 100 - p420.Level;
			for v56 = 1, v55 do
				v54 = p420:Levelup(p422, true, true, v56 == v55, v54);
			end;
			return true;
		end
	};
	u1["Training Helper"] = {
		Description = "If this item is on, every Doodle in your party gets experience in each battle.", 
		Type = "Toggleable", 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=5755227686"
	};
	u1["Spectator Camera"] = {
		Description = "This camera allows you to spectate other people's battles.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=5786118191", 
		SpecialFunction = function(p424, p425)
			p425:Destroy();
			p424.SpectateBattle.new({});
		end
	};
	u1["Skin Trunk"] = {
		Description = "This leather briefcase lets you see all your un-equipped skins.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=8734085982", 
		SpecialFunction = function(p426, p427)
			p427.ItemUI.Visible = false;
			p426.SkinInventory.new({
				Bag = p427
			});
			p426.Talky.Visible = false;
		end
	};
	u1["Tally Counter"] = {
		Description = "Allows to see your current Doodle chain.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=6832985555", 
		SpecialFunction = function(p428, p429, p430)
			p428.Process = true;
			local v57, v58 = p428.ClientDatabase:PDSFunc("GetChain", false);
			local v59 = tonumber(string.format("%." .. 2 .. "f", (math.min(100, v58.Misprint * 100)))) .. "%";
			local v60 = tonumber(string.format("%." .. 2 .. "f", (math.min(100, v58.Skin * 100)))) .. "%";
			local v61 = tonumber(string.format("%." .. 2 .. "f", (math.min(100, v58.HT * 100)))) .. "%";
			if v58.Prestige then
				local v62 = "Yes";
			else
				v62 = "No";
			end;
			if v57.Name then
				if not p430 then
					p428.Gui:SayText("", v57.Name .. " chances at #" .. v57.Number .. ": Misprint chance: " .. v59 .. ". Skin chance: " .. v60 .. ". Hidden trait chance: " .. v61 .. ". Prestige unlocked: " .. v62 .. ".", nil, true);
				else
					p428.Gui:SayText("", v57.Name .. " chances at #" .. v57.Number .. ": Misprint chance: " .. v59 .. ". Skin chance: " .. v60 .. ". Hidden trait chance: " .. v61 .. ". Prestige unlocked: " .. v62 .. ". Chain to raise all these numbers!", nil, true);
				end;
			else
				p428.Gui:SayText("", "You are currently not chaining anything.", nil, true);
			end;
			p428.Talky.Visible = false;
			p428.Process = false;
		end
	};
	u1["Opal Orb"] = {
		Description = "An Opal Orb containing the soul of Craig. Also allows you to encounter Maelzuri in the Crystal Caverns.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(236, 232, 234), 
		Image = "http://www.roblox.com/asset/?id=9423140689", 
		SpecialFunction = function(p431, p432)
			p431.Process = true;
			p431.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p431.Talky.Visible = false;
			p431.Process = false;
		end
	};
	u1["Data Chip"] = {
		Description = "A data chip containing the blueprint of a mythical Doodle.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(135, 214, 191), 
		Image = "http://www.roblox.com/asset/?id=9983897528", 
		SpecialFunction = function(p433, p434)
			p433.Process = true;
			p433.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p433.Talky.Visible = false;
			p433.Process = false;
		end
	};
	u1["Choc Rocks"] = {
		Description = "A very addictive candy created by von Sweets.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(224, 129, 142), 
		Image = "http://www.roblox.com/asset/?id=9989773017", 
		SpecialFunction = function(p435, p436)
			p435.Process = true;
			p435.Gui:SayText("", "Better not consume this...", nil, true);
			p435.Talky.Visible = false;
			p435.Process = false;
		end
	};
	u1.Memento = {
		Description = "A memento from the good old days.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=7297929502", 
		SpecialFunction = function(p437, p438)
			p437.Process = true;
			p437.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p437.Talky.Visible = false;
			p437.Process = false;
		end
	};
	u1["Pristine Axe"] = {
		Description = "An axe used to chop down trees and wooden doors.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(131, 160, 183), 
		Image = "http://www.roblox.com/asset/?id=9552475405", 
		SpecialFunction = function(p439, p440)
			p439.Process = true;
			p439.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p439.Talky.Visible = false;
			p439.Process = false;
		end
	};
	u1["Money Trinket"] = {
		Description = "Allows you to get double money from tamer battles and help center requests.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=9145190706", 
		SpecialFunction = function(p441, p442)
			p441.Process = true;
			p441.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p441.Talky.Visible = false;
			p441.Process = false;
		end
	};
	u1["Magnifying Glass"] = {
		Description = "Allows you to view wild Doodle's stats.", 
		InfiniteUses = true, 
		Category = "Key Items", 
		BattleOnly = true, 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=9137034166", 
		LocalFunction = function(p443, p444)
			local l__Battle__63 = p444.Battle;
			if not l__Battle__63 then
				p443.Process = true;
				p443.Gui:SayText("", "There's a time and place for everything.", nil, true);
				p443.Talky.Visible = false;
				p443.Process = false;
				return;
			end;
			if l__Battle__63.BattleType ~= "Wild" then
				p443.Gui:SayText("", "You can only use the Magnifying Glass against Wild Doodles!", nil, true);
				p443.Talky.Visible = false;
				p443.Process = false;
				return;
			end;
			p444:Hide();
			local v64 = l__Battle__63.BattleData.Out2[1];
			v64.OriginalOwner = "Unknown";
			local v65 = {
				NoTamer = true, 
				NoMoveSwap = true, 
				Battle = l__Battle__63.BattleData
			};
			function v65.CloseFunc()
				p443.guiholder.MainBattle.Visible = true;
			end;
			p443.Stats.new(v65, v64);
		end
	};
	u1["Hidden Trait Trinket"] = {
		Description = "You are more likely to meet Doodles who have their hidden trait.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=9205213322", 
		SpecialFunction = function(p445, p446)
			p445.Process = true;
			p445.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p445.Talky.Visible = false;
			p445.Process = false;
		end
	};
	u1["Worn-Out Misprint Trinket"] = {
		Description = "You are more likely to meet misprinted Doodles. However, because it's worn out, the effect isn't as potent.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=9205804692", 
		SpecialFunction = function(p447, p448)
			p447.Process = true;
			p447.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p447.Talky.Visible = false;
			p447.Process = false;
		end
	};
	u1["Misprint Trinket"] = {
		Description = "You are more likely to meet misprinted Doodles.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=8964981590", 
		SpecialFunction = function(p449, p450)
			p449.Process = true;
			p449.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p449.Talky.Visible = false;
			p449.Process = false;
		end
	};
	u1["Worn-Out Mythical Trinket"] = {
		Description = "You are more likely to meet doodles of Legend. However, because it's worn out, the effect isn't as potent.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=9205534035", 
		SpecialFunction = function(p451, p452)
			p451.Process = true;
			p451.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p451.Talky.Visible = false;
			p451.Process = false;
		end
	};
	u1["Mythical Trinket"] = {
		Description = "You are more likely to meet doodles of Legend.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=9205212570", 
		SpecialFunction = function(p453, p454)
			p453.Process = true;
			p453.Gui:SayText("", "There's a time and place for everything.", nil, true);
			p453.Talky.Visible = false;
			p453.Process = false;
		end
	};
	u1["Equipment Case"] = {
		Description = "A case that holds all your equipment.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Key Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=7657468277", 
		SpecialFunction = function(p455, p456)
			p456.ItemUI.Visible = false;
			p455.Equip.new({
				Bag = p456, 
				ForcePage = "Helmet"
			});
			p455.Talky.Visible = false;
		end
	};
	local v66 = {
		Description = "You can use this item for a free Roulette spin! However, the Doodle you get will be trade-locked.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Color3 = Color3.fromRGB(29, 124, 212), 
		Image = "http://www.roblox.com/asset/?id=9407500752"
	};
	local u4 = false;
	function v66.NonPartyFunc(p457, p458)
		if u4 then
			return;
		end;
		u4 = true;
		if not p457.ClientDatabase:PDSFunc("IsMaximum") then
			p457.Sound:Play("BasicClick", 0.8);
			p458:Destroy();
			p457.ClientDatabase:PDSFunc("RouletteSpin", true);
		else
			p457.Gui:TextAnnouncement("You have no space for any more Doodles.");
		end;
		u4 = nil;
	end;
	u1["Roulette Ticket"] = v66;
	u1["Greater Chain Ticket"] = {
		Description = "You can use this item to increase your current chain by 50! If it's a Mythical Doodle, it will only increase by 5. (Not tradable)", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Price = 200, 
		RobuxOnly = true, 
		DevProduct = 1272071097, 
		Color3 = Color3.fromRGB(255, 213, 111), 
		Image = "http://www.roblox.com/asset/?id=9872855638", 
		NonPartyFunc = function(p459, p460)
			p459.Process = true;
			local v67, v68, v69 = p459.ClientDatabase:PDSFunc("ChainTicketString", "greater");
			if v68 then
				local v70 = p459.Dialogue:SaySimpleYesNo(v67);
				if v70 == "Yes" then
					p459.Network:BindEvent("AddChain", function(p461)
						p459.Network:UnbindEvent("AddChain");
						p460:Update(nil, p461);
					end);
					p459.Network:post("AddChain", "Greater Chain Ticket");
					p459.Gui:SayText("", v69, nil, true);
				elseif v70 == "No" then

				end;
			else
				p459.Gui:SayText("", "You don't have an active chain!", nil, true);
			end;
			p459.Talky.Visible = false;
			p459.Process = false;
		end
	};
	u1["Lesser Chain Ticket"] = {
		Description = "You can use this item to increase your current chain by 10! If it's a Mythical Doodle, it will only increase by 1. (Not tradable)", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Price = 40, 
		RobuxOnly = true, 
		DevProduct = 1272071098, 
		Color3 = Color3.fromRGB(74, 63, 131), 
		Image = "http://www.roblox.com/asset/?id=9872854717", 
		NonPartyFunc = function(p462, p463)
			p462.Process = true;
			local v71, v72, v73 = p462.ClientDatabase:PDSFunc("ChainTicketString", "lesser");
			if v72 then
				local v74 = p462.Dialogue:SaySimpleYesNo(v71);
				if v74 == "Yes" then
					p462.Network:BindEvent("AddChain", function(p464)
						p462.Network:UnbindEvent("AddChain");
						p463:Update(nil, p464);
					end);
					p462.Network:post("AddChain", "Lesser Chain Ticket");
					p462.Gui:SayText("", v73, nil, true);
				elseif v74 == "No" then

				end;
			else
				p462.Gui:SayText("", "You don't have an active chain!", nil, true);
			end;
			p462.Talky.Visible = false;
			p462.Process = false;
		end
	};
	u1["Stat Candy"] = {
		Description = "This item lets you change the stat bonuses of a Doodle.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Price = 1000, 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=8734086723", 
		StatCandy = true
	};
	u1["Candy Bag"] = {
		Description = "A candy bag with treats selected by Bonbon. Opening this bag gives you a random taffy and candy cube!", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Color3 = Color3.fromRGB(147, 119, 98), 
		Image = "http://www.roblox.com/asset/?id=9808177002", 
		NonPartyFunc = function(p465, p466)
			p465.Process = true;
			local u5 = nil;
			l__Utilities__1.FastSpawn(function()
				p465.Gui:SayText("", "Opening candy bag, please wait...", nil, true);
				u5 = true;
			end);
			local v75, v76, v77 = p465.ClientDatabase:PDSFunc("OpenCandyBag");
			while true do
				l__Utilities__1.Halt(0.05);
				if u5 then
					break;
				end;			
			end;
			if v75 then
				p466:Update(nil, v77, true);
				p465.Gui:SayText("", "You got 1 " .. v75 .. " and 1 " .. v76 .. " from the Candy Bag!", nil, true);
			else
				p465.Gui:SayText("", "Error.", nil, true);
			end;
			p465.Talky.Visible = false;
			p465.Process = false;
		end
	};
	u1["Hidden Trait Badge"] = {
		Description = "[DEV ITEM] Changes Doodle's Trait to Hidden Trait", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Color3 = Color3.fromRGB(208, 208, 208), 
		Image = "http://www.roblox.com/asset/?id=7244408626", 
		Function = function(p467, p468, p469)
			local v78 = nil;
			if p468 then
				return false;
			end;
			local v79 = p467.Nickname or p467.Name;
			if game:GetService("RunService"):IsServer() then
				return p467:ChangeAbility("Hidden");
			end;
			local v80 = p1.DoodleInfo[p467.Name];
			v78 = v80.HiddenAbility;
			if p467.Ability == v80.HiddenAbility then
				return v79 .. " already has its hidden trait (" .. v78 .. ")!";
			end;
			return v79 .. "'s trait changed to " .. v78 .. "!", true;
		end
	};
	u1["Trait Badge"] = {
		Description = "This badge allows you to swap a Doodle's trait.", 
		Type = "OverworldOnly", 
		Target = "Party", 
		Category = "Items", 
		Color3 = Color3.fromRGB(208, 208, 208), 
		Image = "http://www.roblox.com/asset/?id=6833202115", 
		Function = function(p470, p471, p472)
			if p471 then
				return false;
			end;
			local v81 = p470.Nickname or p470.Name;
			if game:GetService("RunService"):IsServer() then
				return p470:ChangeAbility();
			end;
			local v82 = p1.DoodleInfo[p470.Name];
			local l__Abilities__83 = v82.Abilities;
			local v84 = l__Abilities__83[1];
			if #l__Abilities__83 == 1 and p470.Ability == v82.HiddenAbility then
				v84 = l__Abilities__83[1];
			else
				if #l__Abilities__83 == 1 then
					return v81 .. " only has 1 normal trait.";
				end;
				if p470.Ability == l__Abilities__83[1] then
					v84 = l__Abilities__83[2];
				end;
			end;
			return v81 .. " changed trait to " .. v84 .. "!", true;
		end
	};
	u1["Friendship Ribbon"] = {
		Description = "A doodle holding this item becomes friendlier faster.", 
		Type = "HeldItem", 
		Category = "Held Items", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=6832984941", 
		FriendshipModifier = 2
	};
	u1.Scroll = {
		Description = "PLACEHOLDER TEXT - REPORT IF YOU CAN SEE THIS.", 
		Type = "OverworldOnly", 
		InfiniteUses = true, 
		Category = "Scrolls", 
		Color3 = Color3.fromRGB(255, 255, 255), 
		Image = "http://www.roblox.com/asset/?id=5806222018"
	};
	return u1;
end;
