-- Decompiled with the Synapse X Luau decompiler.

return function(p1)
	local l__Utilities__1 = p1.Utilities;
	local v2 = {
		["No ability"] = {
			Description = "no ability"
		}, 
		Moratorium = {
			Description = "When this Doodle's out, all Doodle's held items cannot be activated.", 
			Neutralize = true, 
			BeforeSendOut = function(p2, p3)
				p2:AddDialogue(p2.ActionList, "&DOODLENAME," .. p3.ID .. "&'s Moratorium made it so held items can't be activated!");
			end
		}, 
		Nullify = {
			Description = "When this Doodle's out, all Doodle's traits cannot be activated.", 
			Neutralize = true, 
			BeforeSendOut = function(p4, p5)
				p4:AddDialogue(p4.ActionList, "&DOODLENAME," .. p5.ID .. "& nullified all other traits!");
			end
		}, 
		Mimic = {
			Description = "When this Doodle is sent out, copies the opposing Doodle's trait.", 
			Neutralize = true, 
			SendOut = function(p6, p7, p8)
				if not (p8.currenthp > 0) or not p8.Ability or not (not table.find({ "Nullify", "Mimic" }, p8.Ability)) then
					return;
				end;
				p7.Ability = p8.Ability;
				p6:AddDialogue(p6.ActionList, "&DOODLENAME," .. p7.ID .. "&" .. " is mimicking " .. p8.Ability .. "!");
				return true;
			end
		}
	};
	local v3 = {
		Description = "Attacks that aren't the same type of this Doodle do 50% more damage, but are 20% less accurate."
	};
	function v3.ModifyDamage(p9, p10, p11, p12)
		if not l__Utilities__1:IsInTable(p12.Type, p10:GetData().Type) then
			return 1.3;
		end;
		return 1;
	end;
	function v3.AttackModifier(p13, p14, p15, p16)
		if not l__Utilities__1:IsInTable(p16.Type, p14:GetData().Type) and typeof(p16.Accuracy) == "number" then
			p16.Accuracy = p16.Accuracy * 0.8;
		end;
	end;
	v2.Savage = v3;
	v2["Hidden Strength"] = {
		Description = "Doubles this Doodle's Attack stat.", 
		DoubleAttack = true
	};
	v2.Gloomy = {
		Description = "Every Doodle's Dark-type moves do 30% more damage.", 
		ModifyDamageField = function(p17, p18, p19, p20)
			if p20.Type == "Dark" then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Spellcaster = {
		Description = "This Doodle\226\128\153s Spark, Fire, and Ice-type attacks do 25% more damage.", 
		ModifyDamage = function(p21, p22, p23, p24)
			if p24.Type ~= "Spark" and p24.Type ~= "Ice" and p24.Type ~= "Fire" then
				return 1;
			end;
			return 1.25;
		end
	};
	v2["Stabby Stabby"] = {
		Description = "This Doodle\226\128\153s Metal-type attacks do 30% more damage.", 
		ModifyDamage = function(p25, p26, p27, p28)
			if p28.Type == "Metal" then
				return 1.3;
			end;
			return 1;
		end
	};
	v2["Second Wind"] = {
		Description = "This Doodle has a 50% increased speed stat when they are below 25% health.", 
		ModifySpeed = function(p29, p30, p31)
			if not (p30.currenthp < p30.Stats.hp / 4) then
				return p31;
			end;
			return p31 + p31 * 0.5;
		end
	};
	v2.Vitality = {
		Description = "This Doodle has a 50% increased speed stat when they are over half health.", 
		ModifySpeed = function(p32, p33, p34)
			if not (p33.Stats.hp / 2 < p33.currenthp) then
				return p34;
			end;
			return p34 + p34 * 0.5;
		end
	};
	v2.Rush = {
		Description = "This Doodle has a 20% increased speed stat in battle.", 
		ModifySpeed = function(p35, p36, p37)
			return p37 + p37 * 0.2;
		end
	};
	local v4 = {
		Description = "When this Doodle uses a magical attack, they have a 20% chance to boost their magical attack."
	};
	local l__ChangeStats__1 = l__Utilities__1.ChangeStats;
	function v4.BattleFunc(p38, p39, p40, p41)
		if p41.Category == "Magical" then
			l__ChangeStats__1(p38, p39, p39, 20, {
				matk = 1
			});
		end;
	end;
	v2.Magician = v4;
	v2.Scorch = {
		Description = "When this Doodle uses a Fire-type attack, they have a 20% chance to boost their magical attack.", 
		BattleFunc = function(p42, p43, p44, p45)
			if p45.Type == "Fire" and p45.Category ~= "Passive" then
				l__ChangeStats__1(p42, p43, p43, 20, {
					matk = 1
				});
			end;
		end
	};
	v2.Scavenge = {
		Description = "At the end of every battle, you have a chance to pick up a random item."
	};
	v2.Puncture = {
		Description = "This Doodle\226\128\153s contact moves have a 30% chance to lower the target\226\128\153s defense.", 
		BattleFunc = function(p46, p47, p48, p49)
			if p49.Contact and p49.Category ~= "Passive" then
				l__ChangeStats__1(p46, p47, p48, 30, {
					def = -1
				});
			end;
		end
	};
	v2["Blinding Rocks"] = {
		Description = "When this Doodle uses an Earth-type attack, they have a 20% chance to lower the target\226\128\153s accuracy.", 
		BattleFunc = function(p50, p51, p52, p53)
			if p53.Type == "Earth" and p53.Category ~= "Passive" then
				l__ChangeStats__1(p50, p51, p52, 20, {
					acc = -1
				});
			end;
		end
	};
	v2["Oil Spill"] = {
		Description = "When this Doodle uses an Earth-type attack, they have a 50% chance to lower the target\226\128\153s speed.", 
		BattleFunc = function(p54, p55, p56, p57)
			if p57.Type == "Earth" and p57.Category ~= "Passive" then
				l__ChangeStats__1(p54, p55, p56, 50, {
					spe = -1
				});
			end;
		end
	};
	v2.Whimsical = {
		Description = "This Doodle boosts a random stat and lowers another at the end of each turn.", 
		EndTurn = function(p58, p59, p60)
			local v5 = { "atk", "def", "matk", "mdef", "spe", "acc", "eva" };
			local v6 = table.remove(v5, math.random(#v5));
			local v7 = table.remove(v5, math.random(#v5));
			if p59.Status ~= "Faint" then
				l__ChangeStats__1(p58, p59, p59, 100, {
					[v6] = 1
				});
				l__ChangeStats__1(p58, p59, p59, 100, {
					[v7] = -1
				});
			end;
		end
	};
	v2.Molt = {
		Description = "This Doodle has a 25% chance to cure their status condition at the end of each turn.", 
		EndTurn = function(p61, p62, p63)
			if p62.Status and p62.Status ~= "Faint" and math.random(1, 4) == 1 then
				p62.Status = nil;
				p61:AddDialogue(p61.ActionList, "&DOODLENAME," .. p62.ID .. "&" .. " molted its skin and cured its " .. p62.Status:lower() .. " status!");
				p61:AddAction(p61.ActionList, {
					Player = p62.Owner, 
					Doodle = p62, 
					Action = "StatusAnim", 
					Status = ""
				});
			end;
		end
	};
	v2.Accelerate = {
		Description = "This Doodle boosts their speed at the end of each turn.", 
		EndTurn = function(p64, p65, p66)
			if p65.currenthp > 0 then
				l__ChangeStats__1(p64, p65, p65, 100, {
					spe = 1
				});
			end;
		end
	};
	v2["Storm Surge"] = {
		Description = "If it\226\128\153s raining, this Doodle boosts their speed at the end of each turn.", 
		EndTurn = function(p67, p68, p69)
			if p68.currenthp > 0 and p67.Weather == "Rain" then
				l__ChangeStats__1(p67, p68, p68, 100, {
					spe = 1
				});
			end;
		end
	};
	v2["Foam Guard"] = {
		Description = "At the end of the turn, they summon a Bubble Shield that shoots a Waterbolt at any opposing Doodle that hits them with physical attack.", 
		WaterShield = true, 
		EndTurn = function(p70, p71, p72)
			p71.WaterShield = true;
			p71.OnHit = p71.OnHit or {};
			if not p71.OnHit.WaterShield then
				p70:AddDialogue(p70.ActionList, "&DOODLENAME," .. p71.ID .. "& is now surrounded by bubbles!");
				p71.OnHit.WaterShield = function(p73, p74, p75, p76)
					if p73:GetTraitInfo(p71).WaterShield and p71.WaterShield and p71.currenthp > 0 and p76.Category == "Physical" then
						p73:AddDialogue(p73.ActionList, "&DOODLENAME," .. p74.ID .. "&'s Foam Guard shoots a Waterbolt!");
						p73:UseMove(p74, { p75 }, "Waterbolt", true);
					end;
				end;
			end;
		end
	};
	v2.Firewall = {
		Description = "At the end of the turn, they summon a Flame Shield that shoots a Firebolt at any opposing Doodle that hits them with magical attack.", 
		Firewall = true, 
		EndTurn = function(p77, p78, p79)
			p78.FlameShield = true;
			p78.OnHit = p78.OnHit or {};
			if not p78.OnHit.FlameShield then
				p77:AddDialogue(p77.ActionList, "&DOODLENAME," .. p78.ID .. "& is now surrounded by a flame shield!");
				p78.OnHit.FlameShield = function(p80, p81, p82, p83)
					if p80:GetTraitInfo(p78).Firewall and p78.FlameShield and p78.currenthp > 0 and p83.Category == "Magical" and not p83.NoFirewall then
						p80:AddDialogue(p80.ActionList, "&DOODLENAME," .. p81.ID .. "&'s Flame Shield shoots a Fire Bolt!");
						p80:UseMove(p81, { p82 }, "FirewallFirebolt", true);
					end;
				end;
			end;
		end
	};
	v2.Parry = {
		Description = "This Doodle has a 10% chance to parry contact moves, avoiding damage.", 
		ModifyDefendDamage = function(p84, p85, p86, p87, p88, p89, p90)
			if p87.Contact and p87.Category == "Physical" and math.random(1, 100) > 90 and p90 == nil then
				p84:AddDialogue(p84.ActionList, "&DOODLENAME," .. p86.ID .. "& parried the attack!");
				return 0;
			end;
			return 1;
		end
	};
	v2["Royal Decree"] = {
		Description = "If another Doodle is faster, this Doodle takes 30% less damage from their attacks.", 
		ModifyDefendDamage = function(p91, p92, p93, p94, p95, p96, p97)
			if p93.Stats.spe < p92.Stats.spe then
				return 0.7;
			end;
			return 1;
		end
	};
	v2["Sharp Reflexes"] = {
		Description = "If another Doodle is slower, their attacks on this Doodle miss 15% more often.", 
		AccCalc = function(p98, p99, p100, p101)
			local v8 = p101;
			if typeof(v8) == "number" and v8 < 100 and p100.Stats.spe < p99.Stats.spe then
				v8 = v8 * 0.85;
			end;
			return v8;
		end
	};
	v2.Guilt = {
		Description = "When this Doodle is hit by an attack, lower the user's attack.", 
		OnHit = function(p102, p103, p104, p105)
			if p105.Category ~= "Passive" then
				p102:AddDialogue(p102.ActionList, "&DOODLENAME," .. p104.ID .. "&" .. " felt guilt attacking " .. "&DOODLENAME," .. p103.ID .. "&!");
				l__ChangeStats__1(p102, p103, p104, 100, {
					atk = -1
				});
			end;
		end
	};
	v2["Splintered Shards"] = {
		Description = "If this Doodle is hit with a damaging move, they do a little damage back.", 
		OnHit = function(p106, p107, p108, p109)
			local v9 = math.floor(p108.Stats.hp / 16);
			if v9 > 0 then
				p106:TakeDamage(p108, v9);
				p106:AddDialogue(p106.ActionList, "&DOODLENAME," .. p107.ID .. "&" .. "'s splintered shards hurt " .. "&DOODLENAME," .. p108.ID .. "&!");
			end;
		end
	};
	v2.Rugged = {
		Description = "If this Doodle is hit with a contact move, they do some damage back.", 
		OnHit = function(p110, p111, p112, p113)
			if p113.Contact then
				local v10 = math.floor(p112.Stats.hp / 8);
				if v10 > 0 then
					p110:TakeDamage(p112, v10);
					p110:AddDialogue(p110.ActionList, "&DOODLENAME," .. p111.ID .. "&" .. "'s rugged edges hurt " .. "&DOODLENAME," .. p112.ID .. "&!");
				end;
			end;
		end
	};
	v2.Retaliate = {
		Description = "If this Doodle is hit with a contact move, they do some damage back.", 
		OnHit = function(p114, p115, p116, p117)
			if p117.Contact then
				local v11 = math.floor(p116.Stats.hp / 8);
				if v11 > 0 then
					p114:TakeDamage(p116, v11);
					p114:AddDialogue(p114.ActionList, "&DOODLENAME," .. p115.ID .. "&" .. " hurt " .. "&DOODLENAME," .. p116.ID .. "&!");
				end;
			end;
		end
	};
	v2["Steam Guard"] = {
		Description = "If this Doodle is hit with a Water-type move, boost their evasion.", 
		OnHit = function(p118, p119, p120, p121)
			if p119.currenthp > 0 and p121.Type == "Water" then
				l__ChangeStats__1(p118, p119, p119, 100, {
					eva = 1
				});
			end;
		end
	};
	local v12 = {
		Description = "This Doodle\226\128\153s contact moves have a 20% chance to flinch."
	};
	local l__InflictStatus__2 = l__Utilities__1.InflictStatus;
	function v12.BattleFunc(p122, p123, p124, p125)
		if p125.Category ~= "Passive" and p125.Contact == true and p124.currenthp > 0 then
			l__InflictStatus__2(p122, p123, p124, 20, "Flinch", nil, AdditionalMsg);
		end;
	end;
	v2.Stinky = v12;
	v2.Kaleidoscope = {
		Description = "When this Doodle is sent out into battle, they lower the accuracy of opposing Doodles.", 
		BeforeSendOut = function(p126, p127)
			p126:AddDialogue(p126.ActionList, "&DOODLENAME," .. p127.ID .. "& emits a blinding light and tried to lower the other team's accuracy!");
		end, 
		SendOut = function(p128, p129, p130)
			l__ChangeStats__1(p128, p129, p130, 100, {
				acc = -1
			});
		end
	};
	v2.Deepfreeze = {
		Description = "This Doodle\226\128\153s moves have a 2x chance to freeze.", 
		StatusModifier = function(p131, p132, p133, p134, p135)
			if p134 ~= "Freeze" then
				return p134, p135;
			end;
			return p134, p135 * 2;
		end
	};
	v2.Contagion = {
		Description = "Whenever this Doodle would inflict Poison, inflict Diseased instead.", 
		StatusModifier = function(p136, p137, p138, p139, p140)
			if p139 ~= "Poison" then
				return p139, p140;
			end;
			return "Diseased", p140 * 2;
		end
	};
	v2.Kindling = {
		Description = "This Doodle\226\128\153s moves have a 2x chance to burn.", 
		StatusModifier = function(p141, p142, p143, p144, p145)
			if p144 ~= "Burn" then
				return p144, p145;
			end;
			return p144, p145 * 2;
		end
	};
	v2["First Degree Burns"] = {
		Description = "If an opposing Doodle is burned, they take double damage at the end of each turn.", 
		BurnModifier = true
	};
	v2["Strong Armor"] = {
		Description = "If this Doodle is hit with a contact move, boost their defense.", 
		OnHit = function(p146, p147, p148, p149)
			if p147.currenthp > 0 and p149.Contact then
				l__ChangeStats__1(p146, p147, p147, 100, {
					def = 1
				});
			end;
		end
	};
	v2.Cracked = {
		Description = "If this Doodle is hit with a physical move, lower their defense but greatly boost their speed.", 
		OnHit = function(p150, p151, p152, p153)
			if p151.currenthp > 0 and p153.Category == "Physical" then
				l__ChangeStats__1(p150, p151, p151, 100, {
					def = -1, 
					spe = 2
				});
			end;
		end
	};
	v2.Viscosity = {
		Description = "If this Doodle is hit with a contact move, they lower the attack and magical attack of the attacker.", 
		OnHit = function(p154, p155, p156, p157)
			if p157.Contact then
				l__ChangeStats__1(p154, p155, p156, 100, {
					atk = -1, 
					matk = -1
				});
			end;
		end
	};
	v2["Tar Body"] = {
		Description = "When this Doodle is hit with a contact move, they trap the user for three turns.", 
		OnHit = function(p158, p159, p160, p161)
			local v13 = p158:GetItemInfo(p160);
			if p161.Contact and p160.Trapped == nil then
				if not v13.Grease then
					p160.Trapped = 4;
					p160.TrappedBy = p159.ID;
					p158:AddDialogue(p158.ActionList, "&DOODLENAME," .. p160.ID .. "& becomes trapped due to Tar Body!");
					return;
				end;
			else
				return;
			end;
			p158:AddDialogue(p158.ActionList, "&DOODLENAME," .. p160.ID .. "& cannot be trapped due to Grease!");
		end
	};
	v2.Sticky = {
		Description = "If this Doodle is hit with a contact move, they lower the attacker\226\128\153s speed.", 
		OnHit = function(p162, p163, p164, p165)
			if p165.Contact then
				l__ChangeStats__1(p162, p163, p164, 100, {
					spe = -1
				});
			end;
		end
	};
	v2.Concentrated = {
		Description = "This Doodle's concentration is intense, preventing it from flinching.", 
		ImmuneStatus = { "Flinch" }, 
		StatusFunc = function(p166, p167, p168, p169, p170)
			if p169 ~= "Flinch" then
				return p169, p170;
			end;
			return "Flinch", 0, "&DOODLENAME," .. p168.ID .. "& is immune to flinching!";
		end
	};
	v2.Restless = {
		Description = "This Doodle can\226\128\153t fall asleep.", 
		ImmuneStatus = { "Sleep" }, 
		StatusFunc = function(p171, p172, p173, p174, p175)
			if p174 ~= "Sleep" then
				return p174, p175;
			end;
			local v14 = false;
			if p175 >= 100 then
				v14 = "&DOODLENAME," .. p173.ID .. "& can't fall asleep!";
			end;
			return "Sleep", 0, v14;
		end
	};
	v2.Nonchalant = {
		Description = "This Doodle does not rage or fall for taunts.", 
		ImmuneStatus = { "Rage" }, 
		ImmuneTaunt = true, 
		StatusFunc = function(p176, p177, p178, p179, p180)
			if p179 ~= "Rage" then
				return p179, p180;
			end;
			local v15 = nil;
			if p180 == 100 and p179.Name == "Rage" then
				v15 = "&DOODLENAME," .. p178.ID .. "& is immune to raging!";
			end;
			return p179, 0, v15;
		end
	};
	v2.Careless = {
		Description = "This Doodle can\226\128\153t be enraged or confused.", 
		ImmuneStatus = { "Confuse", "Rage" }, 
		StatusFunc = function(p181, p182, p183, p184, p185)
			if p184 ~= "Confuse" and p184 ~= "Rage" then
				return p184, p185;
			end;
			local v16 = nil;
			if p185 == 100 then
				if p184.Name == "Confuse" then
					v16 = "&DOODLENAME," .. p183.ID .. "& can't get confused!";
				elseif p184.Name == "Rage" then
					v16 = "&DOODLENAME," .. p183.ID .. "& is immune to raging!";
				end;
			end;
			return p184, 0, v16;
		end
	};
	v2["Bright Lights"] = {
		Description = "This Doodle is immune to Dark-type attacks.", 
		ModifyDefendDamage = function(p186, p187, p188, p189, p190, p191, p192)
			if p189.Type ~= "Dark" then
				return 1;
			end;
			if p192 == nil then
				p186:AddDialogue(p186.ActionList, "&DOODLENAME," .. p188.ID .. "& is immune to Dark-type attacks!");
			end;
			return 0;
		end
	};
	v2.Caliginous = {
		Description = "This Doodle is immune to Light-type attacks.", 
		ModifyDefendDamage = function(p193, p194, p195, p196, p197, p198, p199)
			if p196.Type ~= "Light" then
				return 1;
			end;
			if p199 == nil then
				p193:AddDialogue(p193.ActionList, "&DOODLENAME," .. p195.ID .. "& is immune to Light-type attacks!");
			end;
			return 0;
		end
	};
	v2.Dauntless = {
		Description = "If this Doodle has a status condition, they do 50% more magical damage.", 
		OverrideBurnModifier = true, 
		ModifyDamage = function(p200, p201, p202, p203)
			if p203.Category == "Magical" and p201.Status then
				return 1.5;
			end;
			return 1;
		end
	};
	v2["Fireproof Armor"] = {
		Description = "This Doodle takes half damage from Fire-type attacks.", 
		ModifyDefendDamage = function(p204, p205, p206, p207, p208, p209, p210)
			if p207.Type == "Fire" then
				return 0.5;
			end;
			return 1;
		end
	};
	v2["Pecking Order"] = {
		Description = "Lower power attacks do 25% less damage to this Doodle.", 
		ModifyDefendDamage = function(p211, p212, p213, p214, p215, p216, p217)
			if p214.Power and typeof(p214.Power) == "number" and p214.Power <= 60 then
				return 0.75;
			end;
			return 1;
		end
	};
	v2.Nitelite = {
		Description = "This Doodle takes 50% less damage from Dark-type attacks.", 
		ModifyDefendDamage = function(p218, p219, p220, p221, p222, p223, p224)
			if p221.Type == "Dark" then
				return 0.5;
			end;
			return 1;
		end
	};
	v2["Holy Water"] = {
		Description = "This Doodle restores 25% of their health after using a Water or Light-type support move.", 
		BattleFunc = function(p225, p226, p227, p228)
			if p228.Category == "Passive" and (p228.Type == "Water" or p228.Type == "Light") then
				local v17 = math.floor(p226.Stats.hp / 4);
				if v17 > 0 and p226.currenthp < p226.Stats.hp then
					p225:AddDialogue(p225.ActionList, "&DOODLENAME," .. p226.ID .. "& restored health!");
					p225:TakeDamage(p226, -v17);
				end;
			end;
		end
	};
	v2["Air Current"] = {
		Description = "This Doodle\226\128\153s Air-type attacks do 20% more damage when this Doodle is at full health.", 
		ModifyDamage = function(p229, p230, p231, p232)
			if p232.Type == "Air" and p230.currenthp == p230.Stats.hp then
				return 1.2;
			end;
			return 1;
		end
	};
	v2["Rubber Tissue"] = {
		Description = "This Doodle is immune to Spark-type attacks.", 
		ModifyDefendDamage = function(p233, p234, p235, p236, p237, p238, p239)
			if p236.Type ~= "Spark" then
				return 1;
			end;
			if p239 == nil then
				p233:AddDialogue(p233.ActionList, "&DOODLENAME," .. p235.ID .. "& is immune to Spark-type attacks!");
			end;
			return 0;
		end
	};
	v2.Adipose = {
		Description = "This Doodle takes half damage from Fire and Ice-type attacks.", 
		ModifyDefendDamage = function(p240, p241, p242, p243, p244, p245, p246)
			if p243.Type ~= "Fire" and p243.Type ~= "Ice" then
				return 1;
			end;
			return 0.5;
		end
	};
	v2["Edible Treat"] = {
		Description = "If this Doodle faints, they fully restore their ally\226\128\153s health.", 
		SendOut = function(p247, p248, p249, p250)
			p248.OnFaint = p248.OnFaint or {};
			p248.OnFaintTargets.EdibleTreat = "Ally";
			p248.EdibleTreat = true;
			if not p248.OnFaint.EdibleTreat then
				p248.OnFaint.EdibleTreat = function(p251, p252, p253)
					if p248.EdibleTreat and p251.Format == "Doubles" and p253.currenthp > 0 and p253.currenthp < p253.Stats.hp then
						p251:AddDialogue(p251.ActionList, "&DOODLENAME," .. p248.ID .. "&" .. " healed their ally, " .. "&DOODLENAME," .. p253.ID .. "&!");
						p251:TakeDamage(p253, -math.round(p248.Stats.hp));
					end;
				end;
			end;
		end
	};
	v2["Chemical Explosion"] = {
		Description = "If this Doodle faints, damages all opposing Doodles by 25% of their max health.", 
		SendOut = function(p254, p255, p256, p257)
			p255.OnFaint = p255.OnFaint or {};
			p255.OnFaintTargets.ChemicalExplosion = "AllFoes";
			p255.ChemicalExplosion = true;
			if not p255.OnFaint.ChemicalExplosion then
				p255.OnFaint.ChemicalExplosion = function(p258, p259, p260)
					if p255.ChemicalExplosion then
						p258:AddDialogue(p258.ActionList, "&DOODLENAME," .. p255.ID .. "& exploded!");
						p258:TakeDamage(p260, math.floor(p260.Stats.hp / 4), nil, nil, true);
						p258:CheckFaint();
					end;
				end;
			end;
		end
	};
	v2["Balloon Pop"] = {
		Description = "If this Doodle faints, they lower the attack, magical attack, and speed of opposing Doodles.", 
		SendOut = function(p261, p262, p263, p264)
			p262.OnFaint = p262.OnFaint or {};
			p262.OnFaintTargets.BalloonPop = "AllFoes";
			p262.BalloonPop = true;
			if not p262.OnFaint.BalloonPop then
				p262.OnFaint.BalloonPop = function(p265, p266, p267)
					if p262.BalloonPop and p267.currenthp > 0 then
						p265:AddDialogue(p265.ActionList, "&DOODLENAME," .. p262.ID .. "& made a balloon popping noise!");
						l__ChangeStats__1(p265, p266, p267, 100, {
							matk = -1, 
							spe = -1, 
							atk = -1
						});
					end;
				end;
			end;
		end
	};
	v2.Stormwater = {
		Description = "If this Doodle is hit with a Water-type move, boost their magical attack.", 
		OnHit = function(p268, p269, p270, p271)
			if p269.currenthp > 0 and p271.Type == "Water" then
				l__ChangeStats__1(p268, p269, p269, 100, {
					matk = 1
				});
			end;
		end
	};
	v2.Tangled = {
		Description = "When this Doodle uses a Plant-type attack, they trap the target for three turns.", 
		BattleFunc = function(p272, p273, p274, p275)
			local v18 = p272:GetItemInfo(p274);
			if p275.Type == "Plant" and p274.Trapped == nil then
				if not v18.Grease then
					p274.Trapped = 4;
					p274.TrappedBy = p273.ID;
					p272:AddDialogue(p272.ActionList, "&DOODLENAME," .. p274.ID .. "& is trapped!");
					return;
				end;
			else
				return;
			end;
			p272:AddDialogue(p272.ActionList, "&DOODLENAME," .. p274.ID .. "& cannot be trapped due to Grease!");
		end
	};
	v2.Courteous = {
		Description = "This Doodle takes 25% less damage from high powered attacks, and this Doodle does 25% less damage with high powered attacks.", 
		ModifyDamage = function(p276, p277, p278, p279)
			if typeof(p279.Power) == "number" and p279.Power >= 100 then
				return 0.75;
			end;
			return 1;
		end, 
		ModifyDefendDamage = function(p280, p281, p282, p283, p284, p285, p286)
			if typeof(p283.Power) == "number" and p283.Power >= 100 then
				return 0.75;
			end;
			return 1;
		end
	};
	v2["Hard Candy"] = {
		Description = "When this Doodle uses a Food-type attack, they have a 50% chance to boost their defense.", 
		BattleFunc = function(p287, p288, p289, p290)
			if p290.Type == "Food" then
				l__ChangeStats__1(p287, p288, p288, 50, {
					def = 1
				});
			end;
		end
	};
	v2.Botulism = {
		Description = "This Doodle\226\128\153s Food-type attacks have a 30% chance to poison.", 
		BattleFunc = function(p291, p292, p293, p294)
			if p294.Category ~= "Passive" and p294.Type == "Food" and p293.currenthp > 0 then
				l__InflictStatus__2(p291, p292, p293, 30, "Poison", nil, "&DOODLENAME," .. p293.ID .. "&" .. " became poisoned because of " .. "&DOODLENAME," .. p292.ID .. "&' Botulism!");
			end;
		end
	};
	v2.Arsonist = {
		Description = "This Doodle\226\128\153s attacks have a 20% chance to burn.", 
		BattleFunc = function(p295, p296, p297, p298)
			if p298.Category ~= "Passive" and p297.currenthp > 0 then
				l__InflictStatus__2(p295, p296, p297, 20, "Burn", nil, "&DOODLENAME," .. p297.ID .. "&" .. " became burned because of " .. "&DOODLENAME," .. p296.ID .. "&' Arsonist!");
			end;
		end
	};
	v2["Mark Territory"] = {
		Description = "This Doodle\226\128\153s Beast-type attacks have a 50% chance to mark the target.", 
		BattleFunc = function(p299, p300, p301, p302)
			if p302.Type == "Beast" and p302.Category ~= "Passive" and p301.currenthp > 0 then
				l__InflictStatus__2(p299, p300, p301, 50, "Marked", nil, "&DOODLENAME," .. p301.ID .. "&" .. " became marked because of " .. "&DOODLENAME," .. p300.ID .. "&'s Mark Territory!");
			end;
		end
	};
	v2["Virulent Venom"] = {
		Description = "This Doodle\226\128\153s attacks have a 20% chance to poison.", 
		BattleFunc = function(p303, p304, p305, p306)
			if p306.Category ~= "Passive" and p305.currenthp > 0 then
				l__InflictStatus__2(p303, p304, p305, 20, "Poison", nil, "&DOODLENAME," .. p305.ID .. "&" .. " became poisoned because of " .. "&DOODLENAME," .. p304.ID .. "&'s Virulent Venom!");
			end;
		end
	};
	v2["Time Paralysis"] = {
		Description = "This Doodle\226\128\153s attacks have a 10% chance to paralyze.", 
		BattleFunc = function(p307, p308, p309, p310)
			if p310.Category ~= "Passive" and p309.currenthp > 0 and not l__Utilities__1.IsType(p309, "Earth") then
				l__InflictStatus__2(p307, p308, p309, 10, "Paralysis", nil, "&DOODLENAME," .. p309.ID .. "&" .. " became paralyzed because of " .. "&DOODLENAME," .. p308.ID .. "&'s Time Paralysis!");
			end;
		end
	};
	v2["Mind Control"] = {
		Description = "This Doodle\226\128\153s attacks have a 10% chance to enrage the target.", 
		BattleFunc = function(p311, p312, p313, p314)
			if p314.Category ~= "Passive" and p313.currenthp > 0 then
				l__InflictStatus__2(p311, p312, p313, 10, "Rage", nil, "&DOODLENAME," .. p313.ID .. "&" .. " is now angry because of " .. "&DOODLENAME," .. p312.ID .. "&'s Mind Control!");
			end;
		end
	};
	v2["Dust Dash"] = {
		Description = "This Doodle's speed is doubled during Sandstorm.", 
		ModifySpeed = function(p315, p316, p317)
			if p315.Weather ~= "Sandstorm" then
				return p317;
			end;
			return p317 * 2;
		end
	};
	v2["Scarf Down"] = {
		Description = "This Doodle's speed is doubled during Chocolate Rain.", 
		ModifySpeed = function(p318, p319, p320)
			if p318.Weather ~= "Chocolate Rain" then
				return p320;
			end;
			return p320 * 2;
		end
	};
	v2.Snailspeed = {
		Description = "In battle, this Doodle's speed is set to 1.", 
		ModifySpeed = function(p321, p322, p323)
			return 1;
		end
	};
	v2["Time Stop"] = {
		Description = "This Doodle always strikes first.", 
		PrioritySet = function(p324, p325, p326, p327)
			return p327 + 1;
		end
	};
	v2.Durable = {
		Description = "This Doodle can't be knocked out in one hit if they are at full health.", 
		DuringDamageCalc = function(p328, p329, p330, p331, p332)
			if typeof(p332) == "number" and p332 > 0 and p330.Stats.hp <= p332 and p330.Stats.hp <= p330.currenthp then
				p328:AddDialogue(p328.ActionList, "&DOODLENAME," .. p330.ID .. "& held on thanks to its Durable trait!");
				p332 = p330.Stats.hp - 1;
			end;
			return p332;
		end
	};
	v2.Fortified = {
		Description = "This Doodle is immune to critical hits.", 
		NoCrits = true
	};
	v2.Precise = {
		Description = "This Doodle is more likely to critical hit.", 
		CritApply = true
	};
	v2.Chlorokinesis = {
		Description = " If this Doodle is hit with a Plant-type attack, their next Mind-type attack does double damage.", 
		Chlorokinesis = true, 
		SendOut = function(p333, p334, p335, p336)
			p334.Chlorokinesis = true;
			p334.OnHit = p334.OnHit or {};
			p334.OnHit.Chlorokinesis = function(p337, p338, p339, p340)
				if p337:GetTraitInfo(p334).Chlorokinesis and p334.Chlorokinesis and p334.currenthp > 0 and p340.Type == "Grass" then
					p337:AddDialogue(p337.ActionList, "&DOODLENAME," .. p334.ID .. "&'s next Mind-type attack is boosted!");
					p337.BuffNextDamage = "Mind";
				end;
			end;
		end
	};
	v2.Crispy = {
		Description = "This Doodle does 75% more damage while burned, but takes 25% damage from burn at the end of each turn.", 
		OverrideBurnModifier = true, 
		Crispy = true, 
		ModifyDamage = function(p341, p342, p343, p344)
			if p342.Status == "Burn" then
				return 1.75;
			end;
			return 1;
		end
	};
	v2["True Power"] = {
		Description = "When this Doodle is at low health, they do double damage.", 
		ModifyDamage = function(p345, p346, p347, p348)
			if p346.currenthp < p346.Stats.hp / 4 then
				return 2;
			end;
			return 1;
		end
	};
	v2.Stonefaced = {
		Description = "This Doodle\226\128\153s stats can\226\128\153t be lowered by other Doodles.", 
		NoStatLower = true
	};
	v2["Fire Up"] = {
		Description = "This Doodle's Fire-type moves become boosted if it's hit by one. They are also immune to Fire-type moves.", 
		DuringDamageCalc = function(p349, p350, p351, p352, p353)
			if (p353 == "Passive" or p353 > 0) and p350 ~= p351 and p352.Type == "Fire" then
				p353 = 0;
				p349:AddDialogue(p349.ActionList, "&DOODLENAME," .. p351.ID .. "& absorbed the Fire-type attack!");
				if not p351.FireUp then
					p351.FireUp = true;
					p349:AddDialogue(p349.ActionList, "&DOODLENAME," .. p351.ID .. "&'s Fire-type attacks became stronger!");
				end;
			end;
			return p353;
		end
	};
	v2.Conductor = {
		Description = "This Doodle's magical attack is boosted if hit by a Spark-type attack. They are also immune to Spark-type moves.", 
		DuringDamageCalc = function(p354, p355, p356, p357, p358)
			if (p358 == "Passive" or p358 > 0) and p355 ~= p356 and p357.Type == "Spark" then
				p358 = 0;
				p354:AddDialogue(p354.ActionList, "&DOODLENAME," .. p356.ID .. "& absorbed the Spark-type attack!");
				l__ChangeStats__1(p354, p356, p356, 100, {
					matk = 1
				});
			end;
			return p358;
		end, 
		ImmuneStatus = { "Paralysis" }
	};
	v2.Levitate = {
		Description = "This Doodle is immune to damaging Earth-type attacks.", 
		Levitate = true, 
		DuringDamageCalc = function(p359, p360, p361, p362, p363)
			if typeof(p363) == "number" and p363 > 0 and p360 ~= p361 and p362.Type == "Earth" then
				p363 = 0;
				p359:AddDialogue(p359.ActionList, "&DOODLENAME," .. p361.ID .. "& made the Earth-type move miss because of Levitate!");
			end;
			return p363;
		end
	};
	v2["Water Absorb"] = {
		Description = "This Doodle restores health if hit by a Water-type move instead of taking damage.", 
		DuringDamageCalc = function(p364, p365, p366, p367, p368)
			if (p368 == "Passive" or p368 > 0) and p365 ~= p366 and p367.Type == "Water" then
				p368 = 0;
				p364:AddDialogue(p364.ActionList, "&DOODLENAME," .. p366.ID .. "& absorbed the Water-type attack!");
				if p366.currenthp < p366.Stats.hp then
					p364:TakeDamage(p366, -math.floor(p366.Stats.hp / 2));
					p364:AddDialogue(p364.ActionList, "&DOODLENAME," .. p366.ID .. "& restored health!");
				end;
			end;
			return p368;
		end
	};
	v2["Poison Absorb"] = {
		Description = "This Doodle restores health if hit by a Poison-type move instead of taking damage.", 
		ImmuneStatus = { "Poison", "Diseased" }, 
		DuringDamageCalc = function(p369, p370, p371, p372, p373)
			if (p373 == "Passive" or p373 > 0) and p370 ~= p371 and p372.Type == "Poison" then
				p373 = 0;
				p369:AddDialogue(p369.ActionList, "&DOODLENAME," .. p371.ID .. "& absorbed the Poison-type attack!");
				if p371.currenthp < p371.Stats.hp then
					p369:TakeDamage(p371, -math.floor(p371.Stats.hp / 2));
					p369:AddDialogue(p369.ActionList, "&DOODLENAME," .. p371.ID .. "& restored health!");
				end;
			end;
			return p373;
		end
	};
	v2["Trump Card"] = {
		Description = "If this Doodle has a status condition, they do 50% more physical damage.", 
		OverrideBurnModifier = true, 
		ModifyDamage = function(p374, p375, p376, p377)
			if p377.Category == "Physical" and p375.Status then
				return 1.5;
			end;
			return 1;
		end
	};
	v2.Opportunist = {
		Description = "This Doodle does 25% more damage to targets with a status condition.", 
		ModifyDamage = function(p378, p379, p380, p381)
			if p380.Status then
				return 1.25;
			end;
			return 1;
		end
	};
	v2.Chanting = {
		Description = "This Doodle\226\128\153s sound-based moves do more damage when used consecutively.", 
		ModifyDamage = function(p382, p383, p384, p385)
			if not p385.Sound then
				return 1;
			end;
			return p383.ChantingMultiplier and 1;
		end, 
		BattleFunc = function(p386, p387, p388, p389)
			if p389.Sound then
				p387.ChantingMultiplier = p387.ChantingMultiplier and 1;
				p387.ChantingMultiplier = math.min(1.5, p387.ChantingMultiplier + 0.1);
			end;
		end
	};
	v2.Serenade = {
		Description = "This Doodle\226\128\153s sound-based moves have a 10% chance to make the target fall asleep.", 
		BattleFunc = function(p390, p391, p392, p393)
			if p393.Sound and p393.Category ~= "Passive" and p391 ~= p392 then
				l__InflictStatus__2(p390, p391, p392, 10, "Sleep", nil, "&DOODLENAME," .. p392.ID .. "&" .. " was put to sleep because of " .. "&DOODLENAME," .. p391.ID .. "&'s Serenade!");
			end;
		end
	};
	v2["Sand Surge"] = {
		Description = "This Doodle\226\128\153s attacks do 30% more damage while there is a sandstorm.", 
		ModifyDamage = function(p394, p395, p396, p397)
			if p394.Weather == "Sandstorm" then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Galvanize = {
		Description = "This Doodle\226\128\153s Basic-type moves become Spark-type, and do 30% more damage.", 
		ModifyDamage = function(p398, p399, p400, p401)
			if p401.Type ~= "Basic" then
				return 1;
			end;
			p401.Type = "Spark";
			return 1.3;
		end
	};
	v2.Routine = {
		Description = "Attack moves that are the same type as this Doodle do 50% more damage.", 
		BetterSTAB = true
	};
	v2["Jelly Enhancer"] = {
		Description = "This Doodle enhances the effects of jellies it is holding.", 
		BetterJelly = true
	};
	v2["Jelly Lover"] = {
		Description = "This Doodle has a 50% chance to create another jelly after they consume one.", 
		EndTurn = function(p402, p403)
			if math.random(1, 2) == 1 and p403.HeldItem == nil and p403.Doodle.HeldItem and (p403.Doodle.HeldItem:find("Jelly") and not p403.NoRegen) then
				local l__HeldItem__19 = p403.Doodle.HeldItem;
				p402:AddDialogue(p402.ActionList, "&DOODLENAME," .. p403.ID .. "&" .. "'s Jelly Lover created another " .. l__HeldItem__19 .. "!");
				p403.HeldItem = l__HeldItem__19;
			end;
		end
	};
	v2.Apparition = {
		Description = "This Doodle\226\128\153s sound-based moves become Spirit-type.", 
		ModifyDamage = function(p404, p405, p406, p407)
			if p407.Sound then
				p407.Type = "Spirit";
			end;
			return 1;
		end
	};
	v2.Hypothermia = {
		Description = "If an opposing Doodle is frozen, they take damage at the end of each turn.", 
		EndTurnSpecific = function(p408, p409, p410)
			if p409.currenthp > 0 and p410.Status == "Frozen" then
				p408:TakeDamage(p410, (math.floor(p410.Stats.hp / 8)));
				p408:AddDialogue(p408.ActionList, "&DOODLENAME," .. p410.ID .. "&" .. " took damage from " .. "&DOODLENAME," .. p409.ID .. "&'s Hypothermia!");
			end;
		end
	};
	v2.Stitching = {
		Description = "This Doodle restores some health after getting hit with a contact move.", 
		OnHit = function(p411, p412, p413, p414)
			if p412.currenthp > 0 and p412.currenthp < p412.Stats.hp and p414.Contact then
				p411:TakeDamage(p412, -math.floor(p412.Stats.hp / 16));
				p411:AddDialogue(p411.ActionList, "&DOODLENAME," .. p412.ID .. "& restored health from its Stitching!");
			end;
		end
	};
	v2["Caloric Deficit"] = {
		Description = "This Doodle\226\128\153s Food-type moves do 30% more damage, but at the cost of health.", 
		ModifyDamage = function(p415, p416, p417, p418)
			if p418.Type == "Food" then
				return 1.3;
			end;
			return 1;
		end, 
		BattleFunc = function(p419, p420, p421, p422)
			if p422.Category ~= "Passive" and p422.Type == "Food" then
				p419:TakeDamage(p420, (math.floor(p420.Stats.hp / 8)));
				p419:AddDialogue(p419.ActionList, "&DOODLENAME," .. p420.ID .. "& lost health!");
			end;
		end
	};
	v2.Spool = {
		Description = "This Doodle\226\128\153s Basic-type moves do more damage, but at the cost of health.", 
		ModifyDamage = function(p423, p424, p425, p426)
			if p426.Type == "Basic" then
				return 1.2;
			end;
			return 1;
		end, 
		BattleFunc = function(p427, p428, p429, p430)
			if p430.Category ~= "Passive" and p430.Type == "Basic" then
				p427:TakeDamage(p428, (math.floor(p428.Stats.hp / 8)));
				p427:AddDialogue(p427.ActionList, "&DOODLENAME," .. p428.ID .. "& lost health!");
			end;
		end
	};
	local v20 = {
		Description = "When this doodle is sent out, create a temporary wind barrier that boosts allies' speed for 5 turns.", 
		Target = "Side"
	};
	function v20.SendOut(p431, p432, p433)
		if not p431:GetSideFromDoodle(p433).Sylphid then
			p431:AddDialogue(p431.ActionList, "&DOODLENAME," .. p432.ID .. "& creates a wind barrier!");
			p1.Database.Moves.Sylphid.BattleFunc(p431, p432, p432);
		end;
	end;
	v2["Wind's Favor"] = v20;
	v2.Refresh = {
		Description = "When this doodle is sent out, they heal themselves for 30% of their health total.", 
		Target = "Side", 
		SendOut = function(p434, p435, p436)
			if p435.currenthp > 0 then
				local v21 = math.floor(p435.Stats.hp * 0.3);
				p434:AddDialogue(p434.ActionList, "&DOODLENAME," .. p435.ID .. "& refreshed some of their health!");
				p434:TakeDamage(p435, -v21);
			end;
		end
	};
	v2.Crystalline = {
		Description = "When this doodle is sent out, create a temporary crystal wall that halves the opponent's physical damage.", 
		Target = "Side", 
		SendOut = function(p437, p438, p439)
			if not p437:GetSideFromDoodle(p439).CrystalWall then
				p437:AddDialogue(p437.ActionList, "&DOODLENAME," .. p438.ID .. "& creates a Crystal Wall!");
				p1.Database.Moves["Crystal Wall"].BattleFunc(p437, p438, p438);
			end;
		end
	};
	v2.Ugly = {
		Description = "When this doodle is sent out, taunt all opponents for 1 turn. Taunted opponents can't use Support moves.", 
		BeforeSendOut = function(p440, p441)
			p440:AddDialogue(p440.ActionList, "&DOODLENAME," .. p441.ID .. "& is very ugly!");
		end, 
		SendOut = function(p442, p443, p444)
			if not p444.Taunt then
				p1.Database.Moves.Taunt.BattleFunc(p442, p443, p444, nil, {
					Turns = 1
				});
			end;
		end
	};
	v2["Chocolate Drizzle"] = {
		Description = "When this Doodle is sent out into battle, they summon Chocolate Rain.", 
		SendOut = function(p445, p446, p447)
			if p445.Weather ~= "Chocolate Rain" then
				p1.Database.Moves["Chocolate Rain"].BattleFunc(p445, p446, p446);
			end;
		end
	};
	v2["Poison Precipitation"] = {
		Description = "When this Doodle is sent out into battle, they summon Acid Rain.", 
		SendOut = function(p448, p449, p450)
			if p448.Weather ~= "Acid Rain" then
				p1.Database.Moves["Acid Rain"].BattleFunc(p448, p449, p449);
			end;
		end
	};
	v2["Dust Storm"] = {
		Description = "When this Doodle is sent out into battle, they summon Sandstorm.", 
		SendOut = function(p451, p452, p453)
			if p451.Weather ~= "Sandstorm" then
				p1.Database.Moves.Sandstorm.BattleFunc(p451, p452, p452);
			end;
		end
	};
	v2["Sand Screen"] = {
		Description = "During a Sandstorm, this Doodle takes half damage from all attacks.", 
		ModifyDefendDamage = function(p454, p455, p456, p457, p458, p459, p460)
			if p454.Weather == "Sandstorm" then
				return 0.5;
			end;
			return 1;
		end
	};
	v2["Spell Shield"] = {
		Description = "This Doodle takes half damage from magical attacks.", 
		Target = "Side", 
		ModifyDefendDamage = function(p461, p462, p463, p464, p465, p466, p467)
			if p464.Category == "Magical" then
				return 0.5;
			end;
			return 1;
		end
	};
	v2.Relentless = {
		Description = "This Doodle's speed can't be lowered.", 
		PreventStatDisable = { "spe" }
	};
	v2.Arid = {
		Description = "If it\226\128\153s raining when this Doodle is sent out into battle, it stops raining.", 
		SendOut = function(p468, p469, p470)
			if p468.Weather == "Acid Rain" or p468.Weather == "Rain" or p468.Weather == "Chocolate Rain" then
				p468:AddDialogue(p468.ActionList, "&DOODLENAME," .. p469.ID .. "&'s Arid trait made it stop raining!");
				p468:AddDialogue(p468.ActionList, "The rain stopped.");
				p468.Weather = nil;
				p468.WeatherTurns = 0;
				p468:AddAction(p468.ActionList, {
					Action = "StopWeather"
				});
			end;
		end
	};
	v2.Corrosion = {
		Description = "When this Doodle is sent out into battle, they clear a random entry hazard from your side of the field.", 
		Target = "Side", 
		SendOut = function(p471, p472, p473)
			local v22 = p471:GetOppositeSideFromDoodle(p473);
			local v23 = {};
			local v24 = {
				YarnSnare = "Yarn Snare", 
				EntanglingVines = "Entangling Vines"
			};
			if v22.EntryHazards then
				for v25, v26 in pairs(v22.EntryHazards) do
					if v24[v25] then
						table.insert(v23, v25);
					end;
				end;
			end;
			if #v23 > 0 then
				local v27 = v23[math.random(#v23)];
				v22.EntryHazards[v27] = nil;
				p471:AddDialogue(p471.ActionList, "&DOODLENAME," .. p472.ID .. "&" .. "'s Corrosion destroyed the enemy's " .. v24[v27] .. "!");
			end;
		end
	};
	v2.Unraveling = {
		Description = "If this Doodle is hit with a super effective attack, boost their speed.", 
		OnHit = function(p474, p475, p476, p477)
			if p475.currenthp > 0 and p1.Database.Typings:GetEffectiveness(p476, p475, p477.Type) > 1 then
				l__ChangeStats__1(p474, p475, p475, 100, {
					spe = 1
				});
			end;
		end
	};
	v2["Poisonous Skin"] = {
		Description = "If this Doodle is hit with a contact move, the attacker has a 20% chance to become poisoned.", 
		OnHit = function(p478, p479, p480, p481)
			if p481.Contact then
				l__InflictStatus__2(p478, p479, p480, 20, "Poison", nil, "&DOODLENAME," .. p480.ID .. "&" .. " became poisoned because of " .. "&DOODLENAME," .. p479.ID .. "&'s Poisonous Skin!");
			end;
		end
	};
	v2.Robust = {
		Description = "This Doodle gets cured of any status effects when it gets switched out.", 
		SwapOut = function(p482, p483, p484)
			if p483.Status ~= nil and p483.Status ~= "Faint" then
				p483.Status = nil;
				p482:AddDialogue(p482.ActionList, "&DOODLENAME," .. p483.ID .. "&" .. " cured their " .. p483.Status:lower() .. " status with Robustness!");
				p482:AddAction(p482.ActionList, {
					Player = p483.Owner, 
					Doodle = p483, 
					Action = "StatusAnim", 
					Status = ""
				});
			end;
		end
	};
	v2.Gauze = {
		Description = "This Doodle gets cured of any status effects when it gets switched out.", 
		SwapOut = function(p485, p486, p487)
			if p486.Status ~= nil and p486.Status ~= "Faint" then
				p486.Status = nil;
				p485:AddDialogue(p485.ActionList, "&DOODLENAME," .. p486.ID .. "&" .. " cured their " .. p486.Status:lower() .. " status with Gauze!");
				p485:AddAction(p485.ActionList, {
					Player = p486.Owner, 
					Doodle = p486, 
					Action = "StatusAnim", 
					Status = ""
				});
			end;
		end
	};
	v2.Leech = {
		Description = "This Doodle\226\128\153s Insect-type attacks restore them for half the damage done.", 
		BattleFunc = function(p488, p489, p490, p491, p492)
			if typeof(p492) == "number" and p492 > 0 and p491.Type == "Insect" then
				local v28 = math.floor(p492 / 2);
				local v29 = p488:GetTraitInfo(p490);
				if v28 > 0 and p489.currenthp < p489.Stats.hp then
					if v29.Tainted then
						v28 = -v28;
					end;
					p488:AddAction(p488.ActionList, {
						Player = p490.Owner, 
						User = p489, 
						Doodle = p490, 
						Action = "PlayAnim", 
						Move = "Leaf Sap"
					});
					if v28 > 0 then
						p488:AddDialogue(p488.ActionList, "&DOODLENAME," .. p489.ID .. "& restored health!");
					else
						p488:AddDialogue(p488.ActionList, "&DOODLENAME," .. p489.ID .. "&" .. " took damage from &DOODLENAME," .. p490.ID .. "& Tainted trait!");
					end;
					p488:TakeDamage(p489, -v28);
				end;
			end;
		end
	};
	v2.Rejuvenator = {
		Description = "This Doodle restores 25% more health than normal.", 
		ExtraHeal = 1.25
	};
	v2.Herbivore = {
		Description = "This Doodle restores health if hit by a Plant-type move instead of taking damage.", 
		DuringDamageCalc = function(p493, p494, p495, p496, p497)
			if (p497 == "Passive" or p497 > 0) and p494 ~= p495 and p496.Type == "Plant" then
				p497 = 0;
				p493:AddDialogue(p493.ActionList, "&DOODLENAME," .. p495.ID .. "& absorbed the Plant-type attack!");
				if p495.currenthp < p495.Stats.hp then
					p493:TakeDamage(p495, -math.floor(p495.Stats.hp / 2));
					p493:AddDialogue(p493.ActionList, "&DOODLENAME," .. p495.ID .. "& restored health!");
				end;
			end;
			return p497;
		end
	};
	v2["Pollen Armor"] = {
		Description = "If this Doodle is hit with a contact move, the attacker has a 20% chance to fall asleep.", 
		OnHit = function(p498, p499, p500, p501)
			if p501.Contact then
				l__InflictStatus__2(p498, p499, p500, 20, "Sleep", nil, "&DOODLENAME," .. p500.ID .. "&" .. " fell asleep because of " .. "&DOODLENAME," .. p499.ID .. "&'s Pollen Armor!");
			end;
		end
	};
	v2["Razor Skin"] = {
		Description = "If this Doodle is hit with a contact move, the attacker becomes vulnerable.", 
		OnHit = function(p502, p503, p504, p505)
			if p505.Contact then
				l__InflictStatus__2(p502, p503, p504, 100, "Vulnerable", nil, "&DOODLENAME," .. p504.ID .. "&" .. " became Vulnerable because of " .. "&DOODLENAME," .. p503.ID .. "&'s Razor Skin!");
			end;
		end
	};
	v2.Electrocute = {
		Description = "If this Doodle is hit with a contact move, the attacker has a 30% chance to become paralyzed.", 
		OnHit = function(p506, p507, p508, p509)
			if p509.Contact and not l__Utilities__1.IsType(p508, "Earth") then
				l__InflictStatus__2(p506, p507, p508, 30, "Paralysis", nil, "&DOODLENAME," .. p508.ID .. "&" .. " became paralyzed because of " .. "&DOODLENAME," .. p507.ID .. "&'s Electrocute!");
			end;
		end
	};
	v2.Chef = {
		Description = "This Doodle does 30% more damage against Food types.", 
		ModifyDamage = function(p510, p511, p512, p513)
			if l__Utilities__1.IsType(p512, "Food") then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Spooky = {
		Description = "If this Doodle is hit with an attack, the attacker has a 25% chance to become cursed.", 
		OnHit = function(p514, p515, p516, p517)
			if p517.Category == "Physical" or p517.Category == "Magical" then
				l__InflictStatus__2(p514, p515, p516, 25, "Cursed", nil, "&DOODLENAME," .. p516.ID .. "&" .. " became cursed because of " .. "&DOODLENAME," .. p515.ID .. "&'s Spooky trait!");
			end;
		end
	};
	v2.Filament = {
		Description = "This Doodle is immune to Spark-type attacks. If this Doodle is hit by a Spark-type move, their Light-type moves do more damage.", 
		DuringDamageCalc = function(p518, p519, p520, p521, p522)
			if p521.Type == "Spark" and p519 ~= p520 and (p522 == "Passive" or p522 > 0) then
				p522 = 0;
				p520.LightBuff = 1.5;
				p518:AddDialogue(p518.ActionList, "&DOODLENAME," .. p520.ID .. "& absorbed the Spark-type attack!");
				p518:AddDialogue(p518.ActionList, "&DOODLENAME," .. p520.ID .. "&'s Light-type attacks have become stronger!");
				if not p520.ModFuncs.LightBuff then
					p520.ModFuncs.LightBuff = function(p523, p524, p525, p526)
						if p524.LightBuff and p526.Type == "Light" then
							return p524.LightBuff;
						end;
						return 1;
					end;
				end;
			end;
			return p522;
		end
	};
	v2.Hunter = {
		Description = "If this Doodle is in your party, you have an increased chance of finding the Doodle you're chaining. Doesn't stack.", 
		Hunter = true
	};
	v2.Incandescent = {
		Description = "If this Doodle is the first Doodle in your party, you are more likely to encounter higher star Doodles.", 
		HigherStar = true
	};
	v2["Iron Will"] = {
		Description = "This Doodle's attack can't be lowered.", 
		PreventStatDisable = { "atk" }
	};
	v2["Doll Eyes"] = {
		Description = "This Doodle's accuracy can't be lowered.", 
		PreventStatDisable = { "acc" }
	};
	v2["Four Eyes"] = {
		Description = "This Doodle's accuracy can't be lowered.", 
		PreventStatDisable = { "acc" }
	};
	v2["Rule of Cool"] = {
		Description = "This Doodle's not very effective attacks do double damage.", 
		Coolness = true
	};
	v2.Unbreakable = {
		Description = "This Doodle takes 25% less damage from super-effective attacks.", 
		SolidRock = true
	};
	v2.Capoeira = {
		Description = "This Doodle always hits the maximum amount of times when using multi-strike moves.", 
		SkillLink = true
	};
	v2.Lightfooted = {
		Description = "This Doodle\226\128\153s speed can\226\128\153t be lowered. If this Doodle\226\128\153s speed would be lowered, boost their speed instead.", 
		PreventStatDisable = { "spe" }, 
		PreventStatDisableFunc = function(p527, p528, p529, p530)
			p527:AddDialogue(p527.ActionList, "&DOODLENAME," .. p529.ID .. "&'s Lightfooted trait boosted its speed!");
			l__ChangeStats__1(p527, p529, p529, 100, {
				spe = -1 * p530
			});
		end
	};
	v2.Merciless = {
		Description = "When this Doodle's stats are lowered by an opponent, greatly boost this Doodle's attack.", 
		OnStatChange = function(p531, p532, p533, p534, p535)
			if p534 and p532.ID ~= p533.ID and not p531:IsAlly(p533, p532) and p533.Boosts.atk < 6 then
				l__ChangeStats__1(p531, p533, p533, 100, {
					atk = 2
				});
				p533.StatChangeLater = {
					atk = true
				};
				p533.LaterStatString = "&DOODLENAME," .. p533.ID .. "& is Merciless!";
			end;
		end
	};
	v2["Ramming Speed"] = {
		Description = "When this Doodle's speed is boosted, their defense is also boosted.", 
		OnStatSpecificChange = function(p536, p537, p538, p539, p540)
			if p536:GetTraitInfo(p538).Description and p539 and p540 == "spe" and p538.Boosts.def < 6 then
				l__ChangeStats__1(p536, p538, p538, 100, {
					def = 1
				});
				p538.StatChangeLater = {
					def = true
				};
				p538.LaterStatString = "&DOODLENAME," .. p538.ID .. "& has Ramming Speed!";
			end;
		end
	};
	v2.Vengeance = {
		Description = "This Doodle\226\128\153s attacks do 30% more damage if it was attacked this turn.", 
		ModifyDamage = function(p541, p542, p543, p544)
			if #p542.Revenge > 0 then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Tainted = {
		Description = "This Doodle damages attackers using draining moves instead of restoring their health.", 
		Tainted = true
	};
	v2.Glutton = {
		Description = "This Doodle restores health if hit by a Food-type move instead of taking damage.", 
		DuringDamageCalc = function(p545, p546, p547, p548, p549)
			if (p549 == "Passive" or p549 > 0) and p546 ~= p547 and p548.Type == "Food" then
				p549 = 0;
				p545:AddDialogue(p545.ActionList, "&DOODLENAME," .. p547.ID .. "& absorbed the Food-type attack!");
				if p547.currenthp < p547.Stats.hp then
					p545:TakeDamage(p547, -math.floor(p547.Stats.hp / 2));
					p545:AddDialogue(p545.ActionList, "&DOODLENAME," .. p547.ID .. "& restored health!");
				end;
			end;
			return p549;
		end
	};
	v2.Exoskeleton = {
		Description = "This Doodle takes 30% less damage from contact attacks.", 
		ModifyDefendDamage = function(p550, p551, p552, p553, p554, p555, p556)
			if p553.Contact then
				return 0.7;
			end;
			return 1;
		end
	};
	v2["Titanium Bucket"] = {
		Description = "When this Doodle is sent out into battle, they boost their defense or magical defense, whichever is higher.", 
		Target = "Side", 
		SendOut = function(p557, p558, p559)
			p557:AddDialogue(p557.ActionList, "&DOODLENAME," .. p558.ID .. "& has a titanium bucket!");
			local v30 = "def";
			if p558.Stats.def < p558.Stats.mdef then
				v30 = "mdef";
			end;
			l__ChangeStats__1(p557, p558, p558, 100, {
				[v30] = 1
			});
		end
	};
	v2["Bon Appetit"] = {
		Description = "When this Doodle is sent out into battle, sprinkle Seasoning on opposing Doodles. Food-type Doodles do more damage to seasoned targets.", 
		BeforeSendOut = function(p560, p561)
			p560:AddDialogue(p560.ActionList, "&DOODLENAME," .. p561.ID .. "&'s applied Seasoning to the other team!");
		end, 
		SendOut = function(p562, p563, p564)
			p564.Seasoning = true;
		end
	};
	v2.Crude = {
		Description = "When this Doodle is sent out into battle, they lower the speed of opposing Doodles.", 
		BeforeSendOut = function(p565, p566)
			p565:AddDialogue(p565.ActionList, "&DOODLENAME," .. p566.ID .. "&'s used their Crudeness to try tand lower the other team's speed!");
		end, 
		SendOut = function(p567, p568, p569)
			l__ChangeStats__1(p567, p568, p569, 100, {
				spe = -1
			});
		end
	};
	v2["Menacing Snarl"] = {
		Description = "When this Doodle is sent out into battle, they lower the attack of opposing Doodles.", 
		BeforeSendOut = function(p570, p571)
			p570:AddDialogue(p570.ActionList, "&DOODLENAME," .. p571.ID .. "&'s menacing snarl tried to lower the other team's attack!");
		end, 
		SendOut = function(p572, p573, p574)
			l__ChangeStats__1(p572, p573, p574, 100, {
				atk = -1
			});
		end
	};
	v2["Sickly Sweet"] = {
		Description = "When this Doodle is sent out into battle, they lower the magical attack of opposing Doodles.", 
		BeforeSendOut = function(p575, p576)
			p575:AddDialogue(p575.ActionList, "&DOODLENAME," .. p576.ID .. "&'s sweet aroma tried to lower the other team's magic attack!");
		end, 
		SendOut = function(p577, p578, p579)
			l__ChangeStats__1(p577, p578, p579, 100, {
				matk = -1
			});
		end
	};
	v2["Anti-Paralysis"] = {
		Description = "All party members are cured of paralysis when this Doodle is sent out into battle.", 
		SendOut = function(p580, p581, p582, p583)
			local v31 = nil;
			for v32, v33 in pairs(p580:FindSide(p581) == p580.Out1 and p580.Player1Party or p580.Player2Party) do
				if v33.Status == "Paralysis" then
					v33.Status = nil;
					v31 = true;
				end;
			end;
			if v31 then
				p580:AddDialogue(p580.ActionList, "&DOODLENAME," .. p581.ID .. "&'s cured all of their party members' paralysis!");
			end;
		end
	};
	v2.Antivenom = {
		Description = "All party members are cured of poison when this Doodle is sent out into battle.", 
		SendOut = function(p584, p585, p586, p587)
			local v34 = nil;
			for v35, v36 in pairs(p584:FindSide(p585) == p584.Out1 and p584.Player1Party or p584.Player2Party) do
				if v36.Status == "Poison" then
					v36.Status = nil;
					v34 = true;
				end;
			end;
			if v34 then
				p584:AddDialogue(p584.ActionList, "&DOODLENAME," .. p585.ID .. "&'s cured all of their party members' poison!");
			end;
		end
	};
	v2["Ice Stream"] = {
		Description = "This Doodle\226\128\153s Ice-type moves always go first when this Doodle is above half health.", 
		PrioritySet = function(p588, p589, p590, p591)
			if p590.Type ~= "Ice" or not (p589.Stats.hp / 2 <= p589.currenthp) then
				return p591;
			end;
			return p591 + 1;
		end
	};
	v2.Ethereal = {
		Description = "Attacks on this Doodle miss 10% more often.", 
		AccCalc = function(p592, p593, p594, p595)
			local v37 = p595;
			if typeof(v37) == "number" then
				v37 = v37 * 0.9;
			end;
			return v37;
		end
	};
	v2.Duel = {
		Description = "This Doodle never misses or dodges.", 
		AccCalc = function(p596, p597, p598, p599)
			return true;
		end, 
		OffensiveAccCalc = function(p600, p601, p602, p603)
			return true;
		end
	};
	v2.Rapier = {
		Description = "This Doodle\226\128\153s priority moves do 20% more damage.", 
		ModifyDamage = function(p604, p605, p606, p607)
			if p607.Priority and p607.Priority >= 1 then
				return 1.2;
			end;
			return 1;
		end
	};
	v2["Insatiable Greed"] = {
		Description = "This Doodle boosts its highest stat when an opposing Doodle faints.", 
		OnOpposingFaint = function(p608, p609, p610)
			local v38 = "atk";
			for v39, v40 in pairs({ "atk", "def", "mdef", "matk", "mdef" }) do
				if p609.Stats[v38] < p609.Stats[v40] then
					v38 = v40;
				end;
			end;
			p608:AddDialogue(p608.ActionList, "&DOODLENAME," .. p609.ID .. "&'s Insatiable Greed activated!");
			l__ChangeStats__1(p608, p609, p609, 100, {
				[v38] = 1
			});
		end
	};
	v2.Reaper = {
		Description = "This Doodle restores health if an opposing Doodle faints.", 
		OnOpposingFaint = function(p611, p612, p613)
			local v41 = math.round(p612.Stats.hp * 0.3);
			if v41 > 0 and p612.currenthp > 0 and p612.currenthp < p612.Stats.hp and p613.ID ~= p612.ID then
				p611:AddDialogue(p611.ActionList, "&DOODLENAME," .. p612.ID .. "& reaped and recovered health!");
				p611:TakeDamage(p612, -v41);
			end;
		end
	};
	v2.Calm = {
		Description = "This Doodle ignores boosted attack and defense stats.", 
		IgnoreBoosts = true
	};
	v2.Ignorant = {
		Description = "This Doodle ignores boosted attack and defense stats.", 
		IgnoreBoosts = true
	};
	v2.Apathetic = {
		Description = "This Doodle ignores boosted attack and defense stats.", 
		IgnoreBoosts = true
	};
	v2.Hawkeye = {
		Description = "Ignores target's evasion boosts.", 
		IgnoreEvasion = true
	};
	v2.Graceful = {
		Description = "This Doodle never misses.", 
		NeverMiss = true
	};
	v2.Escapist = {
		Description = "Guarantees fleeing from wild Doodles.", 
		FleeGuarantee = true
	};
	v2["Heavy Storms"] = {
		Description = "If this Doodle creates rain, the rain will last 10 turns.", 
		DoubleRain = true
	};
	v2["Slash Expert"] = {
		Description = "This Doodle\226\128\153s slashing moves do 20% more damage.", 
		ModifyDamage = function(p614, p615, p616, p617)
			if p617.Slash then
				return 1.2;
			end;
			return 1;
		end
	};
	v2["Sharp Fangs"] = {
		Description = "This Doodle\226\128\153s biting moves have a 20% chance to make the target vulnerable.", 
		BattleFunc = function(p618, p619, p620, p621)
			if p621.Category ~= "Passive" and p621.Biting and p620.currenthp > 0 then
				l__InflictStatus__2(p618, p619, p620, 20, "Vulnerable", nil, "&DOODLENAME," .. p620.ID .. "&" .. " became Vulnerable because of " .. "&DOODLENAME," .. p619.ID .. "&'s Sharp Fangs!");
			end;
		end
	};
	v2.Overbite = {
		Description = "This Doodle\226\128\153s biting moves do 30% more damage but have 20% less accuracy.", 
		AttackModifier = function(p622, p623, p624, p625)
			if p625.Biting and typeof(p625.Accuracy) == "number" then
				p625.Accuracy = p625.Accuracy * 0.8;
			end;
		end, 
		ModifyDamage = function(p626, p627, p628, p629)
			if p629.Biting then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Thievery = {
		Description = "When this Doodle uses a contact move, they have a 25% chance to steal the target's held item.", 
		BattleFunc = function(p630, p631, p632, p633)
			local v42 = l__Utilities__1.GetTrait(p632);
			local v43 = p630:GetItemInfo(p632);
			if p632.HeldItem and p633.Contact then
				if math.random(1, 4) > 1 then
					return;
				end;
				if p631.HeldItem then
					p630:AddDialogue(p630.ActionList, "&DOODLENAME," .. p631.ID .. "& already has a held item!");
					return;
				end;
				if v43 and v43.Runestone then
					p630:AddDialogue(p630.ActionList, "&DOODLENAME," .. p631.ID .. "&'s runestone is not able to be stolen!");
					return;
				end;
				if v42 and v42.NoItemSteal then
					p630:AddDialogue(p630.ActionList, "&DOODLENAME," .. p632.ID .. "& is really protective of its held item!");
					return;
				end;
				p630:AddDialogue(p630.ActionList, "&DOODLENAME," .. p631.ID .. "&" .. " stole " .. p632.HeldItem .. " from " .. "&DOODLENAME," .. p632.ID .. "&!");
				p631.HeldItem = p632.HeldItem;
				p632.HeldItem = nil;
				p632.NoUpdateItem = true;
				p631.NoUpdateItem = true;
			end;
		end
	};
	v2.Ward = {
		Description = "This Doodle\226\128\153s held item can never be removed in battle.", 
		NoItemSteal = true
	};
	v2.Dimwitted = {
		Description = "This Doodle does 25% more damage, but they can only use attacks that do damage.", 
		Dimwitted = true
	};
	v2.Premonition = {
		Description = "When this Doodle is sent out into battle, they sense one of the opposing Doodle\226\128\153s moves.", 
		SendOut = function(p634, p635, p636)
			p634:AddDialogue(p634.ActionList, "&DOODLENAME," .. p635.ID .. "&" .. " discovered that " .. "&DOODLENAME," .. p636.ID .. "&" .. " can use " .. p636.Moves[math.random(1, #p636.Moves)].Name .. "!");
		end
	};
	v2.Discover = {
		Description = "When this Doodle is sent out into battle, they discover the held items of opposing Doodles.", 
		SendOut = function(p637, p638, p639)
			if p639.HeldItem then
				p637:AddDialogue(p637.ActionList, "&DOODLENAME," .. p638.ID .. "&" .. " discovered " .. "&DOODLENAME," .. p639.ID .. "&" .. " is holding " .. p639.HeldItem .. "!");
				return;
			end;
			local v44 = false;
			for v45, v46 in pairs(p639.Equip) do
				if not v44 then
					v44 = true;
					break;
				end;
			end;
			if v44 and p637.BattleType == "Wild" then
				p637:AddDialogue(p637.ActionList, "&DOODLENAME," .. p638.ID .. "&" .. " discovered " .. "&DOODLENAME," .. p639.ID .. "& has equipment!");
				return;
			end;
			p637:AddDialogue(p637.ActionList, "&DOODLENAME," .. p638.ID .. "&" .. " discovered " .. "&DOODLENAME," .. p639.ID .. "& is holding nothing!");
		end
	};
	v2.Possession = {
		Description = "This Doodle copies the trait of any Doodle they attack.", 
		BattleFunc = function(p640, p641, p642, p643)
			if p643.Category ~= "Passive" and p641.Ability ~= p642.Ability then
				p640:AddDialogue(p640.ActionList, "&DOODLENAME," .. p641.ID .. "&" .. "'s ability became " .. p642.Ability .. "!");
				p641.Ability = p642.Ability;
				local v47 = p640:GetTraitInfo(p641);
				if v47.SendOut and p641.Ability ~= "Possession" then
					v47.SendOut(p640, p641, p642, p643);
				end;
			end;
		end, 
		SendOut = function(p644, p645, p646, p647)
			p645.Possession = true;
			if not p645.SendOut.Possession then
				p645.SendOut.Possession = function(p648, p649, p650)
					if p649.Possession then
						p649.Ability = "Possession";
						p648:AddDialogue(p648.ActionList, "&DOODLENAME," .. p649.ID .. "& is ready to possess!");
					end;
				end;
			end;
		end
	};
	v2["Light Orb"] = {
		Description = "The next Dark-type attack used this battle does 50% less damage.", 
		SendOut = function(p651, p652, p653)
			if not p651.LightOrb then
				p651.LightOrb = true;
				p651:AddDialogue(p651.ActionList, "&DOODLENAME," .. p652.ID .. "&'s Light Orb trait will cause the next Dark-type attack used to do less damage!");
			end;
		end
	};
	v2["Destructive Anger"] = {
		Description = "This Doodle does 50% more damage if enraged.", 
		ModifyDamage = function(p654, p655, p656, p657)
			if p655.Status == "Rage" then
				return 1.5;
			end;
			return 1;
		end
	};
	v2.Covetous = {
		Description = "This Doodle does 25% more damage if the target has a held item.", 
		ModifyDamage = function(p658, p659, p660, p661)
			if p660.HeldItem ~= nil then
				return 1.25;
			end;
			return 1;
		end
	};
	v2.Envy = {
		Description = "This Doodle does 30% more damage if they don't have a held item.", 
		ModifyDamage = function(p662, p663, p664, p665)
			if p663.HeldItem == nil then
				return 1.3;
			end;
			return 1;
		end
	};
	v2["Direct Combatant"] = {
		Description = "This Doodle can only take damage from attacks.", 
		DirectCombatant = true
	};
	v2.Reflective = {
		Description = "If a support move is used on this Doodle, it is redirected back to the user.", 
		Reflective = true
	};
	v2.Composed = {
		Description = "Rage has no effect on this Doodle.", 
		NoRage = true
	};
	v2["Burning Beast"] = {
		Description = "This Doodle\226\128\153s Beast-type moves have a 20% chance to burn.", 
		BattleFunc = function(p666, p667, p668, p669)
			if p669.Type == "Beast" and p669.Category ~= "Passive" and p668.currenthp > 0 then
				l__InflictStatus__2(p666, p667, p668, 20, "Burn", nil, "&DOODLENAME," .. p668.ID .. "&" .. " got burned because of " .. "&DOODLENAME," .. p667.ID .. "&'s Burning Beast!");
			end;
		end
	};
	v2["Wish For Power"] = {
		Description = "When this Doodle is sent out into battle, they boost their attack or magical attack, depending on the opponent.", 
		Target = "Side", 
		SendOut = function(p670, p671, p672)
			p670:AddDialogue(p670.ActionList, "&DOODLENAME," .. p671.ID .. "& wished for power to be granted!");
			local v48 = "matk";
			if p672.Stats.def < p672.Stats.mdef then
				v48 = "atk";
			end;
			l__ChangeStats__1(p670, p671, p671, 100, {
				[v48] = 1
			});
		end
	};
	v2.Confidence = {
		Description = "When this Doodle is sent out into battle, if the opposing Doodle has higher stats, boost this Doodle's attack and magical attack.", 
		Target = "Side", 
		SendOut = function(p673, p674, p675)
			if p674:GetTotalStats() < p675:GetTotalStats() then
				p673:AddDialogue(p673.ActionList, "&DOODLENAME," .. p674.ID .. "&'s unwavering confidence won't let them back down from this fight!");
				l__ChangeStats__1(p673, p674, p674, 100, {
					atk = 1, 
					matk = 1
				});
			end;
		end
	};
	v2["Wish For Wealth"] = {
		Description = "When this Doodle is in your party, you gain 30% more money from tamer battles.", 
		MoneyMultiplier = 1.3
	};
	v2["Wish For Experience"] = {
		Description = "This Doodle gains 30% more experience.", 
		ExpMultiplier = 1.3
	};
	v2["No trait"] = {
		Description = "This doodle doesn't have a trait."
	};
	return v2;
end;
