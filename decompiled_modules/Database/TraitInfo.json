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
	v2["Stabby Stabby"] = {
		Description = "This Doodle\226\128\153s Metal-type attacks do 30% more damage.", 
		ModifyDamage = function(p21, p22, p23, p24)
			if p24.Type == "Metal" then
				return 1.3;
			end;
			return 1;
		end
	};
	v2["Second Wind"] = {
		Description = "This Doodle has a 50% increased speed stat when they are below 25% health.", 
		ModifySpeed = function(p25, p26, p27)
			if not (p26.currenthp < p26.Stats.hp / 4) then
				return p27;
			end;
			return p27 + p27 * 0.5;
		end
	};
	v2.Vitality = {
		Description = "This Doodle has a 50% increased speed stat when they are over half health.", 
		ModifySpeed = function(p28, p29, p30)
			if not (p29.Stats.hp / 2 < p29.currenthp) then
				return p30;
			end;
			return p30 + p30 * 0.5;
		end
	};
	v2.Rush = {
		Description = "This Doodle has a 20% increased speed stat in battle.", 
		ModifySpeed = function(p31, p32, p33)
			return p33 + p33 * 0.2;
		end
	};
	local v4 = {
		Description = "When this Doodle uses a magical attack, they have a 20% chance to boost their magical attack."
	};
	local l__ChangeStats__1 = l__Utilities__1.ChangeStats;
	function v4.BattleFunc(p34, p35, p36, p37)
		if p37.Category == "Magical" then
			l__ChangeStats__1(p34, p35, p35, 20, {
				matk = 1
			});
		end;
	end;
	v2.Magician = v4;
	v2.Scorch = {
		Description = "When this Doodle uses a Fire-type attack, they have a 20% chance to boost their magical attack.", 
		BattleFunc = function(p38, p39, p40, p41)
			if p41.Type == "Fire" and p41.Category ~= "Passive" then
				l__ChangeStats__1(p38, p39, p39, 20, {
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
		BattleFunc = function(p42, p43, p44, p45)
			if p45.Contact and p45.Category ~= "Passive" then
				l__ChangeStats__1(p42, p43, p44, 30, {
					def = -1
				});
			end;
		end
	};
	v2["Blinding Rocks"] = {
		Description = "When this Doodle uses an Earth-type attack, they have a 20% chance to lower the target\226\128\153s accuracy.", 
		BattleFunc = function(p46, p47, p48, p49)
			if p49.Type == "Earth" and p49.Category ~= "Passive" then
				l__ChangeStats__1(p46, p47, p48, 20, {
					acc = -1
				});
			end;
		end
	};
	v2.Whimsical = {
		Description = "This Doodle boosts a random stat and lowers another at the end of each turn.", 
		EndTurn = function(p50, p51, p52)
			local v5 = { "atk", "def", "matk", "mdef", "spe", "acc", "eva" };
			local v6 = table.remove(v5, math.random(#v5));
			local v7 = table.remove(v5, math.random(#v5));
			if p51.Status ~= "Faint" then
				l__ChangeStats__1(p50, p51, p51, 100, {
					[v6] = 1
				});
				l__ChangeStats__1(p50, p51, p51, 100, {
					[v7] = -1
				});
			end;
		end
	};
	v2.Molt = {
		Description = "This Doodle has a 25% chance to cure their status condition at the end of each turn.", 
		EndTurn = function(p53, p54, p55)
			if p54.Status and p54.Status ~= "Faint" and math.random(1, 4) == 1 then
				p54.Status = nil;
				p53:AddDialogue(p53.ActionList, "&DOODLENAME," .. p54.ID .. "&" .. " molted its skin and cured its " .. p54.Status:lower() .. " status!");
				p53:AddAction(p53.ActionList, {
					Player = p54.Owner, 
					Doodle = p54, 
					Action = "StatusAnim", 
					Status = ""
				});
			end;
		end
	};
	v2.Accelerate = {
		Description = "This Doodle boosts their speed at the end of each turn.", 
		EndTurn = function(p56, p57, p58)
			if p57.currenthp > 0 then
				l__ChangeStats__1(p56, p57, p57, 100, {
					spe = 1
				});
			end;
		end
	};
	v2["Storm Surge"] = {
		Description = "If it\226\128\153s raining, this Doodle boosts their speed at the end of each turn.", 
		EndTurn = function(p59, p60, p61)
			if p60.currenthp > 0 and p59.Weather == "Rain" then
				l__ChangeStats__1(p59, p60, p60, 100, {
					spe = 1
				});
			end;
		end
	};
	v2.Firewall = {
		Description = "When this Doodle is sent out into battle, they summon a Flame Shield that shoots a Firebolt at any opposing Doodle that hits them with magical attack.", 
		SendOut = function(p62, p63, p64)
			p63.FlameShield = true;
			p62:AddDialogue(p62.ActionList, "&DOODLENAME," .. p63.ID .. "& is now surrounded by a flame shield!");
			p63.OnHit = p63.OnHit or {};
			if not p63.OnHit.FlameShield then
				p63.OnHit.FlameShield = function(p65, p66, p67, p68)
					if p63.FlameShield and p63.currenthp > 0 and p68.Category == "Magical" and not p68.NoFirewall then
						p65:AddDialogue(p65.ActionList, "&DOODLENAME," .. p66.ID .. "&'s Flame Shield shoots a Fire Bolt!");
						p65:UseMove(p66, { p67 }, "FirewallFirebolt", true);
					end;
				end;
			end;
		end
	};
	v2.Parry = {
		Description = "This Doodle has a 10% chance to parry contact moves, avoiding damage.", 
		ModifyDefendDamage = function(p69, p70, p71, p72, p73, p74, p75)
			if p72.Contact and p72.Category == "Physical" and math.random(1, 100) > 90 and p75 == nil then
				p69:AddDialogue(p69.ActionList, "&DOODLENAME," .. p71.ID .. "& parried the attack!");
				return 0;
			end;
			return 1;
		end
	};
	v2["Royal Decree"] = {
		Description = "If another Doodle is faster, this Doodle takes 30% less damage from their attacks.", 
		ModifyDefendDamage = function(p76, p77, p78, p79, p80, p81, p82)
			if p78.Stats.spe < p77.Stats.spe then
				return 0.7;
			end;
			return 1;
		end
	};
	v2["Sharp Reflexes"] = {
		Description = "If another Doodle is slower, their attacks on this Doodle miss 15% more often.", 
		AccCalc = function(p83, p84, p85, p86)
			local v8 = p86;
			if typeof(v8) == "number" and v8 < 100 and p85.Stats.spe < p84.Stats.spe then
				v8 = v8 * 0.85;
			end;
			return v8;
		end
	};
	v2.Guilt = {
		Description = "When this Doodle is hit by an attack, lower the user's attack.", 
		OnHit = function(p87, p88, p89, p90)
			if p90.Category ~= "Passive" then
				p87:AddDialogue(p87.ActionList, "&DOODLENAME," .. p89.ID .. "&" .. " felt guilt attacking " .. "&DOODLENAME," .. p88.ID .. "&!");
				l__ChangeStats__1(p87, p88, p89, 100, {
					atk = -1
				});
			end;
		end
	};
	v2.Rugged = {
		Description = "If this Doodle is hit with a contact move, they do some damage back.", 
		OnHit = function(p91, p92, p93, p94)
			if p94.Contact then
				local v9 = math.floor(p93.Stats.hp / 10);
				if v9 > 0 then
					p91:TakeDamage(p93, v9);
					p91:AddDialogue(p91.ActionList, "&DOODLENAME," .. p92.ID .. "&" .. "'s rugged edges hurt " .. "&DOODLENAME," .. p93.ID .. "&!");
				end;
			end;
		end
	};
	v2.Retaliate = {
		Description = "If this Doodle is hit with a contact move, they do some damage back.", 
		OnHit = function(p95, p96, p97, p98)
			if p98.Contact then
				local v10 = math.floor(p97.Stats.hp / 10);
				if v10 > 0 then
					p95:TakeDamage(p97, v10);
					p95:AddDialogue(p95.ActionList, "&DOODLENAME," .. p96.ID .. "&" .. " hurt " .. "&DOODLENAME," .. p97.ID .. "&!");
				end;
			end;
		end
	};
	v2["Steam Guard"] = {
		Description = "If this Doodle is hit with a Water-type move, boost their evasion.", 
		OnHit = function(p99, p100, p101, p102)
			if p100.currenthp > 0 and p102.Type == "Water" then
				l__ChangeStats__1(p99, p100, p100, 100, {
					eva = 1
				});
			end;
		end
	};
	local v11 = {
		Description = "This Doodle\226\128\153s contact moves have a 20% chance to flinch."
	};
	local l__InflictStatus__2 = l__Utilities__1.InflictStatus;
	function v11.BattleFunc(p103, p104, p105, p106)
		if p106.Category ~= "Passive" and p106.Contact == true and p105.currenthp > 0 then
			l__InflictStatus__2(p103, p104, p105, 20, "Flinch", nil, AdditionalMsg);
		end;
	end;
	v2.Stinky = v11;
	v2.Kaleidoscope = {
		Description = "When this Doodle is sent out into battle, they lower the accuracy of opposing Doodles.", 
		BeforeSendOut = function(p107, p108)
			p107:AddDialogue(p107.ActionList, "&DOODLENAME," .. p108.ID .. "& emits a blinding light and tried to lower the other team's accuracy!");
		end, 
		SendOut = function(p109, p110, p111)
			l__ChangeStats__1(p109, p110, p111, 100, {
				acc = -1
			});
		end
	};
	v2.Deepfreeze = {
		Description = "This Doodle\226\128\153s moves have a 2x chance to freeze.", 
		StatusModifier = function(p112, p113, p114, p115, p116)
			if p115 ~= "Freeze" then
				return p115, p116;
			end;
			return p115, p116 * 2;
		end
	};
	v2.Contagion = {
		Description = "Whenever this Doodle would inflict Poison, inflict Diseased instead.", 
		StatusModifier = function(p117, p118, p119, p120, p121)
			if p120 ~= "Poison" then
				return p120, p121;
			end;
			return "Diseased", p121 * 2;
		end
	};
	v2.Kindling = {
		Description = "This Doodle\226\128\153s moves have a 2x chance to burn.", 
		StatusModifier = function(p122, p123, p124, p125, p126)
			if p125 ~= "Burn" then
				return p125, p126;
			end;
			return p125, p126 * 2;
		end
	};
	v2["First Degree Burns"] = {
		Description = "If an opposing Doodle is burned, they take double damage at the end of each turn.", 
		BurnModifier = true
	};
	v2["Strong Armor"] = {
		Description = "If this Doodle is hit with a contact move, boost their defense.", 
		OnHit = function(p127, p128, p129, p130)
			if p128.currenthp > 0 and p130.Contact then
				l__ChangeStats__1(p127, p128, p128, 100, {
					def = 1
				});
			end;
		end
	};
	v2.Cracked = {
		Description = "If this Doodle is hit with a physical move, lower their defense but greatly boost their speed.", 
		OnHit = function(p131, p132, p133, p134)
			if p132.currenthp > 0 and p134.Category == "Physical" then
				l__ChangeStats__1(p131, p132, p132, 100, {
					def = -1, 
					spe = 2
				});
			end;
		end
	};
	v2.Viscosity = {
		Description = "If this Doodle is hit with a contact move, they lower the attack and magical attack of the attacker.", 
		OnHit = function(p135, p136, p137, p138)
			if p138.Contact then
				l__ChangeStats__1(p135, p136, p137, 100, {
					atk = -1, 
					matk = -1
				});
			end;
		end
	};
	v2.Sticky = {
		Description = "If this Doodle is hit with a contact move, they lower the attacker\226\128\153s speed.", 
		OnHit = function(p139, p140, p141, p142)
			if p142.Contact then
				l__ChangeStats__1(p139, p140, p141, 100, {
					spe = -1
				});
			end;
		end
	};
	v2.Concentrated = {
		Description = "This Doodle's concentration is intense, preventing it from flinching.", 
		ImmuneStatus = { "Flinch" }, 
		StatusFunc = function(p143, p144, p145, p146, p147)
			if p146 ~= "Flinch" then
				return p146, p147;
			end;
			return "Flinch", 0, "&DOODLENAME," .. p145.ID .. "& is immune to flinching!";
		end
	};
	v2.Restless = {
		Description = "This Doodle can\226\128\153t fall asleep.", 
		ImmuneStatus = { "Sleep" }, 
		StatusFunc = function(p148, p149, p150, p151, p152)
			if p151 ~= "Sleep" then
				return p151, p152;
			end;
			local v12 = false;
			if p152 >= 100 then
				v12 = "&DOODLENAME," .. p150.ID .. "& can't fall asleep!";
			end;
			return "Sleep", 0, v12;
		end
	};
	v2.Nonchalant = {
		Description = "This Doodle does not rage or fall for taunts.", 
		ImmuneStatus = { "Rage" }, 
		ImmuneTaunt = true, 
		StatusFunc = function(p153, p154, p155, p156, p157)
			if p156 ~= "Rage" then
				return p156, p157;
			end;
			local v13 = nil;
			if p157 == 100 and p156.Name == "Rage" then
				v13 = "&DOODLENAME," .. p155.ID .. "& is immune to raging!";
			end;
			return p156, 0, v13;
		end
	};
	v2.Careless = {
		Description = "This Doodle can\226\128\153t be enraged or confused.", 
		ImmuneStatus = { "Confuse", "Rage" }, 
		StatusFunc = function(p158, p159, p160, p161, p162)
			if p161 ~= "Confuse" and p161 ~= "Rage" then
				return p161, p162;
			end;
			local v14 = nil;
			if p162 == 100 then
				if p161.Name == "Confuse" then
					v14 = "&DOODLENAME," .. p160.ID .. "& can't get confused!";
				elseif p161.Name == "Rage" then
					v14 = "&DOODLENAME," .. p160.ID .. "& is immune to raging!";
				end;
			end;
			return p161, 0, v14;
		end
	};
	v2["Bright Lights"] = {
		Description = "This Doodle is immune to Dark-type attacks.", 
		ModifyDefendDamage = function(p163, p164, p165, p166, p167, p168, p169)
			if p166.Type ~= "Dark" then
				return 1;
			end;
			if p169 == nil then
				p163:AddDialogue(p163.ActionList, "&DOODLENAME," .. p165.ID .. "& is immune to Dark-type attacks!");
			end;
			return 0;
		end
	};
	v2.Dauntless = {
		Description = "This Doodle takes half damage from Insect, Spirit, and Dark-type attacks.", 
		ModifyDefendDamage = function(p170, p171, p172, p173, p174, p175, p176)
			if p173.Type ~= "Insect" and p173.Type ~= "Spirit" and p173.Type ~= "Dark" then
				return 1;
			end;
			return 0.5;
		end
	};
	v2["Fireproof Armor"] = {
		Description = "This Doodle takes half damage from Fire-type attacks.", 
		ModifyDefendDamage = function(p177, p178, p179, p180, p181, p182, p183)
			if p180.Type == "Fire" then
				return 0.5;
			end;
			return 1;
		end
	};
	v2["Pecking Order"] = {
		Description = "Lower power attacks do 25% less damage to this Doodle.", 
		ModifyDefendDamage = function(p184, p185, p186, p187, p188, p189, p190)
			if p187.Power and typeof(p187.Power) == "number" and p187.Power <= 60 then
				return 0.75;
			end;
			return 1;
		end
	};
	v2.Nitelite = {
		Description = "This Doodle takes 50% less damage from Dark-type attacks.", 
		ModifyDefendDamage = function(p191, p192, p193, p194, p195, p196, p197)
			if p194.Type == "Dark" then
				return 0.5;
			end;
			return 1;
		end
	};
	v2["Holy Water"] = {
		Description = "This Doodle restores 25% of their health after using a Water or Light-type support move.", 
		BattleFunc = function(p198, p199, p200, p201)
			if p201.Category == "Passive" and (p201.Type == "Water" or p201.Type == "Light") then
				local v15 = math.floor(p199.Stats.hp / 4);
				if v15 > 0 and p199.currenthp < p199.Stats.hp then
					p198:AddDialogue(p198.ActionList, "&DOODLENAME," .. p199.ID .. "& restored health!");
					p198:TakeDamage(p199, -v15);
				end;
			end;
		end
	};
	v2["Air Current"] = {
		Description = "This Doodle\226\128\153s Air-type attacks do 20% more damage when this Doodle is at full health.", 
		ModifyDamage = function(p202, p203, p204, p205)
			if p205.Type == "Air" and p203.currenthp == p203.Stats.hp then
				return 1.2;
			end;
			return 1;
		end
	};
	v2["Rubber Tissue"] = {
		Description = "This Doodle is immune to Spark-type attacks.", 
		ModifyDefendDamage = function(p206, p207, p208, p209, p210, p211, p212)
			if p209.Type ~= "Spark" then
				return 1;
			end;
			if p212 == nil then
				p206:AddDialogue(p206.ActionList, "&DOODLENAME," .. p208.ID .. "& is immune to Spark-type attacks!");
			end;
			return 0;
		end
	};
	v2.Adipose = {
		Description = "This Doodle takes half damage from Fire and Ice-type attacks.", 
		ModifyDefendDamage = function(p213, p214, p215, p216, p217, p218, p219)
			if p216.Type ~= "Fire" and p216.Type ~= "Ice" then
				return 1;
			end;
			return 0.5;
		end
	};
	v2["Edible Treat"] = {
		Description = "If this Doodle faints, they fully restore their ally\226\128\153s health.", 
		SendOut = function(p220, p221, p222, p223)
			p221.OnFaint = p221.OnFaint or {};
			p221.OnFaintTargets.EdibleTreat = "Ally";
			p221.EdibleTreat = true;
			if not p221.OnFaint.EdibleTreat then
				p221.OnFaint.EdibleTreat = function(p224, p225, p226)
					if p221.EdibleTreat and p224.Format == "Doubles" and p226.currenthp > 0 and p226.currenthp < p226.Stats.hp then
						p224:AddDialogue(p224.ActionList, "&DOODLENAME," .. p221.ID .. "&" .. " healed their ally, " .. "&DOODLENAME," .. p226.ID .. "&!");
						p224:TakeDamage(p226, -math.round(p221.Stats.hp));
					end;
				end;
			end;
		end
	};
	v2["Chemical Explosion"] = {
		Description = "If this Doodle faints, damages all opposing Doodles by 25% of their max health.", 
		SendOut = function(p227, p228, p229, p230)
			p228.OnFaint = p228.OnFaint or {};
			p228.OnFaintTargets.ChemicalExplosion = "AllFoes";
			p228.ChemicalExplosion = true;
			if not p228.OnFaint.ChemicalExplosion then
				p228.OnFaint.ChemicalExplosion = function(p231, p232, p233)
					if p228.ChemicalExplosion then
						p231:AddDialogue(p231.ActionList, "&DOODLENAME," .. p228.ID .. "& exploded!");
						p231:TakeDamage(p233, math.floor(p233.Stats.hp / 4), nil, nil, true);
						p231:CheckFaint();
					end;
				end;
			end;
		end
	};
	v2["Balloon Pop"] = {
		Description = "If this Doodle faints, they lower the attack, magical attack, and speed of opposing Doodles.", 
		SendOut = function(p234, p235, p236, p237)
			p235.OnFaint = p235.OnFaint or {};
			p235.OnFaintTargets.BalloonPop = "AllFoes";
			p235.BalloonPop = true;
			if not p235.OnFaint.BalloonPop then
				p235.OnFaint.BalloonPop = function(p238, p239, p240)
					if p235.BalloonPop and p240.currenthp > 0 then
						p238:AddDialogue(p238.ActionList, "&DOODLENAME," .. p235.ID .. "& made a balloon popping noise!");
						l__ChangeStats__1(p238, p239, p240, 100, {
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
		OnHit = function(p241, p242, p243, p244)
			if p242.currenthp > 0 and p244.Type == "Water" then
				l__ChangeStats__1(p241, p242, p242, 100, {
					matk = 1
				});
			end;
		end
	};
	v2.Tangled = {
		Description = "When this Doodle uses a Plant-type attack, they trap the target for three turns.", 
		BattleFunc = function(p245, p246, p247, p248)
			local v16 = p245:GetItemInfo(p247);
			if p248.Type == "Plant" and p247.Trapped == nil then
				if not v16.Grease then
					p247.Trapped = 4;
					p247.TrappedBy = p246.ID;
					p245:AddDialogue(p245.ActionList, "&DOODLENAME," .. p247.ID .. "& is trapped!");
					return;
				end;
			else
				return;
			end;
			p245:AddDialogue(p245.ActionList, "&DOODLENAME," .. p247.ID .. "& cannot be trapped due to Grease!");
		end
	};
	v2.Courteous = {
		Description = "This Doodle takes 25% less damage from high powered attacks, and this Doodle does 25% less damage with high powered attacks.", 
		ModifyDamage = function(p249, p250, p251, p252)
			if typeof(p252.Power) == "number" and p252.Power >= 100 then
				return 0.75;
			end;
			return 1;
		end, 
		ModifyDefendDamage = function(p253, p254, p255, p256, p257, p258, p259)
			if typeof(p256.Power) == "number" and p256.Power >= 100 then
				return 0.75;
			end;
			return 1;
		end
	};
	v2["Hard Candy"] = {
		Description = "When this Doodle uses a Food-type attack, they have a 50% chance to boost their defense.", 
		BattleFunc = function(p260, p261, p262, p263)
			if p263.Type == "Food" then
				l__ChangeStats__1(p260, p261, p261, 50, {
					def = 1
				});
			end;
		end
	};
	v2.Arsonist = {
		Description = "This Doodle\226\128\153s attacks have a 20% chance to burn.", 
		BattleFunc = function(p264, p265, p266, p267)
			if p267.Category ~= "Passive" and p266.currenthp > 0 then
				l__InflictStatus__2(p264, p265, p266, 20, "Burn", nil, "&DOODLENAME," .. p266.ID .. "&" .. " became burned because of " .. "&DOODLENAME," .. p265.ID .. "&' Arsonist!");
			end;
		end
	};
	v2["Mark Territory"] = {
		Description = "This Doodle\226\128\153s Beast-type attacks have a 50% chance to mark the target.", 
		BattleFunc = function(p268, p269, p270, p271)
			if p271.Type == "Beast" and p271.Category ~= "Passive" and p270.currenthp > 0 then
				l__InflictStatus__2(p268, p269, p270, 50, "Marked", nil, "&DOODLENAME," .. p270.ID .. "&" .. " became marked because of " .. "&DOODLENAME," .. p269.ID .. "&'s Mark Territory!");
			end;
		end
	};
	v2["Virulent Venom"] = {
		Description = "This Doodle\226\128\153s attacks have a 20% chance to poison.", 
		BattleFunc = function(p272, p273, p274, p275)
			if p275.Category ~= "Passive" and p274.currenthp > 0 then
				l__InflictStatus__2(p272, p273, p274, 20, "Poison", nil, "&DOODLENAME," .. p274.ID .. "&" .. " became poisoned because of " .. "&DOODLENAME," .. p273.ID .. "&'s Virulent Venom!");
			end;
		end
	};
	v2["Time Paralysis"] = {
		Description = "This Doodle\226\128\153s attacks have a 10% chance to paralyze.", 
		BattleFunc = function(p276, p277, p278, p279)
			if p279.Category ~= "Passive" and p278.currenthp > 0 and not l__Utilities__1.IsType(p278, "Earth") then
				l__InflictStatus__2(p276, p277, p278, 10, "Paralysis", nil, "&DOODLENAME," .. p278.ID .. "&" .. " became paralyzed because of " .. "&DOODLENAME," .. p277.ID .. "&'s Time Paralysis!");
			end;
		end
	};
	v2["Mind Control"] = {
		Description = "This Doodle\226\128\153s attacks have a 10% chance to enrage the target.", 
		BattleFunc = function(p280, p281, p282, p283)
			if p283.Category ~= "Passive" and p282.currenthp > 0 then
				l__InflictStatus__2(p280, p281, p282, 10, "Rage", nil, "&DOODLENAME," .. p282.ID .. "&" .. " is now angry because of " .. "&DOODLENAME," .. p281.ID .. "&'s Mind Control!");
			end;
		end
	};
	v2.Snailspeed = {
		Description = "In battle, this Doodle's speed is set to 1.", 
		ModifySpeed = function(p284, p285, p286)
			return 1;
		end
	};
	v2["Time Stop"] = {
		Description = "This Doodle always strikes first.", 
		PrioritySet = function(p287, p288, p289, p290)
			return p290 + 1;
		end
	};
	v2.Durable = {
		Description = "This Doodle can't be knocked out in one hit if they are at full health.", 
		DuringDamageCalc = function(p291, p292, p293, p294, p295)
			if typeof(p295) == "number" and p295 > 0 and p293.Stats.hp <= p295 and p293.Stats.hp <= p293.currenthp then
				p291:AddDialogue(p291.ActionList, "&DOODLENAME," .. p293.ID .. "& held on thanks to its Durable trait!");
				p295 = p293.Stats.hp - 1;
			end;
			return p295;
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
		SendOut = function(p296, p297, p298, p299)
			p297.Chlorokinesis = true;
			p297.OnHit = p297.OnHit or {};
			p297.OnHit.Chlorokinesis = function(p300, p301, p302, p303)
				if p297.Chlorokinesis and p297.currenthp > 0 and p303.Type == "Grass" then
					p300:AddDialogue(p300.ActionList, "&DOODLENAME," .. p297.ID .. "&'s next Mind-type attack is boosted!");
					p300.BuffNextDamage = "Mind";
				end;
			end;
		end
	};
	v2.Crispy = {
		Description = "This Doodle does 75% more damage while burned, but takes 25% damage from burn at the end of each turn.", 
		OverrideBurnModifier = true, 
		Crispy = true, 
		ModifyDamage = function(p304, p305, p306, p307)
			if p305.Status == "Burn" then
				return 1.75;
			end;
			return 1;
		end
	};
	v2["True Power"] = {
		Description = "When this Doodle is at low health, they do double damage.", 
		ModifyDamage = function(p308, p309, p310, p311)
			if p309.currenthp < p309.Stats.hp / 4 then
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
		DuringDamageCalc = function(p312, p313, p314, p315, p316)
			if (p316 == "Passive" or p316 > 0) and p313 ~= p314 and p315.Type == "Fire" then
				p316 = 0;
				p312:AddDialogue(p312.ActionList, "&DOODLENAME," .. p314.ID .. "& absorbed the Fire-type attack!");
				if not p314.FireUp then
					p314.FireUp = true;
					p312:AddDialogue(p312.ActionList, "&DOODLENAME," .. p314.ID .. "&'s Fire-type attacks became stronger!");
				end;
			end;
			return p316;
		end
	};
	v2.Conductor = {
		Description = "This Doodle's magical attack is boosted if hit by a Spark-type attack. They are also immune to Spark-type moves.", 
		DuringDamageCalc = function(p317, p318, p319, p320, p321)
			if (p321 == "Passive" or p321 > 0) and p318 ~= p319 and p320.Type == "Spark" then
				p321 = 0;
				p317:AddDialogue(p317.ActionList, "&DOODLENAME," .. p319.ID .. "& absorbed the Spark-type attack!");
				l__ChangeStats__1(p317, p319, p319, 100, {
					matk = 1
				});
			end;
			return p321;
		end, 
		ImmuneStatus = { "Paralysis" }
	};
	v2.Levitate = {
		Description = "This Doodle is immune to damaging Earth-type attacks.", 
		Levitate = true, 
		DuringDamageCalc = function(p322, p323, p324, p325, p326)
			if typeof(p326) == "number" and p326 > 0 and p323 ~= p324 and p325.Type == "Earth" then
				p326 = 0;
				p322:AddDialogue(p322.ActionList, "&DOODLENAME," .. p324.ID .. "& made the Earth-type move miss because of Levitate!");
			end;
			return p326;
		end
	};
	v2["Water Absorb"] = {
		Description = "This Doodle restores health if hit by a Water-type move instead of taking damage.", 
		DuringDamageCalc = function(p327, p328, p329, p330, p331)
			if (p331 == "Passive" or p331 > 0) and p328 ~= p329 and p330.Type == "Water" then
				p331 = 0;
				p327:AddDialogue(p327.ActionList, "&DOODLENAME," .. p329.ID .. "& absorbed the Water-type attack!");
				if p329.currenthp < p329.Stats.hp then
					p327:TakeDamage(p329, -math.floor(p329.Stats.hp / 2));
					p327:AddDialogue(p327.ActionList, "&DOODLENAME," .. p329.ID .. "& restored health!");
				end;
			end;
			return p331;
		end
	};
	v2["Poison Absorb"] = {
		Description = "This Doodle restores health if hit by a Poison-type move instead of taking damage.", 
		ImmuneStatus = { "Poison", "Diseased" }, 
		DuringDamageCalc = function(p332, p333, p334, p335, p336)
			if (p336 == "Passive" or p336 > 0) and p333 ~= p334 and p335.Type == "Poison" then
				p336 = 0;
				p332:AddDialogue(p332.ActionList, "&DOODLENAME," .. p334.ID .. "& absorbed the Poison-type attack!");
				if p334.currenthp < p334.Stats.hp then
					p332:TakeDamage(p334, -math.floor(p334.Stats.hp / 2));
					p332:AddDialogue(p332.ActionList, "&DOODLENAME," .. p334.ID .. "& restored health!");
				end;
			end;
			return p336;
		end
	};
	v2["Trump Card"] = {
		Description = "If this Doodle has a status condition, they do 50% more physical damage.", 
		OverrideBurnModifier = true, 
		ModifyDamage = function(p337, p338, p339, p340)
			if p340.Category == "Physical" and p338.Status then
				return 1.5;
			end;
			return 1;
		end
	};
	v2.Opportunist = {
		Description = "This Doodle does 25% more damage to targets with a status condition.", 
		ModifyDamage = function(p341, p342, p343, p344)
			if p343.Status then
				return 1.25;
			end;
			return 1;
		end
	};
	v2.Chanting = {
		Description = "This Doodle\226\128\153s sound-based moves do more damage when used consecutively.", 
		ModifyDamage = function(p345, p346, p347, p348)
			if not p348.Sound then
				return 1;
			end;
			return p346.ChantingMultiplier and 1;
		end, 
		BattleFunc = function(p349, p350, p351, p352)
			if p352.Sound then
				p350.ChantingMultiplier = p350.ChantingMultiplier and 1;
				p350.ChantingMultiplier = math.min(1.5, p350.ChantingMultiplier + 0.1);
			end;
		end
	};
	v2.Serenade = {
		Description = "This Doodle\226\128\153s sound-based moves have a 10% chance to make the target fall asleep.", 
		BattleFunc = function(p353, p354, p355, p356)
			if p356.Sound and p356.Category ~= "Passive" and p354 ~= p355 then
				l__InflictStatus__2(p353, p354, p355, 10, "Sleep", nil, "&DOODLENAME," .. p355.ID .. "&" .. " was put to sleep because of " .. "&DOODLENAME," .. p354.ID .. "&'s Serenade!");
			end;
		end
	};
	v2["Sand Surge"] = {
		Description = "This Doodle\226\128\153s attacks do 30% more damage while there is a sandstorm/", 
		ModifyDamage = function(p357, p358, p359, p360)
			if p357.Weather == "Sandstorm" then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Galvanize = {
		Description = "This Doodle\226\128\153s Basic-type moves become Spark-type, and do 30% more damage.", 
		ModifyDamage = function(p361, p362, p363, p364)
			if p364.Type ~= "Basic" then
				return 1;
			end;
			p364.Type = "Spark";
			return 1.3;
		end
	};
	v2.Routine = {
		Description = "Attack moves that are the same type as this Doodle do 50% more damage.", 
		BetterSTAB = true
	};
	v2["Jelly Lover"] = {
		Description = "This Doodle has a 50% chance to create another jelly after they consume one.", 
		EndTurn = function(p365, p366)
			if math.random(1, 2) == 1 and p366.HeldItem == nil and p366.Doodle.HeldItem and (p366.Doodle.HeldItem:find("Jelly") and not p366.NoRegen) then
				local l__HeldItem__17 = p366.Doodle.HeldItem;
				p365:AddDialogue(p365.ActionList, "&DOODLENAME," .. p366.ID .. "&" .. "'s Jelly Lover created another " .. l__HeldItem__17 .. "!");
				p366.HeldItem = l__HeldItem__17;
			end;
		end
	};
	v2.Apparition = {
		Description = "This Doodle\226\128\153s sound-based moves become Spirit-type.", 
		ModifyDamage = function(p367, p368, p369, p370)
			if p370.Sound then
				p370.Type = "Spirit";
			end;
			return 1;
		end
	};
	v2.Hypothermia = {
		Description = "If an opposing Doodle is frozen, they take damage at the end of each turn.", 
		EndTurnSpecific = function(p371, p372, p373)
			if p372.currenthp > 0 and p373.Status == "Frozen" then
				p371:TakeDamage(p373, (math.floor(p373.Stats.hp / 8)));
				p371:AddDialogue(p371.ActionList, "&DOODLENAME," .. p373.ID .. "&" .. " took damage from " .. "&DOODLENAME," .. p372.ID .. "&'s Hypothermia!");
			end;
		end
	};
	v2.Stitching = {
		Description = "This Doodle restores some health after getting hit with a contact move.", 
		OnHit = function(p374, p375, p376, p377)
			if p375.currenthp > 0 and p375.currenthp < p375.Stats.hp and p377.Contact then
				p374:TakeDamage(p375, -math.floor(p375.Stats.hp / 8));
				p374:AddDialogue(p374.ActionList, "&DOODLENAME," .. p375.ID .. "& restored health from its Stitching!");
			end;
		end
	};
	v2["Caloric Deficit"] = {
		Description = "This Doodle\226\128\153s Food-type moves do 30% more damage, but at the cost of health.", 
		ModifyDamage = function(p378, p379, p380, p381)
			if p381.Type == "Food" then
				return 1.3;
			end;
			return 1;
		end, 
		BattleFunc = function(p382, p383, p384, p385)
			if p385.Category ~= "Passive" and p385.Type == "Food" then
				p382:TakeDamage(p383, (math.floor(p383.Stats.hp / 8)));
				p382:AddDialogue(p382.ActionList, "&DOODLENAME," .. p383.ID .. "& lost health!");
			end;
		end
	};
	v2.Spool = {
		Description = "This Doodle\226\128\153s Basic-type moves do more damage, but at the cost of health.", 
		ModifyDamage = function(p386, p387, p388, p389)
			if p389.Type == "Basic" then
				return 1.2;
			end;
			return 1;
		end, 
		BattleFunc = function(p390, p391, p392, p393)
			if p393.Category ~= "Passive" and p393.Type == "Basic" then
				p390:TakeDamage(p391, (math.floor(p391.Stats.hp / 8)));
				p390:AddDialogue(p390.ActionList, "&DOODLENAME," .. p391.ID .. "& lost health!");
			end;
		end
	};
	local v18 = {
		Description = "When this doodle is sent out, create a temporary wind barrier that boosts allies' speed for 5 turns.", 
		Target = "Side"
	};
	function v18.SendOut(p394, p395, p396)
		if not p394:GetSideFromDoodle(p396).Sylphid then
			p394:AddDialogue(p394.ActionList, "&DOODLENAME," .. p395.ID .. "& creates a wind barrier!");
			p1.Database.Moves.Sylphid.BattleFunc(p394, p395, p395);
		end;
	end;
	v2["Wind's Favor"] = v18;
	v2.Refresh = {
		Description = "When this doodle is sent out, they heal themselves for 30% of their health total.", 
		Target = "Side", 
		SendOut = function(p397, p398, p399)
			if p398.currenthp > 0 then
				local v19 = math.floor(p398.Stats.hp * 0.3);
				p397:AddDialogue(p397.ActionList, "&DOODLENAME," .. p398.ID .. "& refreshed some of their health!");
				p397:TakeDamage(p398, -v19);
			end;
		end
	};
	v2.Crystalline = {
		Description = "When this doodle is sent out, create a temporary crystal wall that halves the opponent's physical damage.", 
		Target = "Side", 
		SendOut = function(p400, p401, p402)
			if not p400:GetSideFromDoodle(p402).CrystalWall then
				p400:AddDialogue(p400.ActionList, "&DOODLENAME," .. p401.ID .. "& creates a Crystal Wall!");
				p1.Database.Moves["Crystal Wall"].BattleFunc(p400, p401, p401);
			end;
		end
	};
	v2.Ugly = {
		Description = "When this doodle is sent out, taunt all opponents. Taunted opponents can't use Support moves.", 
		BeforeSendOut = function(p403, p404)
			p403:AddDialogue(p403.ActionList, "&DOODLENAME," .. p404.ID .. "& is very ugly!");
		end, 
		SendOut = function(p405, p406, p407)
			if not p407.Taunt then
				p1.Database.Moves.Taunt.BattleFunc(p405, p406, p407);
			end;
		end
	};
	v2["Chocolate Drizzle"] = {
		Description = "When this Doodle is sent out into battle, they summon Chocolate Rain.", 
		SendOut = function(p408, p409, p410)
			if p408.Weather ~= "Chocolate Rain" then
				p1.Database.Moves["Chocolate Rain"].BattleFunc(p408, p409, p409);
			end;
		end
	};
	v2["Spell Shield"] = {
		Description = "This Doodle takes half damage from magical attacks.", 
		Target = "Side", 
		ModifyDefendDamage = function(p411, p412, p413, p414, p415, p416, p417)
			if p414.Category == "Magical" then
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
		SendOut = function(p418, p419, p420)
			if p418.Weather == "Acid Rain" or p418.Weather == "Rain" or p418.Weather == "Chocolate Rain" then
				p418:AddDialogue(p418.ActionList, "&DOODLENAME," .. p419.ID .. "&'s Arid trait made it stop raining!");
				p418:AddDialogue(p418.ActionList, "The rain stopped.");
				p418.Weather = nil;
				p418.WeatherTurns = 0;
				p418:AddAction(p418.ActionList, {
					Action = "StopWeather"
				});
			end;
		end
	};
	v2.Corrosion = {
		Description = "When this Doodle is sent out into battle, they clear a random entry hazard from your side of the field.", 
		Target = "Side", 
		SendOut = function(p421, p422, p423)
			local v20 = p421:GetOppositeSideFromDoodle(p423);
			local v21 = {};
			local v22 = {
				YarnSnare = "Yarn Snare", 
				EntanglingVines = "Entangling Vines"
			};
			if v20.EntryHazards then
				for v23, v24 in pairs(v20.EntryHazards) do
					if v22[v23] then
						table.insert(v21, v23);
					end;
				end;
			end;
			if #v21 > 0 then
				local v25 = v21[math.random(#v21)];
				v20.EntryHazards[v25] = nil;
				p421:AddDialogue(p421.ActionList, "&DOODLENAME," .. p422.ID .. "&" .. "'s Corrosion destroyed the enemy's " .. v22[v25] .. "!");
			end;
		end
	};
	v2.Unraveling = {
		Description = "If this Doodle is hit with a super effective attack, boost their speed.", 
		OnHit = function(p424, p425, p426, p427)
			if p425.currenthp > 0 and p1.Database.Typings:GetEffectiveness(p426, p425, p427.Type) > 1 then
				l__ChangeStats__1(p424, p425, p425, 100, {
					spe = 1
				});
			end;
		end
	};
	v2["Poisonous Skin"] = {
		Description = "If this Doodle is hit with a contact move, the attacker has a 20% chance to become poisoned.", 
		OnHit = function(p428, p429, p430, p431)
			if p431.Contact then
				l__InflictStatus__2(p428, p429, p430, 20, "Poison", nil, "&DOODLENAME," .. p430.ID .. "&" .. " became poisoned because of " .. "&DOODLENAME," .. p429.ID .. "&'s Poisonous Skin!");
			end;
		end
	};
	v2.Robust = {
		Description = "This Doodle gets cured of any status effects when it gets switched out.", 
		SwapOut = function(p432, p433, p434)
			if p433.Status ~= nil and p433.Status ~= "Faint" then
				p433.Status = nil;
				p432:AddDialogue(p432.ActionList, "&DOODLENAME," .. p433.ID .. "&" .. " cured their " .. p433.Status:lower() .. " status with Robustness!");
				p432:AddAction(p432.ActionList, {
					Player = p433.Owner, 
					Doodle = p433, 
					Action = "StatusAnim", 
					Status = ""
				});
			end;
		end
	};
	v2.Gauze = {
		Description = "This Doodle gets cured of any status effects when it gets switched out.", 
		SwapOut = function(p435, p436, p437)
			if p436.Status ~= nil and p436.Status ~= "Faint" then
				p436.Status = nil;
				p435:AddDialogue(p435.ActionList, "&DOODLENAME," .. p436.ID .. "&" .. " cured their " .. p436.Status:lower() .. " status with Gauze!");
				p435:AddAction(p435.ActionList, {
					Player = p436.Owner, 
					Doodle = p436, 
					Action = "StatusAnim", 
					Status = ""
				});
			end;
		end
	};
	v2.Leech = {
		Description = "This Doodle\226\128\153s Insect-type attacks restore them for half the damage done.", 
		BattleFunc = function(p438, p439, p440, p441, p442)
			if typeof(p442) == "number" and p442 > 0 and p441.Type == "Insect" then
				local v26 = math.floor(p442 / 2);
				local v27 = p438:GetTraitInfo(p440);
				if v26 > 0 and p439.currenthp < p439.Stats.hp then
					if v27.Tainted then
						v26 = -v26;
					end;
					p438:AddAction(p438.ActionList, {
						Player = p440.Owner, 
						User = p439, 
						Doodle = p440, 
						Action = "PlayAnim", 
						Move = "Leaf Sap"
					});
					if v26 > 0 then
						p438:AddDialogue(p438.ActionList, "&DOODLENAME," .. p439.ID .. "& restored health!");
					else
						p438:AddDialogue(p438.ActionList, "&DOODLENAME," .. p439.ID .. "&" .. " took damage from &DOODLENAME," .. p440.ID .. "& Tainted trait!");
					end;
					p438:TakeDamage(p439, -v26);
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
		DuringDamageCalc = function(p443, p444, p445, p446, p447)
			if (p447 == "Passive" or p447 > 0) and p444 ~= p445 and p446.Type == "Plant" then
				p447 = 0;
				p443:AddDialogue(p443.ActionList, "&DOODLENAME," .. p445.ID .. "& absorbed the Plant-type attack!");
				if p445.currenthp < p445.Stats.hp then
					p443:TakeDamage(p445, -math.floor(p445.Stats.hp / 2));
					p443:AddDialogue(p443.ActionList, "&DOODLENAME," .. p445.ID .. "& restored health!");
				end;
			end;
			return p447;
		end
	};
	v2["Pollen Armor"] = {
		Description = "If this Doodle is hit with a contact move, the attacker has a 20% chance to fall asleep.", 
		OnHit = function(p448, p449, p450, p451)
			if p451.Contact then
				l__InflictStatus__2(p448, p449, p450, 20, "Sleep", nil, "&DOODLENAME," .. p450.ID .. "&" .. " fell asleep because of " .. "&DOODLENAME," .. p449.ID .. "&'s Pollen Armor!");
			end;
		end
	};
	v2["Razor Skin"] = {
		Description = "If this Doodle is hit with a contact move, the attacker becomes vulnerable.", 
		OnHit = function(p452, p453, p454, p455)
			if p455.Contact then
				l__InflictStatus__2(p452, p453, p454, 100, "Vulnerable", nil, "&DOODLENAME," .. p454.ID .. "&" .. " became Vulnerable because of " .. "&DOODLENAME," .. p453.ID .. "&'s Razor Skin!");
			end;
		end
	};
	v2.Electrocute = {
		Description = "If this Doodle is hit with a contact move, the attacker has a 30% chance to become paralyzed.", 
		OnHit = function(p456, p457, p458, p459)
			if p459.Contact and not l__Utilities__1.IsType(p458, "Earth") then
				l__InflictStatus__2(p456, p457, p458, 30, "Paralysis", nil, "&DOODLENAME," .. p458.ID .. "&" .. " became paralyzed because of " .. "&DOODLENAME," .. p457.ID .. "&'s Electrocute!");
			end;
		end
	};
	v2.Chef = {
		Description = "This Doodle does 30% more damage against Food types.", 
		ModifyDamage = function(p460, p461, p462, p463)
			if l__Utilities__1.IsType(p462, "Food") then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Spooky = {
		Description = "If this Doodle is hit with an attack, the attacker has a 25% chance to become cursed.", 
		OnHit = function(p464, p465, p466, p467)
			if p467.Category == "Physical" or p467.Category == "Magical" then
				l__InflictStatus__2(p464, p465, p466, 25, "Cursed", nil, "&DOODLENAME," .. p466.ID .. "&" .. " became cursed because of " .. "&DOODLENAME," .. p465.ID .. "&'s Spooky trait!");
			end;
		end
	};
	v2.Filament = {
		Description = "This Doodle is immune to Spark-type attacks. If this Doodle is hit by a Spark-type move, their Light-type moves do more damage.", 
		DuringDamageCalc = function(p468, p469, p470, p471, p472)
			if p471.Type == "Spark" and p469 ~= p470 and (p472 == "Passive" or p472 > 0) then
				p472 = 0;
				p470.LightBuff = 1.5;
				p468:AddDialogue(p468.ActionList, "&DOODLENAME," .. p470.ID .. "& absorbed the Spark-type attack!");
				p468:AddDialogue(p468.ActionList, "&DOODLENAME," .. p470.ID .. "&'s Light-type attacks have become stronger!");
				if not p470.ModFuncs.LightBuff then
					p470.ModFuncs.LightBuff = function(p473, p474, p475, p476)
						if p474.LightBuff and p476.Type == "Light" then
							return p474.LightBuff;
						end;
						return 1;
					end;
				end;
			end;
			return p472;
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
		PreventStatDisableFunc = function(p477, p478, p479, p480)
			p477:AddDialogue(p477.ActionList, "&DOODLENAME," .. p479.ID .. "&'s Lightfooted trait boosted its speed!");
			l__ChangeStats__1(p477, p479, p479, 100, {
				spe = -1 * p480
			});
		end
	};
	v2.Merciless = {
		Description = "When this Doodle's stats are lowered by an opponent, greatly boost this Doodle's attack.", 
		OnStatChange = function(p481, p482, p483, p484, p485)
			if p484 and p482.ID ~= p483.ID and not p481:IsAlly(p483, p482) and p483.Boosts.atk < 6 then
				l__ChangeStats__1(p481, p483, p483, 100, {
					atk = 2
				});
				p483.StatChangeLater = {
					atk = true
				};
				p483.LaterStatString = "&DOODLENAME," .. p483.ID .. "& is Merciless!";
			end;
		end
	};
	v2["Ramming Speed"] = {
		Description = "When this Doodle's speed is boosted, their defense is also boosted.", 
		OnStatSpecificChange = function(p486, p487, p488, p489, p490)
			if p489 and p490 == "spe" and p488.Boosts.def < 6 then
				l__ChangeStats__1(p486, p488, p488, 100, {
					def = 1
				});
				p488.StatChangeLater = {
					def = true
				};
				p488.LaterStatString = "&DOODLENAME," .. p488.ID .. "& has Ramming Speed!";
			end;
		end
	};
	v2.Vengeance = {
		Description = "This Doodle\226\128\153s attacks do 30% more damage if it was attacked this turn.", 
		ModifyDamage = function(p491, p492, p493, p494)
			if #p492.Revenge > 0 then
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
		DuringDamageCalc = function(p495, p496, p497, p498, p499)
			if (p499 == "Passive" or p499 > 0) and p496 ~= p497 and p498.Type == "Food" then
				p499 = 0;
				p495:AddDialogue(p495.ActionList, "&DOODLENAME," .. p497.ID .. "& absorbed the Food-type attack!");
				if p497.currenthp < p497.Stats.hp then
					p495:TakeDamage(p497, -math.floor(p497.Stats.hp / 2));
					p495:AddDialogue(p495.ActionList, "&DOODLENAME," .. p497.ID .. "& restored health!");
				end;
			end;
			return p499;
		end
	};
	v2.Exoskeleton = {
		Description = "This Doodle takes 30% less damage from contact attacks.", 
		ModifyDefendDamage = function(p500, p501, p502, p503, p504, p505, p506)
			if p503.Contact then
				return 0.7;
			end;
			return 1;
		end
	};
	v2["Titanium Bucket"] = {
		Description = "When this Doodle is sent out into battle, they boost their defense or magical defense, whichever is higher.", 
		Target = "Side", 
		SendOut = function(p507, p508, p509)
			p507:AddDialogue(p507.ActionList, "&DOODLENAME," .. p508.ID .. "& has a titanium bucket!");
			local v28 = "def";
			if p508.Stats.def < p508.Stats.mdef then
				v28 = "mdef";
			end;
			l__ChangeStats__1(p507, p508, p508, 100, {
				[v28] = 1
			});
		end
	};
	v2["Bon Appetit"] = {
		Description = "When this Doodle is sent out into battle, sprinkle Seasoning on opposing Doodles. Food-type Doodles do more damage to seasoned targets.", 
		BeforeSendOut = function(p510, p511)
			p510:AddDialogue(p510.ActionList, "&DOODLENAME," .. p511.ID .. "&'s applied Seasoning to the other team!");
		end, 
		SendOut = function(p512, p513, p514)
			p514.Seasoning = true;
		end
	};
	v2["Menacing Snarl"] = {
		Description = "When this Doodle is sent out into battle, they lower the attack of opposing Doodles.", 
		BeforeSendOut = function(p515, p516)
			p515:AddDialogue(p515.ActionList, "&DOODLENAME," .. p516.ID .. "&'s menacing snarl tried to lower the other team's attack!");
		end, 
		SendOut = function(p517, p518, p519)
			l__ChangeStats__1(p517, p518, p519, 100, {
				atk = -1
			});
		end
	};
	v2["Sickly Sweet"] = {
		Description = "When this Doodle is sent out into battle, they lower the magical attack of opposing Doodles.", 
		BeforeSendOut = function(p520, p521)
			p520:AddDialogue(p520.ActionList, "&DOODLENAME," .. p521.ID .. "&'s sweet aroma tried to lower the other team's magic attack!");
		end, 
		SendOut = function(p522, p523, p524)
			l__ChangeStats__1(p522, p523, p524, 100, {
				matk = -1
			});
		end
	};
	v2["Anti-Paralysis"] = {
		Description = "All party members are cured of paralysis when this Doodle is sent out into battle.", 
		SendOut = function(p525, p526, p527, p528)
			local v29 = nil;
			for v30, v31 in pairs(p525:FindSide(p526) == p525.Out1 and p525.Player1Party or p525.Player2Party) do
				if v31.Status == "Paralysis" then
					v31.Status = nil;
					v29 = true;
				end;
			end;
			if v29 then
				p525:AddDialogue(p525.ActionList, "&DOODLENAME," .. p526.ID .. "&'s cured all of their party members' paralysis!");
			end;
		end
	};
	v2["Ice Stream"] = {
		Description = "This Doodle\226\128\153s Ice-type moves always go first when this Doodle is at full health.", 
		PrioritySet = function(p529, p530, p531, p532)
			if p531.Type ~= "Ice" or p530.currenthp ~= p530.Stats.hp then
				return p532;
			end;
			return p532 + 1;
		end
	};
	v2.Ethereal = {
		Description = "Attacks on this Doodle miss 10% more often.", 
		AccCalc = function(p533, p534, p535, p536)
			local v32 = p536;
			if typeof(v32) == "number" then
				v32 = v32 * 0.9;
			end;
			return v32;
		end
	};
	v2.Duel = {
		Description = "This Doodle never misses or dodges.", 
		AccCalc = function(p537, p538, p539, p540)
			return true;
		end, 
		OffensiveAccCalc = function(p541, p542, p543, p544)
			return true;
		end
	};
	v2.Rapier = {
		Description = "This Doodle\226\128\153s priority moves do 20% more damage.", 
		ModifyDamage = function(p545, p546, p547, p548)
			if p548.Priority and p548.Priority >= 1 then
				return 1.2;
			end;
			return 1;
		end
	};
	v2.Reaper = {
		Description = "This Doodle restores health if an opposing Doodle faints.", 
		OnOpposingFaint = function(p549, p550, p551)
			local v33 = math.round(p550.Stats.hp * 0.3);
			if v33 > 0 and p550.currenthp > 0 and p550.currenthp < p550.Stats.hp and p551.ID ~= p550.ID then
				p549:AddDialogue(p549.ActionList, "&DOODLENAME," .. p550.ID .. "& reaped and recovered health!");
				p549:TakeDamage(p550, -v33);
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
		ModifyDamage = function(p552, p553, p554, p555)
			if p555.Slash then
				return 1.2;
			end;
			return 1;
		end
	};
	v2["Sharp Fangs"] = {
		Description = "This Doodle\226\128\153s biting moves have a 20% chance to make the target vulnerable.", 
		BattleFunc = function(p556, p557, p558, p559)
			if p559.Category ~= "Passive" and p559.Biting and p558.currenthp > 0 then
				l__InflictStatus__2(p556, p557, p558, 20, "Vulnerable", nil, "&DOODLENAME," .. p558.ID .. "&" .. " became Vulnerable because of " .. "&DOODLENAME," .. p557.ID .. "&'s Sharp Fangs!");
			end;
		end
	};
	v2.Overbite = {
		Description = "This Doodle\226\128\153s biting moves do 30% more damage but have 20% less accuracy.", 
		AttackModifier = function(p560, p561, p562, p563)
			if p563.Biting and typeof(p563.Accuracy) == "number" then
				p563.Accuracy = p563.Accuracy * 0.8;
			end;
		end, 
		ModifyDamage = function(p564, p565, p566, p567)
			if p567.Biting then
				return 1.3;
			end;
			return 1;
		end
	};
	v2.Thievery = {
		Description = "When this Doodle uses a contact move, they have a 25% chance to steal the target's held item.", 
		BattleFunc = function(p568, p569, p570, p571)
			local v34 = l__Utilities__1.GetTrait(p570);
			if p570.HeldItem and p571.Contact then
				if math.random(1, 4) > 1 then
					return;
				end;
				if p569.HeldItem then
					p568:AddDialogue(p568.ActionList, "&DOODLENAME," .. p569.ID .. "& already has a held item!");
					return;
				end;
				if v34 and v34.NoItemSteal then
					p568:AddDialogue(p568.ActionList, "&DOODLENAME," .. p570.ID .. "& is really protective of its held item!");
					return;
				end;
				p568:AddDialogue(p568.ActionList, "&DOODLENAME," .. p569.ID .. "&" .. " stole " .. p570.HeldItem .. " from " .. "&DOODLENAME," .. p570.ID .. "&!");
				p569.HeldItem = p570.HeldItem;
				p570.HeldItem = nil;
				p570.NoUpdateItem = true;
				p569.NoUpdateItem = true;
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
		SendOut = function(p572, p573, p574)
			p572:AddDialogue(p572.ActionList, "&DOODLENAME," .. p573.ID .. "&" .. " discovered that " .. "&DOODLENAME," .. p574.ID .. "&" .. " can use " .. p574.Moves[math.random(1, #p574.Moves)].Name .. "!");
		end
	};
	v2.Discover = {
		Description = "When this Doodle is sent out into battle, they discover the held items of opposing Doodles.", 
		SendOut = function(p575, p576, p577)
			if p577.HeldItem then
				p575:AddDialogue(p575.ActionList, "&DOODLENAME," .. p576.ID .. "&" .. " discovered " .. "&DOODLENAME," .. p577.ID .. "&" .. " is holding " .. p577.HeldItem .. "!");
				return;
			end;
			local v35 = false;
			for v36, v37 in pairs(p577.Equip) do
				if not v35 then
					v35 = true;
					break;
				end;
			end;
			if v35 and p575.BattleType == "Wild" then
				p575:AddDialogue(p575.ActionList, "&DOODLENAME," .. p576.ID .. "&" .. " discovered " .. "&DOODLENAME," .. p577.ID .. "& has equipment!");
				return;
			end;
			p575:AddDialogue(p575.ActionList, "&DOODLENAME," .. p576.ID .. "&" .. " discovered " .. "&DOODLENAME," .. p577.ID .. "& is holding nothing!");
		end
	};
	v2.Possession = {
		Description = "This Doodle copies the trait of any Doodle they attack.", 
		BattleFunc = function(p578, p579, p580, p581)
			if p581.Category ~= "Passive" and p579.Ability ~= p580.Ability then
				p578:AddDialogue(p578.ActionList, "&DOODLENAME," .. p579.ID .. "&" .. "'s ability became " .. p580.Ability .. "!");
				p579.Ability = p580.Ability;
				local v38 = p578:GetTraitInfo(p579);
				if v38.SendOut and p579.Ability ~= "Possession" then
					v38.SendOut(p578, p579, p580, p581);
				end;
			end;
		end, 
		SendOut = function(p582, p583, p584, p585)
			p583.Possession = true;
			if not p583.SendOut.Possession then
				p583.SendOut.Possession = function(p586, p587, p588)
					if p587.Possession then
						p587.Ability = "Possession";
						p586:AddDialogue(p586.ActionList, "&DOODLENAME," .. p587.ID .. "& is ready to possess!");
					end;
				end;
			end;
		end
	};
	v2["Destructive Anger"] = {
		Description = "This Doodle does 50% more damage if enraged.", 
		ModifyDamage = function(p589, p590, p591, p592)
			if p590.Status == "Rage" then
				return 1.5;
			end;
			return 1;
		end
	};
	v2.Covetous = {
		Description = "This Doodle does 25% more damage if the target has a held item.", 
		ModifyDamage = function(p593, p594, p595, p596)
			if p595.HeldItem ~= nil then
				return 1.25;
			end;
			return 1;
		end
	};
	v2.Envy = {
		Description = "This Doodle does 30% more damage if they don't have a held item.", 
		ModifyDamage = function(p597, p598, p599, p600)
			if p598.HeldItem == nil then
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
		BattleFunc = function(p601, p602, p603, p604)
			if p604.Type == "Beast" and p604.Category ~= "Passive" and p603.currenthp > 0 then
				l__InflictStatus__2(p601, p602, p603, 20, "Burn", nil, "&DOODLENAME," .. p603.ID .. "&" .. " got burned because of " .. "&DOODLENAME," .. p602.ID .. "&'s Burning Beast!");
			end;
		end
	};
	v2["Wish For Power"] = {
		Description = "When this Doodle is sent out into battle, they boost their attack or magical attack, depending on the opponent.", 
		Target = "Side", 
		SendOut = function(p605, p606, p607)
			p605:AddDialogue(p605.ActionList, "&DOODLENAME," .. p606.ID .. "& wished for power to be granted!");
			local v39 = "matk";
			if p607.Stats.def < p607.Stats.mdef then
				v39 = "atk";
			end;
			l__ChangeStats__1(p605, p606, p606, 100, {
				[v39] = 1
			});
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
