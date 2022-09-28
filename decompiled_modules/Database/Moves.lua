return function(p1)
    local v2 = p1.Utilities
    local v3 = v2.InflictStatus
    local v4 = v2.ChangeStats
    local v5 = {}
    local v6 = {}
    local v7 = 0
    v6.Min = v7
    v6.Max = 21.8
    v6.Power = 20
    v5[1] = v6
    local v4643 = {}
    v4643.Min = 21.8
    v4643.Max = 55
    v4643.Power = 40
    v5[2] = v4643
    local v4647 = {}
    v4647.Min = 55
    v4647.Max = 110
    v4647.Power = 60
    v5[3] = v4647
    local v4651 = {}
    v4651.Min = 110
    v4651.Max = 220
    v4651.Power = 80
    v5[4] = v4651
    local v4655 = {}
    v4655.Min = 220
    v4655.Max = 440
    v4655.Power = 100
    v5[5] = v4655
    local v4659 = {}
    v4659.Min = 440
    v4659.Max = 1000000
    v4659.Power = 120
    v5[6] = v4659
    local v4663 = {}
    local v4664 = {}
    v4664.Type = "Beast"
    v4664.Desc = "User bites the target. Has a chance to flinch."
    v4664.Category = "Physical"
    v4664.Accuracy = 100
    v4664.Contact = true
    v4664.Uses = 20
    local v4670 = {}
    local v9 = {}
    local v10 = {}
    v10.AnimType = "Bite"
    v10.Color = Color3.fromRGB(133, 104, 94)
    v10.Size = 0.75
    v10.Times = 1
    v10.Wait = 0.1
    v10.Pitch = 0.8
    v9[1] = v10
    v4670.Order = v9
    v4664.MoveAnim = v4670
    v4664.Biting = true
    v4664.Power = 50
    v4664.Target = "Single"
    local function BattleFunc_1(p2, p3, p4)
        v3(p2, p3, p4, 20, "Flinch")
    end
    v4664.BattleFunc = BattleFunc_1
    v4663.Bite = v4664
    local v4679 = {}
    BattleFunc_1 = "Basic"
    v4679.Type = BattleFunc_1
    BattleFunc_1 = "U shouldn't see this."
    v4679.Desc = BattleFunc_1
    BattleFunc_1 = "Physical"
    v4679.Category = BattleFunc_1
    BattleFunc_1 = 100
    v4679.Accuracy = BattleFunc_1
    BattleFunc_1 = 20
    v4679.Uses = BattleFunc_1
    BattleFunc_1 = {}
    local v4680 = {}
    local v4681 = {}
    v4681.AnimType = "HealSparkle"
    v4681.Size = 0.3
    v4680[1] = v4681
    BattleFunc_1.Order = v4680
    v4679.MoveAnim = BattleFunc_1
    local function BattleFunc_2(p5, p6, p7)
        v3(p5, p6, p7, 20, "Flinch")
    end
    v4679.BattleFunc = BattleFunc_2
    v4663.GenericHeal = v4679
    local v4684 = {}
    BattleFunc_2 = "Basic"
    v4684.Type = BattleFunc_2
    BattleFunc_2 = "Swipes target."
    v4684.Desc = BattleFunc_2
    BattleFunc_2 = {}
    local v4685 = {}
    local v4686 = {}
    v4686.AnimType = "Slash"
    v4686.Color = Color3.fromRGB(204, 204, 204)
    v4686.Size = 2
    v4686.Times = 1
    v4686.Wait = 0.05
    v4686.Pitch = 1.3
    v4685[1] = v4686
    BattleFunc_2.Order = v4685
    v4684.MoveAnim = BattleFunc_2
    BattleFunc_2 = true
    v4684.Contact = BattleFunc_2
    BattleFunc_2 = "Physical"
    v4684.Category = BattleFunc_2
    BattleFunc_2 = 100
    v4684.Accuracy = BattleFunc_2
    BattleFunc_2 = 30
    v4684.Uses = BattleFunc_2
    BattleFunc_2 = 35
    v4684.Power = BattleFunc_2
    BattleFunc_2 = "Single"
    v4684.Target = BattleFunc_2
    v4663.Swipe = v4684
    local v4693 = {}
    BattleFunc_2 = "Metal"
    v4693.Type = BattleFunc_2
    BattleFunc_2 = "Bonks the target with its head or an object. May cause the target to flinch."
    v4693.Desc = BattleFunc_2
    BattleFunc_2 = true
    v4693.Contact = BattleFunc_2
    BattleFunc_2 = "Physical"
    v4693.Category = BattleFunc_2
    BattleFunc_2 = 100
    v4693.Accuracy = BattleFunc_2
    BattleFunc_2 = 15
    v4693.Uses = BattleFunc_2
    BattleFunc_2 = 80
    v4693.Power = BattleFunc_2
    BattleFunc_2 = "Single"
    v4693.Target = BattleFunc_2
    local function BattleFunc_3(p8, p9, p10)
        v3(p8, p9, p10, 20, "Flinch")
    end
    v4693.BattleFunc = BattleFunc_3
    v4663.Bonk = v4693
    local v4694 = {}
    BattleFunc_3 = "Metal"
    v4694.Type = BattleFunc_3
    BattleFunc_3 = "Stabs target with a pointy object or weapon."
    v4694.Desc = BattleFunc_3
    BattleFunc_3 = true
    v4694.Contact = BattleFunc_3
    BattleFunc_3 = "Physical"
    v4694.Category = BattleFunc_3
    BattleFunc_3 = 90
    v4694.Accuracy = BattleFunc_3
    BattleFunc_3 = 25
    v4694.Uses = BattleFunc_3
    BattleFunc_3 = 50
    v4694.Power = BattleFunc_3
    BattleFunc_3 = "Single"
    v4694.Target = BattleFunc_3
    v4663.Stab = v4694
    local v4695 = {}
    BattleFunc_3 = "Basic"
    v4695.Type = BattleFunc_3
    BattleFunc_3 = "The user hops into the target."
    v4695.Desc = BattleFunc_3
    BattleFunc_3 = true
    v4695.Contact = BattleFunc_3
    BattleFunc_3 = "Physical"
    v4695.Category = BattleFunc_3
    BattleFunc_3 = 100
    v4695.Accuracy = BattleFunc_3
    BattleFunc_3 = 30
    v4695.Uses = BattleFunc_3
    BattleFunc_3 = 40
    v4695.Power = BattleFunc_3
    BattleFunc_3 = "Single"
    v4695.Target = BattleFunc_3
    v4663.Hop = v4695
    local v4696 = {}
    BattleFunc_3 = "Food"
    v4696.Type = BattleFunc_3
    BattleFunc_3 = "User charges at target while smelling delicious. This move can't miss."
    v4696.Desc = BattleFunc_3
    BattleFunc_3 = true
    v4696.Contact = BattleFunc_3
    BattleFunc_3 = "Physical"
    v4696.Category = BattleFunc_3
    BattleFunc_3 = true
    v4696.Accuracy = BattleFunc_3
    BattleFunc_3 = 30
    v4696.Uses = BattleFunc_3
    BattleFunc_3 = 40
    v4696.Power = BattleFunc_3
    BattleFunc_3 = "Single"
    v4696.Target = BattleFunc_3
    v4663["Spicy Tackle"] = v4696
    local v4697 = {}
    BattleFunc_3 = "Ice"
    v4697.Type = BattleFunc_3
    BattleFunc_3 = "User pierces the target's defense with icicles. This move ignores any stat changes the target has."
    v4697.Desc = BattleFunc_3
    BattleFunc_3 = "Physical"
    v4697.Category = BattleFunc_3
    BattleFunc_3 = 100
    v4697.Accuracy = BattleFunc_3
    BattleFunc_3 = true
    v4697.IgnoreStatChanges = BattleFunc_3
    BattleFunc_3 = 20
    v4697.Uses = BattleFunc_3
    BattleFunc_3 = 75
    v4697.Power = BattleFunc_3
    BattleFunc_3 = "Single"
    v4697.Target = BattleFunc_3
    v4663["Piercing Ice"] = v4697
    local v4698 = {}
    BattleFunc_3 = "Beast"
    v4698.Type = BattleFunc_3
    BattleFunc_3 = "User attacks using its horn."
    v4698.Desc = BattleFunc_3
    BattleFunc_3 = true
    v4698.Contact = BattleFunc_3
    BattleFunc_3 = "Physical"
    v4698.Category = BattleFunc_3
    BattleFunc_3 = 100
    v4698.Accuracy = BattleFunc_3
    BattleFunc_3 = 20
    v4698.Uses = BattleFunc_3
    BattleFunc_3 = 50
    v4698.Power = BattleFunc_3
    BattleFunc_3 = "Single"
    v4698.Target = BattleFunc_3
    v4663["Horn Pierce"] = v4698
    local v4699 = {}
    BattleFunc_3 = "Food"
    v4699.Type = BattleFunc_3
    BattleFunc_3 = "Greatly boosts the user's highest stat."
    v4699.Desc = BattleFunc_3
    BattleFunc_3 = "Passive"
    v4699.Category = BattleFunc_3
    BattleFunc_3 = true
    v4699.Accuracy = BattleFunc_3
    BattleFunc_3 = 5
    v4699.Uses = BattleFunc_3
    BattleFunc_3 = nil
    v4699.Power = BattleFunc_3
    BattleFunc_3 = "Self"
    v4699.Target = BattleFunc_3
    local function BattleFunc_4(p11, p12, p13)
        local v42 = "atk"
        local v43 = {}
        local v46 = "mdef"
        local v48 = "mdef"
        v43[1] = "atk"
        v43[2] = "def"
        v43[3] = v46
        v43[4] = "matk"
        v43[5] = v48
        local v49, v50, v46 = pairs(v43)
        for v47, v48 in v49, v50, v46 do
            if p12.Stats[v48] > p12.Stats[v42] then
                v42 = v48
            end
        end
        v49 = v4
        v50 = p11
        v46 = p12
        v52 = {}
        v51 = 2
        v52[v42] = v51
        v49(v50, v46, p12, 100, v52)
    end
    v4699.BattleFunc = BattleFunc_4
    v4663["Cake Walk"] = v4699
    local v4700 = {}
    BattleFunc_4 = "Food"
    v4700.Type = BattleFunc_4
    BattleFunc_4 = "Summons food to throw. May lower the target's accuracy."
    v4700.Desc = BattleFunc_4
    BattleFunc_4 = "Magical"
    v4700.Category = BattleFunc_4
    BattleFunc_4 = 100
    v4700.Accuracy = BattleFunc_4
    BattleFunc_4 = 20
    v4700.Uses = BattleFunc_4
    BattleFunc_4 = 65
    v4700.Power = BattleFunc_4
    BattleFunc_4 = "Single"
    v4700.Target = BattleFunc_4
    local function BattleFunc_5(p14, p15, p16)
        local v65 = {}
        v65.acc = -1
        v4(p14, p15, p16, 20, v65)
    end
    v4700.BattleFunc = BattleFunc_5
    v4663["Food Fight"] = v4700
    local v4701 = {}
    BattleFunc_5 = "Beast"
    v4701.Type = BattleFunc_5
    BattleFunc_5 = "User attacks using its claws."
    v4701.Desc = BattleFunc_5
    BattleFunc_5 = true
    v4701.Contact = BattleFunc_5
    BattleFunc_5 = "Physical"
    v4701.Category = BattleFunc_5
    BattleFunc_5 = 100
    v4701.Accuracy = BattleFunc_5
    BattleFunc_5 = 20
    v4701.Uses = BattleFunc_5
    BattleFunc_5 = 60
    v4701.Power = BattleFunc_5
    BattleFunc_5 = "Single"
    v4701.Target = BattleFunc_5
    v4663["Sharp Claws"] = v4701
    local v4702 = {}
    BattleFunc_5 = "Basic"
    v4702.Type = BattleFunc_5
    BattleFunc_5 = "Smacks target with its tail."
    v4702.Desc = BattleFunc_5
    BattleFunc_5 = true
    v4702.Contact = BattleFunc_5
    BattleFunc_5 = "Physical"
    v4702.Category = BattleFunc_5
    BattleFunc_5 = 100
    v4702.Accuracy = BattleFunc_5
    BattleFunc_5 = 15
    v4702.Uses = BattleFunc_5
    BattleFunc_5 = 60
    v4702.Power = BattleFunc_5
    BattleFunc_5 = "Single"
    v4702.Target = BattleFunc_5
    v4663["Tail Smack"] = v4702
    local v4703 = {}
    BattleFunc_5 = "Basic"
    v4703.Type = BattleFunc_5
    BattleFunc_5 = "Smacks target with its body or hands."
    v4703.Desc = BattleFunc_5
    BattleFunc_5 = true
    v4703.Contact = BattleFunc_5
    BattleFunc_5 = "Physical"
    v4703.Category = BattleFunc_5
    BattleFunc_5 = 100
    v4703.Accuracy = BattleFunc_5
    BattleFunc_5 = 30
    v4703.Uses = BattleFunc_5
    BattleFunc_5 = 40
    v4703.Power = BattleFunc_5
    BattleFunc_5 = "Single"
    v4703.Target = BattleFunc_5
    v4663.Smack = v4703
    local v4704 = {}
    BattleFunc_5 = "Basic"
    v4704.Type = BattleFunc_5
    BattleFunc_5 = "The user charges target, doing damage."
    v4704.Desc = BattleFunc_5
    BattleFunc_5 = true
    v4704.Contact = BattleFunc_5
    BattleFunc_5 = "Physical"
    v4704.Category = BattleFunc_5
    BattleFunc_5 = 100
    v4704.Accuracy = BattleFunc_5
    BattleFunc_5 = 30
    v4704.Uses = BattleFunc_5
    BattleFunc_5 = 40
    v4704.Power = BattleFunc_5
    BattleFunc_5 = "Single"
    v4704.Target = BattleFunc_5
    v4663.Charge = v4704
    local v4705 = {}
    BattleFunc_5 = "Melee"
    v4705.Type = BattleFunc_5
    BattleFunc_5 = "The user spins around and kicks, aiming to lower the opponent's speed."
    v4705.Desc = BattleFunc_5
    BattleFunc_5 = true
    v4705.Contact = BattleFunc_5
    BattleFunc_5 = "Physical"
    v4705.Category = BattleFunc_5
    BattleFunc_5 = 80
    v4705.Accuracy = BattleFunc_5
    BattleFunc_5 = 5
    v4705.Uses = BattleFunc_5
    BattleFunc_5 = 100
    v4705.Power = BattleFunc_5
    BattleFunc_5 = "Single"
    v4705.Target = BattleFunc_5
    local function BattleFunc_6(p17, p18, p19)
        local v73 = {}
        v73.spe = -1
        v4(p17, p18, p19, 100, v73)
    end
    v4705.BattleFunc = BattleFunc_6
    v4663["Roundhouse Kick"] = v4705
    local v4706 = {}
    BattleFunc_6 = "Melee"
    v4706.Type = BattleFunc_6
    BattleFunc_6 = "The user pummels the target. Has a chance to lower the attack of the opponent."
    v4706.Desc = BattleFunc_6
    BattleFunc_6 = true
    v4706.Contact = BattleFunc_6
    BattleFunc_6 = "Physical"
    v4706.Category = BattleFunc_6
    BattleFunc_6 = 100
    v4706.Accuracy = BattleFunc_6
    BattleFunc_6 = 20
    v4706.Uses = BattleFunc_6
    BattleFunc_6 = 60
    v4706.Power = BattleFunc_6
    BattleFunc_6 = "Single"
    v4706.Target = BattleFunc_6
    local function BattleFunc_7(p20, p21, p22)
        local v81 = {}
        v81.atk = -1
        v4(p20, p21, p22, 20, v81)
    end
    v4706.BattleFunc = BattleFunc_7
    v4663.Pummel = v4706
    local v4707 = {}
    BattleFunc_7 = "Melee"
    v4707.Type = BattleFunc_7
    BattleFunc_7 = "A spinning kick. This attack hits 2-5 times."
    v4707.Desc = BattleFunc_7
    local function Times_1(p23)
        return math.random(2, 5)
    end
    v4707.Times = Times_1
    Times_1 = 5
    v4707.MaxHit = Times_1
    Times_1 = true
    v4707.Contact = Times_1
    Times_1 = "Physical"
    v4707.Category = Times_1
    Times_1 = 85
    v4707.Accuracy = Times_1
    Times_1 = 10
    v4707.Uses = Times_1
    Times_1 = 20
    v4707.Power = Times_1
    Times_1 = "Single"
    v4707.Target = Times_1
    v4663["Helicopter Kick"] = v4707
    local v4708 = {}
    Times_1 = "Melee"
    v4708.Type = Times_1
    Times_1 = "Jabs the target repeatedly. This attack hits 2-4 times."
    v4708.Desc = Times_1
    local function Times_2(p24)
        return math.random(2, 4)
    end
    v4708.Times = Times_2
    Times_2 = 5
    v4708.MaxHit = Times_2
    Times_2 = true
    v4708.Contact = Times_2
    Times_2 = "Physical"
    v4708.Category = Times_2
    Times_2 = 90
    v4708.Accuracy = Times_2
    Times_2 = 15
    v4708.Uses = Times_2
    Times_2 = 25
    v4708.Power = Times_2
    Times_2 = "Single"
    v4708.Target = Times_2
    v4663.Flurry = v4708
    local v4709 = {}
    Times_2 = "Basic"
    v4709.Type = Times_2
    Times_2 = "Smacks the target repeatedly. This attack hits 2-5 times."
    v4709.Desc = Times_2
    local function Times_3(p25)
        return math.random(2, 5)
    end
    v4709.Times = Times_3
    Times_3 = 5
    v4709.MaxHit = Times_3
    Times_3 = true
    v4709.Contact = Times_3
    Times_3 = "Physical"
    v4709.Category = Times_3
    Times_3 = 90
    v4709.Accuracy = Times_3
    Times_3 = 15
    v4709.Uses = Times_3
    Times_3 = 20
    v4709.Power = Times_3
    Times_3 = "Single"
    v4709.Target = Times_3
    v4663["Multi-Smack"] = v4709
    local v4710 = {}
    Times_3 = "Basic"
    v4710.Type = Times_3
    Times_3 = "Swipes target. This attack hits 2-5 times."
    v4710.Desc = Times_3
    Times_3 = {}
    local v4711 = {}
    local v4712 = {}
    v4712.AnimType = "Slash"
    v4712.Color = Color3.fromRGB(204, 204, 204)
    v4712.Size = 2
    v4712.Times = 1
    v4712.Wait = 0.05
    v4712.Pitch = 1.3
    v4711[1] = v4712
    Times_3.Order = v4711
    v4710.MoveAnim = Times_3
    local function Times_4(p26)
        return math.random(2, 5)
    end
    v4710.Times = Times_4
    Times_4 = 5
    v4710.MaxHit = Times_4
    Times_4 = true
    v4710.Contact = Times_4
    Times_4 = "Physical"
    v4710.Category = Times_4
    Times_4 = 90
    v4710.Accuracy = Times_4
    Times_4 = 15
    v4710.Uses = Times_4
    Times_4 = 25
    v4710.Power = Times_4
    Times_4 = "Single"
    v4710.Target = Times_4
    v4663["Claw Swipes"] = v4710
    local v4719 = {}
    Times_4 = "Basic"
    v4719.Type = Times_4
    Times_4 = "User rams into the target."
    v4719.Desc = Times_4
    Times_4 = "Physical"
    v4719.Category = Times_4
    Times_4 = 90
    v4719.Accuracy = Times_4
    Times_4 = true
    v4719.Contact = Times_4
    Times_4 = 40
    v4719.Uses = Times_4
    Times_4 = 40
    v4719.Power = Times_4
    Times_4 = "Single"
    v4719.Target = Times_4
    v4663.Ram = v4719
    local v4720 = {}
    Times_4 = "Mind"
    v4720.Type = Times_4
    Times_4 = "The user covers itself with psychic energy and attacks. Has a chance to flinch."
    v4720.Desc = Times_4
    Times_4 = "Physical"
    v4720.Category = Times_4
    Times_4 = 85
    v4720.Accuracy = Times_4
    Times_4 = true
    v4720.Contact = Times_4
    Times_4 = 20
    v4720.Uses = Times_4
    Times_4 = 80
    v4720.Power = Times_4
    Times_4 = "Single"
    v4720.Target = Times_4
    local function BattleFunc_8(p27, p28, p29)
        v3(p27, p28, p29, 20, "Flinch")
    end
    v4720.BattleFunc = BattleFunc_8
    v4663["Psychic Ram"] = v4720
    local v4721 = {}
    BattleFunc_8 = "Plant"
    v4721.Type = BattleFunc_8
    BattleFunc_8 = "The user shoots spikes at the target."
    v4721.Desc = BattleFunc_8
    BattleFunc_8 = "Physical"
    v4721.Category = BattleFunc_8
    BattleFunc_8 = 95
    v4721.Accuracy = BattleFunc_8
    BattleFunc_8 = 20
    v4721.Uses = BattleFunc_8
    BattleFunc_8 = 50
    v4721.Power = BattleFunc_8
    BattleFunc_8 = "Single"
    v4721.Target = BattleFunc_8
    v4663["Needle Spike"] = v4721
    local v4722 = {}
    BattleFunc_8 = "Plant"
    v4722.Type = BattleFunc_8
    BattleFunc_8 = "The user assaults the target with seeds. Has a chance to flinch."
    v4722.Desc = BattleFunc_8
    BattleFunc_8 = "Physical"
    v4722.Category = BattleFunc_8
    BattleFunc_8 = 100
    v4722.Accuracy = BattleFunc_8
    BattleFunc_8 = 15
    v4722.Uses = BattleFunc_8
    BattleFunc_8 = 90
    v4722.Power = BattleFunc_8
    BattleFunc_8 = "Single"
    v4722.Target = BattleFunc_8
    local function BattleFunc_9(p30, p31, p32)
        v3(p30, p31, p32, 25, "Flinch")
    end
    v4722.BattleFunc = BattleFunc_9
    v4663["Seed Assault"] = v4722
    local v4723 = {}
    BattleFunc_9 = "Basic"
    v4723.Type = BattleFunc_9
    BattleFunc_9 = "User headbutts the target. Has a chance to flinch."
    v4723.Desc = BattleFunc_9
    BattleFunc_9 = "Physical"
    v4723.Category = BattleFunc_9
    BattleFunc_9 = 100
    v4723.Accuracy = BattleFunc_9
    BattleFunc_9 = true
    v4723.Contact = BattleFunc_9
    BattleFunc_9 = 20
    v4723.Uses = BattleFunc_9
    BattleFunc_9 = 60
    v4723.Power = BattleFunc_9
    BattleFunc_9 = "Single"
    v4723.Target = BattleFunc_9
    local function BattleFunc_10(p33, p34, p35)
        v3(p33, p34, p35, 20, "Flinch")
    end
    v4723.BattleFunc = BattleFunc_10
    v4663.Headbutt = v4723
    local v4724 = {}
    BattleFunc_10 = "Food"
    v4724.Type = BattleFunc_10
    BattleFunc_10 = "The user performs a ritual, summoning chocolate rain to the battlefield. This replaces any other current weather effects."
    v4724.Desc = BattleFunc_10
    BattleFunc_10 = "Passive"
    v4724.Category = BattleFunc_10
    BattleFunc_10 = true
    v4724.Accuracy = BattleFunc_10
    BattleFunc_10 = 10
    v4724.Uses = BattleFunc_10
    BattleFunc_10 = nil
    v4724.Power = BattleFunc_10
    BattleFunc_10 = "Self"
    v4724.Target = BattleFunc_10
    local function BattleFunc_11(p36, p37, p38)
        local v125 = p36.Weather
        p36:AddDialogue(p36.ActionList, "It is already raining chocolate!")
        return 
        p36.Weather = "Chocolate Rain"
        p36.WeatherTurns = 5
        p36:AddDialogue(p36.ActionList, "It started raining chocolate!")
        local v132 = {}
        v132.Player = p37.Owner
        v132.Doodle = p37
        v132.Action = "StartWeather"
        v132.Weather = "Chocolate Rain"
        p36:AddAction(p36.ActionList, v132)
    end
    v4724.BattleFunc = BattleFunc_11
    v4663["Chocolate Rain"] = v4724
    local v4725 = {}
    BattleFunc_11 = "Earth"
    v4725.Type = BattleFunc_11
    BattleFunc_11 = "The user performs a ritual, summoning a sandstorm to the battlefield. This replaces any other current weather effects."
    v4725.Desc = BattleFunc_11
    BattleFunc_11 = "Passive"
    v4725.Category = BattleFunc_11
    BattleFunc_11 = true
    v4725.Accuracy = BattleFunc_11
    BattleFunc_11 = 10
    v4725.Uses = BattleFunc_11
    BattleFunc_11 = nil
    v4725.Power = BattleFunc_11
    BattleFunc_11 = "Self"
    v4725.Target = BattleFunc_11
    local function BattleFunc_12(p39, p40, p41)
        local v139 = p39.Weather
        p39:AddDialogue(p39.ActionList, "There's already a sandstorm!")
        return 
        p39.Weather = "Sandstorm"
        p39.WeatherTurns = 5
        p39:AddDialogue(p39.ActionList, "A sandstorm brewed!")
        local v146 = {}
        v146.Player = p40.Owner
        v146.Doodle = p40
        v146.Action = "StartWeather"
        v146.Weather = "Sandstorm"
        p39:AddAction(p39.ActionList, v146)
    end
    v4725.BattleFunc = BattleFunc_12
    v4663.Sandstorm = v4725
    local v4726 = {}
    BattleFunc_12 = "Poison"
    v4726.Type = BattleFunc_12
    BattleFunc_12 = "The user performs a ritual, summoning acid rain to the battlefield. This replaces any other current weather effects."
    v4726.Desc = BattleFunc_12
    BattleFunc_12 = "Passive"
    v4726.Category = BattleFunc_12
    BattleFunc_12 = true
    v4726.Accuracy = BattleFunc_12
    BattleFunc_12 = 10
    v4726.Uses = BattleFunc_12
    BattleFunc_12 = nil
    v4726.Power = BattleFunc_12
    BattleFunc_12 = "Self"
    v4726.Target = BattleFunc_12
    local function BattleFunc_13(p42, p43, p44)
        local v153 = p42.Weather
        p42:AddDialogue(p42.ActionList, "It is already raining acid!")
        return 
        p42.Weather = "Acid Rain"
        p42.WeatherTurns = 5
        p42:AddDialogue(p42.ActionList, "It started raining acid!")
        local v160 = {}
        v160.Player = p43.Owner
        v160.Doodle = p43
        v160.Action = "StartWeather"
        v160.Weather = "Acid Rain"
        p42:AddAction(p42.ActionList, v160)
    end
    v4726.BattleFunc = BattleFunc_13
    v4663["Acid Rain"] = v4726
    local v4727 = {}
    BattleFunc_13 = "Ice"
    v4727.Type = BattleFunc_13
    BattleFunc_13 = "The user turns the field into ice, sometimes causing attackers to miss their attacks."
    v4727.Desc = BattleFunc_13
    BattleFunc_13 = "Passive"
    v4727.Category = BattleFunc_13
    BattleFunc_13 = true
    v4727.Accuracy = BattleFunc_13
    BattleFunc_13 = 10
    v4727.Uses = BattleFunc_13
    BattleFunc_13 = nil
    v4727.Power = BattleFunc_13
    BattleFunc_13 = "Self"
    v4727.Target = BattleFunc_13
    local function BattleFunc_14(p45, p46, p47)
        local v167 = p45.Field
        p45:AddDialogue(p45.ActionList, "The floor is already icy!")
        p45:AddDialogue(p45.ActionList, "The field turned into slippery ice!")
        p45.Field = "IcyFloor"
        p45.FieldTurns = nil
        p45.FieldEffects = {}
        local function v174(p48, p49, p50, p51)
            local v175 = p49.Stats
            local v176 = v175.hp
            local v179 = math.floor(v176 * 0.25)
            local v180 = 0
            if v179 > v180 then
                v180 = p51.Contact
                if not v180 then
                    v180 = p51.Type
                    v176 = v2
                    v180 = v176.IsType
                    v176 = p49
                    v175 = "Ice"
                    local v181 = v180(v176, v175)
                    if v181 then
                        v181 = v2.IsType
                        if v181(p49, "Air") then
                            local v187 = {}
                            v187[1] = "&DOODLENAME," .. p49.ID .. "&" .. " slipped on the ice and took damage!"
                            p48:TakeDamage(p49, v179, v187)
                        end
                    end
                end
            end
        end
        p45.FieldEffects.OnMiss = v174
        v174 = function(p52, p53, p54, p55)
            local v194 = p55.Accuracy
            local v197 = typeof(v194)
            v197 = v2.IsType
            local v200 = v197(p46, "Ice")
            if v200 then
                v200 = v2.IsType
                if v200(p46, "Ice") then
                    v194 = v194 * 0.9
                end
            end
            return v194
        end
        p45.FieldEffects.AccCalc = v174
        v174 = function(p56, p57, p58, p59)
            local v206 = p59.Type
            v206 = p56.Field
            p56:AddDialogue(p56.ActionList, "The Fire-type attack melted away the Icy Floor!")
            p56.Field = nil
            p56.FieldTurns = nil
            p56.FieldEffects = {}
            p56.FieldTurns = {}
        end
        p45.FieldEffects.BattleFunc = v174
    end
    v4727.BattleFunc = BattleFunc_14
    v4663["Icy Floor"] = v4727
    local v4728 = {}
    BattleFunc_14 = "Dark"
    v4728.Type = BattleFunc_14
    BattleFunc_14 = "The user darkens the field, making Dark-type attacks do more damage and Light-type attacks do less damage."
    v4728.Desc = BattleFunc_14
    BattleFunc_14 = "Passive"
    v4728.Category = BattleFunc_14
    BattleFunc_14 = true
    v4728.Accuracy = BattleFunc_14
    BattleFunc_14 = 10
    v4728.Uses = BattleFunc_14
    BattleFunc_14 = nil
    v4728.Power = BattleFunc_14
    BattleFunc_14 = "Self"
    v4728.Target = BattleFunc_14
    local function BattleFunc_15(p60, p61, p62)
        local v219 = p60.Field
        p60:AddDialogue(p60.ActionList, "The field is already dark enough!")
        local v223 = {}
        v223.Action = "ChangeFieldColor"
        v223.NewColor = Color3.fromRGB(40, 40, 40)
        p60:AddAction(p60.ActionList, v223)
        p60:AddDialogue(p60.ActionList, "The field became dark!")
        p60.Field = "DarknessExpansion"
        p60.FieldTurns = nil
        p60.FieldEffects = {}
        local function v234(p63, p64, p65, p66)
            local v235 = p66.Accuracy
            local v238 = typeof(v235)
            v238 = v2.IsType
            local v241 = v238(p61, "Dark")
            if v241 then
                v241 = p66.Category
                v235 = v235 * 0.9
            end
            return v235
        end
        p60.FieldEffects.AccCalc = v234
        v234 = function(p67, p68, p69, p70)
            return p70 * 2
        end
        p60.FieldEffects.ModifyStatChance = v234
        v234 = function(p71, p72, p73, p74, p75, p76, p77)
            local v246 = typeof(p74.Power)
            v246 = p74.Type
            v246 = 1.25
            return v246
            local v247 = p74.Type
            v247 = 0.5
            return v247
            return 1
        end
        p60.FieldEffects.ModifyDamage = v234
        v234 = function(p78, p79, p80, p81)
            local v249 = p81.Type
            v249 = p78.Field
            local v251 = {}
            v251.Action = "ChangeFieldColor"
            v251.NewColor = Color3.fromRGB(255, 255, 255)
            p78:AddAction(p78.ActionList, v251)
            p78:AddDialogue(p78.ActionList, "The Light-type attack got rid of the darkness!")
            p78.Field = nil
            p78.FieldTurns = nil
            p78.FieldEffects = {}
            p78.FieldTurns = {}
        end
        p60.FieldEffects.BattleFunc = v234
    end
    v4728.BattleFunc = BattleFunc_15
    v4663["Darkness Expansion"] = v4728
    local v4729 = {}
    BattleFunc_15 = "Water"
    v4729.Type = BattleFunc_15
    BattleFunc_15 = "The user performs a ritual, summoning rain to the battlefield. This replaces any other weather effects."
    v4729.Desc = BattleFunc_15
    BattleFunc_15 = "Passive"
    v4729.Category = BattleFunc_15
    BattleFunc_15 = true
    v4729.Accuracy = BattleFunc_15
    BattleFunc_15 = 10
    v4729.Uses = BattleFunc_15
    BattleFunc_15 = nil
    v4729.Power = BattleFunc_15
    BattleFunc_15 = "Self"
    v4729.Target = BattleFunc_15
    local function BattleFunc_16(p82, p83, p84)
        local v273 = p82.Weather
        p82:AddDialogue(p82.ActionList, "It is already raining!")
        return 
        p82.Weather = "Rain"
        local v289 = p83.Ability
        p82.WeatherTurns = 10
        p82:AddDialogue(p82.ActionList, "&DOODLENAME," .. p83.ID .. "&" .. "'s Heavy Storm trait made the rain last longer!")
        p82.WeatherTurns = 5
        p82:AddDialogue(p82.ActionList, "It started raining!")
        local v287 = {}
        v287.Player = p83.Owner
        v287.Doodle = p83
        v287.Action = "StartWeather"
        v287.Weather = "Rain"
        p82:AddAction(p82.ActionList, v287)
    end
    v4729.BattleFunc = BattleFunc_16
    v4663.Rainmaker = v4729
    local v4730 = {}
    BattleFunc_16 = "Crystal"
    v4730.Type = BattleFunc_16
    BattleFunc_16 = "The user surrounds its body with crystals, greatly boosting its defense. The next attack it uses, if its Crystal-type, does more damage."
    v4730.Desc = BattleFunc_16
    BattleFunc_16 = "Passive"
    v4730.Category = BattleFunc_16
    BattleFunc_16 = true
    v4730.Accuracy = BattleFunc_16
    BattleFunc_16 = 20
    v4730.Uses = BattleFunc_16
    BattleFunc_16 = nil
    v4730.Power = BattleFunc_16
    BattleFunc_16 = "Self"
    v4730.Target = BattleFunc_16
    local function BattleFunc_17(p85, p86, p87)
        local v300 = {}
        v300.def = 2
        v4(p85, p86, p87, 100, v300)
        p86.BuffNextDamage = "Crystal"
    end
    v4730.BattleFunc = BattleFunc_17
    v4663["Crystal Armor"] = v4730
    local v4731 = {}
    BattleFunc_17 = "Ice"
    v4731.Type = BattleFunc_17
    BattleFunc_17 = "User makes a snowfort, greatly boosting its defense."
    v4731.Desc = BattleFunc_17
    BattleFunc_17 = "Passive"
    v4731.Category = BattleFunc_17
    BattleFunc_17 = true
    v4731.Accuracy = BattleFunc_17
    BattleFunc_17 = 20
    v4731.Uses = BattleFunc_17
    BattleFunc_17 = nil
    v4731.Power = BattleFunc_17
    BattleFunc_17 = "Self"
    v4731.Target = BattleFunc_17
    local function BattleFunc_18(p88, p89, p90)
        local v309 = {}
        v309.def = 2
        v4(p88, p89, p90, 100, v309)
    end
    v4731.BattleFunc = BattleFunc_18
    v4663["Snow Fort"] = v4731
    local v4732 = {}
    BattleFunc_18 = "Earth"
    v4732.Type = BattleFunc_18
    BattleFunc_18 = "User gathers sediments to surround its body, greatly boosting its defense but greatly lowering its magical defense. If there's a sandstorm, magical defense isn't lowered."
    v4732.Desc = BattleFunc_18
    BattleFunc_18 = "Passive"
    v4732.Category = BattleFunc_18
    BattleFunc_18 = true
    v4732.Accuracy = BattleFunc_18
    BattleFunc_18 = 20
    v4732.Uses = BattleFunc_18
    BattleFunc_18 = nil
    v4732.Power = BattleFunc_18
    BattleFunc_18 = "Self"
    v4732.Target = BattleFunc_18
    local function BattleFunc_19(p91, p92, p93)
        local v317 = {}
        v317.def = 2
        v4(p91, p92, p93, 100, v317)
        local v319 = p91.Weather
        v319 = v4
        local v324 = {}
        v324.mdef = -2
        v319(p91, p92, p93, 100, v324)
    end
    v4732.BattleFunc = BattleFunc_19
    v4663["Sedimentary Defense"] = v4732
    local v4733 = {}
    BattleFunc_19 = "Water"
    v4733.Type = BattleFunc_19
    BattleFunc_19 = "The user summons a current to gains speed. If it's raining, drastically increase its speed instead."
    v4733.Desc = BattleFunc_19
    BattleFunc_19 = "Passive"
    v4733.Category = BattleFunc_19
    BattleFunc_19 = true
    v4733.Accuracy = BattleFunc_19
    BattleFunc_19 = 20
    v4733.Uses = BattleFunc_19
    BattleFunc_19 = nil
    v4733.Power = BattleFunc_19
    BattleFunc_19 = "Self"
    v4733.Target = BattleFunc_19
    local function BattleFunc_20(p94, p95, p96)
        local v327 = p94.Weather
        v327 = v4
        local v332 = {}
        v332.spe = 3
        v327(p94, p95, p96, 100, v332)
        return 
        local v339 = {}
        v339.spe = 1
        v4(p94, p95, p96, 100, v339)
    end
    v4733.BattleFunc = BattleFunc_20
    v4663["Rapid Current"] = v4733
    local v4734 = {}
    BattleFunc_20 = "Basic"
    v4734.Type = BattleFunc_20
    BattleFunc_20 = "Using magic, the user restores half their health."
    v4734.Desc = BattleFunc_20
    BattleFunc_20 = "Passive"
    v4734.Category = BattleFunc_20
    BattleFunc_20 = true
    v4734.Accuracy = BattleFunc_20
    BattleFunc_20 = true
    v4734.Heal = BattleFunc_20
    BattleFunc_20 = 5
    v4734.Uses = BattleFunc_20
    BattleFunc_20 = nil
    v4734.Power = BattleFunc_20
    BattleFunc_20 = "Self"
    v4734.Target = BattleFunc_20
    local function BattleFunc_21(p97, p98, p99)
        local v342 = p98.Stats
        local v343 = v342.hp
        local v346 = math.floor(v343 / 2)
        local v347 = 0
        if v346 > v347 then
            v343 = p98.Stats
            v347 = v343.hp
            v343 = p98.currenthp
            if v347 > v343 then
                v342 = p97.ActionList
                p97:AddDialogue(v342, "&DOODLENAME," .. p98.ID .. "&" .. " restored health!")
                p97:TakeDamage(p98, -v346)
                return 
            end
        end
        p97:AddDialogue(p97.ActionList, "It had no effect!")
    end
    v4734.BattleFunc = BattleFunc_21
    v4663.Heal = v4734
    local v4735 = {}
    BattleFunc_21 = "Food"
    v4735.Type = BattleFunc_21
    BattleFunc_21 = "The user hosts a grand feast, healing them by half their health."
    v4735.Desc = BattleFunc_21
    BattleFunc_21 = "Passive"
    v4735.Category = BattleFunc_21
    BattleFunc_21 = true
    v4735.Accuracy = BattleFunc_21
    BattleFunc_21 = true
    v4735.Heal = BattleFunc_21
    BattleFunc_21 = 5
    v4735.Uses = BattleFunc_21
    BattleFunc_21 = nil
    v4735.Power = BattleFunc_21
    BattleFunc_21 = "Self"
    v4735.Target = BattleFunc_21
    local function BattleFunc_22(p100, p101, p102)
        local v360 = p101.Stats
        local v361 = v360.hp
        local v364 = math.floor(v361 / 2)
        local v365 = 0
        if v364 > v365 then
            v361 = p101.Stats
            v365 = v361.hp
            v361 = p101.currenthp
            if v365 > v361 then
                v360 = p100.ActionList
                p100:AddDialogue(v360, "&DOODLENAME," .. p101.ID .. "&" .. " restored health!")
                p100:TakeDamage(p101, -v364)
                return 
            end
        end
        p100:AddDialogue(p100.ActionList, "It had no effect!")
    end
    v4735.BattleFunc = BattleFunc_22
    v4663.Feast = v4735
    local v4736 = {}
    BattleFunc_22 = "Basic"
    v4736.Type = BattleFunc_22
    BattleFunc_22 = "The user gets ready to combo with its ally. The ally does more damage on its next attack."
    v4736.Desc = BattleFunc_22
    BattleFunc_22 = "Passive"
    v4736.Category = BattleFunc_22
    BattleFunc_22 = true
    v4736.Accuracy = BattleFunc_22
    BattleFunc_22 = 5
    v4736.Priority = BattleFunc_22
    BattleFunc_22 = 20
    v4736.Uses = BattleFunc_22
    BattleFunc_22 = nil
    v4736.Power = BattleFunc_22
    BattleFunc_22 = "Self"
    v4736.Target = BattleFunc_22
    BattleFunc_22 = "Ally"
    v4736.SpecialTarget = BattleFunc_22
    local function BattleFunc_23(p103, p104, p105)
        if 0 >= p105.currenthp then
            p103:AddDialogue(p103.ActionList, "But there's no one there...")
            return 
        end
        local v382 = p103.Format
        if p104 == p105 then
            p103:AddDialogue(p103.ActionList, "But it failed!")
            return 
        end
        local v385 = p103.Format
        p103:AddDialogue(p103.ActionList, "&DOODLENAME," .. p104.ID .. "&" .. " is ready to combo with " .. "&DOODLENAME," .. p105.ID .. "&" .. "!")
        p105.ComboSupport = true
    end
    v4736.BattleFunc = BattleFunc_23
    v4663["Combo Support"] = v4736
    local v4737 = {}
    BattleFunc_23 = "Basic"
    v4737.Type = BattleFunc_23
    BattleFunc_23 = "The user becomes enraged and yells at their ally to do better. The ally's attack and defense are boosted."
    v4737.Desc = BattleFunc_23
    BattleFunc_23 = "Passive"
    v4737.Category = BattleFunc_23
    BattleFunc_23 = true
    v4737.Accuracy = BattleFunc_23
    BattleFunc_23 = 10
    v4737.Uses = BattleFunc_23
    BattleFunc_23 = nil
    v4737.Power = BattleFunc_23
    BattleFunc_23 = "Self"
    v4737.Target = BattleFunc_23
    BattleFunc_23 = "Ally"
    v4737.SpecialTarget = BattleFunc_23
    local function BattleFunc_24(p106, p107, p108)
        local v399 = 0
        if v399 >= p108.currenthp then
            p106:AddDialogue(p106.ActionList, "But there's no one there...")
            return 
        end
        local v402 = p106.Format
        if p107 == p108 then
            p106:AddDialogue(p106.ActionList, "But it failed!")
            return 
        end
        local v405 = p106.Format
        p106:AddDialogue(p106.ActionList, "&DOODLENAME," .. p107.ID .. "&" .. " yelled at  " .. "&DOODLENAME," .. p108.ID .. "&" .. "!")
        p107.Status = nil
        v399 = p106
        v3(v399, p107, p107, 100, "Rage", true)
        local v424 = {}
        v424.atk = 1
        v424.def = 1
        v4(p106, p107, p108, 100, v424)
    end
    v4737.BattleFunc = BattleFunc_24
    v4663["Drill Sergeant"] = v4737
    local v4738 = {}
    BattleFunc_24 = "Basic"
    v4738.Type = BattleFunc_24
    BattleFunc_24 = "The user hypes up their ally. The ally's attack and magic attack are boosted."
    v4738.Desc = BattleFunc_24
    BattleFunc_24 = "Passive"
    v4738.Category = BattleFunc_24
    BattleFunc_24 = true
    v4738.Accuracy = BattleFunc_24
    BattleFunc_24 = 10
    v4738.Uses = BattleFunc_24
    BattleFunc_24 = nil
    v4738.Power = BattleFunc_24
    BattleFunc_24 = "Self"
    v4738.Target = BattleFunc_24
    BattleFunc_24 = "Ally"
    v4738.SpecialTarget = BattleFunc_24
    local function BattleFunc_25(p109, p110, p111)
        local v433 = 0
        if v433 >= p111.currenthp then
            p109:AddDialogue(p109.ActionList, "But there's no one there...")
            return 
        end
        local v436 = p109.Format
        if p110 == p111 then
            p109:AddDialogue(p109.ActionList, "But it failed!")
            return 
        end
        local v439 = p109.Format
        p109:AddDialogue(p109.ActionList, "&DOODLENAME," .. p110.ID .. "&" .. " hyped up  " .. "&DOODLENAME," .. p111.ID .. "&" .. "!")
        v433 = p109
        local v454 = {}
        v454.atk = 1
        v454.def = 1
        v4(v433, p110, p111, 100, v454)
    end
    v4738.BattleFunc = BattleFunc_25
    v4663["Hype Up"] = v4738
    local v4739 = {}
    BattleFunc_25 = "Melee"
    v4739.Type = BattleFunc_25
    BattleFunc_25 = "The user shields itself and its allies from priority moves."
    v4739.Desc = BattleFunc_25
    BattleFunc_25 = "Passive"
    v4739.Category = BattleFunc_25
    BattleFunc_25 = true
    v4739.Accuracy = BattleFunc_25
    BattleFunc_25 = 3
    v4739.Priority = BattleFunc_25
    BattleFunc_25 = {}
    local v4740 = {}
    local v4741 = {}
    v4741.AnimType = "Protect"
    v4741.Color = "Melee"
    v4740[1] = v4741
    BattleFunc_25.Order = v4740
    v4739.MoveAnim = BattleFunc_25
    BattleFunc_25 = 20
    v4739.Uses = BattleFunc_25
    BattleFunc_25 = nil
    v4739.Power = BattleFunc_25
    BattleFunc_25 = "Self"
    v4739.Target = BattleFunc_25
    local function BattleFunc_26(p112, p113, p114)
        local v462 = {}
        local v463 = p114.Owner
        v462.Player = v463
        v462.User = p113
        v462.Doodle = p114
        v462.Action = "PlayAnim"
        v462.Move = "Swift Shield"
        p112:AddAction(p112.ActionList, v462)
        local v467, v468, v469 = pairs(p112:FindSide(p113))
        for v477, v463 in v467, v468, v469 do
            v463.SwiftShield = true
            p112:AddDialogue(p112.ActionList, "&DOODLENAME," .. p113.ID .. "&" .. "'s side is protected with Swift Shield!")
        end
    end
    v4739.BattleFunc = BattleFunc_26
    v4663["Swift Shield"] = v4739
    local v4744 = {}
    BattleFunc_26 = "Mind"
    v4744.Type = BattleFunc_26
    BattleFunc_26 = "The user shields itself and its allies from multi-target moves."
    v4744.Desc = BattleFunc_26
    BattleFunc_26 = "Passive"
    v4744.Category = BattleFunc_26
    BattleFunc_26 = true
    v4744.Accuracy = BattleFunc_26
    BattleFunc_26 = 3
    v4744.Priority = BattleFunc_26
    BattleFunc_26 = {}
    local v4745 = {}
    local v4746 = {}
    v4746.AnimType = "Protect"
    v4746.Color = "Mind"
    v4745[1] = v4746
    BattleFunc_26.Order = v4745
    v4744.MoveAnim = BattleFunc_26
    BattleFunc_26 = 20
    v4744.Uses = BattleFunc_26
    BattleFunc_26 = nil
    v4744.Power = BattleFunc_26
    BattleFunc_26 = "Self"
    v4744.Target = BattleFunc_26
    local function BattleFunc_27(p115, p116, p117)
        local v485 = {}
        local v486 = p117.Owner
        v485.Player = v486
        v485.User = p116
        v485.Doodle = p117
        v485.Action = "PlayAnim"
        v485.Move = "Wide Shield"
        p115:AddAction(p115.ActionList, v485)
        local v490, v491, v492 = pairs(p115:FindSide(p116))
        for v500, v486 in v490, v491, v492 do
            v486.WideShield = true
            p115:AddDialogue(p115.ActionList, "&DOODLENAME," .. p116.ID .. "&" .. "'s side is protected with Wide Shield!")
        end
    end
    v4744.BattleFunc = BattleFunc_27
    v4663["Wide Shield"] = v4744
    local v4749 = {}
    BattleFunc_27 = "Basic"
    v4749.Type = BattleFunc_27
    BattleFunc_27 = "The user patches up the target, healing them by half their health."
    v4749.Desc = BattleFunc_27
    BattleFunc_27 = "Passive"
    v4749.Category = BattleFunc_27
    BattleFunc_27 = true
    v4749.Accuracy = BattleFunc_27
    BattleFunc_27 = true
    v4749.Heal = BattleFunc_27
    BattleFunc_27 = 10
    v4749.Uses = BattleFunc_27
    BattleFunc_27 = nil
    v4749.Power = BattleFunc_27
    BattleFunc_27 = "Single"
    v4749.Target = BattleFunc_27
    local function BattleFunc_28(p118, p119, p120)
        local v504 = p120.Stats
        local v505 = v504.hp
        local v508 = math.floor(v505 / 2)
        local v509 = 0
        if v508 > v509 then
            v509 = p120.currenthp
            v505 = 0
            if v509 > v505 then
                v505 = p120.Stats
                v509 = v505.hp
                v505 = p120.currenthp
                if v509 > v505 then
                    v504 = p118.ActionList
                    p118:AddDialogue(v504, "&DOODLENAME," .. p120.ID .. "&" .. " restored health!")
                    p118:TakeDamage(p120, -v508)
                    return 
                end
            end
        end
        p118:AddDialogue(p118.ActionList, "It had no effect!")
    end
    v4749.BattleFunc = BattleFunc_28
    v4663.Relief = v4749
    local v4750 = {}
    BattleFunc_28 = "Earth"
    v4750.Type = BattleFunc_28
    BattleFunc_28 = "The user mends itself, resetting any negative stat changes the user has."
    v4750.Desc = BattleFunc_28
    BattleFunc_28 = "Passive"
    v4750.Category = BattleFunc_28
    BattleFunc_28 = true
    v4750.Accuracy = BattleFunc_28
    BattleFunc_28 = true
    v4750.Heal = BattleFunc_28
    BattleFunc_28 = 5
    v4750.Uses = BattleFunc_28
    BattleFunc_28 = nil
    v4750.Power = BattleFunc_28
    BattleFunc_28 = "Self"
    v4750.Target = BattleFunc_28
    local function BattleFunc_29(p121, p122, p123)
        local v522
        local v525, v526, v527 = pairs(p122.Boosts)
        for v530, v531 in v525, v526, v527 do
            local v529 = p122.Boosts[v530]
            local v537 = 0
            if v537 > v529 then
                v529 = p122.Boosts
                v537 = 0
                v529[v530] = v537
                v522 = true
            end
        end
        if not v522 then
            v527 = p121.ActionList
            v531 = "All of "
            v529 = "&DOODLENAME,"
            v528 = p122.ID
            v530 = v531 .. v529 .. v528 .. "&" .. "'s negative stat changes have been reset!"
            p121:AddDialogue(v527, v530)
            return 
        end
        p121:AddDialogue(p121.ActionList, "There was nothing to fix!")
    end
    v4750.BattleFunc = BattleFunc_29
    v4663.Mend = v4750
    local v4751 = {}
    BattleFunc_29 = "Spirit"
    v4751.Type = BattleFunc_29
    BattleFunc_29 = "The user consumes its held item to replenish its moves and all of its health."
    v4751.Desc = BattleFunc_29
    BattleFunc_29 = "Passive"
    v4751.Category = BattleFunc_29
    BattleFunc_29 = true
    v4751.Accuracy = BattleFunc_29
    BattleFunc_29 = true
    v4751.Heal = BattleFunc_29
    BattleFunc_29 = 5
    v4751.Uses = BattleFunc_29
    BattleFunc_29 = nil
    v4751.Power = BattleFunc_29
    BattleFunc_29 = "Self"
    v4751.Target = BattleFunc_29
    local function BattleFunc_30(p124, p125, p126)
        local v539 = p125.Stats
        local v542 = math.floor(v539.hp)
        local v543 = p125.HeldItem
        if not v543 then
            v543 = 0
            if v542 > v543 then
                v539 = p125.Stats
                v543 = v539.hp
                v539 = p125.currenthp
                if v543 > v539 then
                    local v545 = "&DOODLENAME,"
                    local v546 = p125.ID
                    local v547 = "&"
                    local v548 = " consumed its "
                    p124:AddDialogue(p124.ActionList, v545 .. v546 .. v547 .. v548 .. p125.HeldItem .. "!")
                    p125.HeldItem = nil
                    p125:NewHeldItem(p124)
                    p124:TakeDamage(p125, -v542)
                    p124:AddDialogue(p124.ActionList, "&DOODLENAME," .. p125.ID .. "&" .. " restored health!")
                    v539 = p125.Moves
                    local v561, v562, v563 = pairs(v539)
                    for v564, v545 in v561, v562, v563 do
                        v547 = p125.Moves
                        v546 = v547[v564]
                        v548 = v2
                        v547 = v548.GetMaxUses
                        v548 = v545.Name
                        v546.Uses = v547(v548)
                    end
                    return 
                end
            end
        end
        v561 = p125.HeldItem
        if v561 then
            v563 = p124.ActionList
            v545 = "&DOODLENAME,"
            v546 = p125.ID
            v565 = "&"
            v564 = v545 .. v546 .. v565 .. " doesn't have a held item!"
            p124:AddDialogue(v563, v564)
            p124:AddDialogue(p124.ActionList, "It had no effect!")
            return 
        end
        p124:AddDialogue(p124.ActionList, "It had no effect!")
    end
    v4751.BattleFunc = BattleFunc_30
    v4663["Consume Treasure"] = v4751
    local v4752 = {}
    BattleFunc_30 = "Light"
    v4752.Type = BattleFunc_30
    BattleFunc_30 = "The user emits a beacon of light to replenish its other moves and a third of its maximum health."
    v4752.Desc = BattleFunc_30
    BattleFunc_30 = "Passive"
    v4752.Category = BattleFunc_30
    BattleFunc_30 = true
    v4752.Accuracy = BattleFunc_30
    BattleFunc_30 = true
    v4752.Heal = BattleFunc_30
    BattleFunc_30 = 5
    v4752.Uses = BattleFunc_30
    BattleFunc_30 = nil
    v4752.Power = BattleFunc_30
    BattleFunc_30 = "Self"
    v4752.Target = BattleFunc_30
    local function BattleFunc_31(p127, p128, p129)
        local v578 = p128.Stats
        local v579 = v578.hp
        local v582 = math.floor(v579 / 3)
        local v583 = 0
        if v582 > v583 then
            v579 = p128.Stats
            v583 = v579.hp
            v579 = p128.currenthp
            if v583 > v579 then
                v578 = p127.ActionList
                local v584 = "&DOODLENAME,"
                local v585 = p128.ID
                local v586 = "&"
                local v587 = " restored health!"
                p127:AddDialogue(v578, v584 .. v585 .. v586 .. v587)
                p127:TakeDamage(p128, -v582)
                v579 = p128.Moves
                local v593, v594, v595 = pairs(v579)
                for v596, v584 in v593, v594, v595 do
                    v585 = v584.Name
                    v586 = p128.Moves
                    v585 = v586[v596]
                    v587 = v2.GetMaxUses
                    v586 = math.min
                    v585.Uses = v586(v587(v584.Name), v584.Uses + 3)
                end
                return 
            end
        end
        v595 = p127.ActionList
        v596 = "It had no effect!"
        p127:AddDialogue(v595, v596)
    end
    v4752.BattleFunc = BattleFunc_31
    v4663["Hope Beacon"] = v4752
    local v4753 = {}
    BattleFunc_31 = "Water"
    v4753.Type = BattleFunc_31
    BattleFunc_31 = "The user uses the power of the ocean to heal itself by a quarter of their health. If it is raining, heals them by half instead."
    v4753.Desc = BattleFunc_31
    BattleFunc_31 = "Passive"
    v4753.Category = BattleFunc_31
    BattleFunc_31 = true
    v4753.Accuracy = BattleFunc_31
    BattleFunc_31 = true
    v4753.Heal = BattleFunc_31
    BattleFunc_31 = 10
    v4753.Uses = BattleFunc_31
    BattleFunc_31 = nil
    v4753.Power = BattleFunc_31
    BattleFunc_31 = "Self"
    v4753.Target = BattleFunc_31
    local function BattleFunc_32(p130, p131, p132)
        local v608 = math.floor(p131.Stats.hp / 4)
        local v609 = p130.Weather
        local v610 = p131.Stats
        local v623 = v610.hp
        v609 = math.floor
        v608 = v609(v623 / 2)
        local v625 = 0
        if v608 > v625 then
            v625 = p131.Stats.hp
            if v625 > p131.currenthp then
                v623 = p130.ActionList
                v610 = "&DOODLENAME," .. p131.ID .. "&" .. " restored health!"
                p130:AddDialogue(v623, v610)
                p130:TakeDamage(p131, -v608)
                return 
            end
        end
        p130:AddDialogue(p130.ActionList, "It had no effect!")
    end
    v4753.BattleFunc = BattleFunc_32
    v4663["Storm Heal"] = v4753
    local v4754 = {}
    BattleFunc_32 = "Air"
    v4754.Type = BattleFunc_32
    BattleFunc_32 = "The user whips up a massive hurricane, doing massive damage. This greatly lowers the attacker's magic attack."
    v4754.Desc = BattleFunc_32
    BattleFunc_32 = "Magical"
    v4754.Category = BattleFunc_32
    BattleFunc_32 = 90
    v4754.Accuracy = BattleFunc_32
    BattleFunc_32 = 5
    v4754.Uses = BattleFunc_32
    BattleFunc_32 = 140
    v4754.Power = BattleFunc_32
    BattleFunc_32 = "Single"
    v4754.Target = BattleFunc_32
    local function BattleFunc_33(p133, p134, p135)
        local v633 = {}
        v633.matk = -2
        v4(p133, p134, p134, 100, v633)
    end
    v4754.BattleFunc = BattleFunc_33
    v4663["Aero Storm"] = v4754
    local v4755 = {}
    BattleFunc_33 = "Plant"
    v4755.Type = BattleFunc_33
    BattleFunc_33 = "The user summons a tornado with leaves, doing massive damage. This greatly lowers the attacker's magic attack."
    v4755.Desc = BattleFunc_33
    BattleFunc_33 = "Magical"
    v4755.Category = BattleFunc_33
    BattleFunc_33 = 90
    v4755.Accuracy = BattleFunc_33
    BattleFunc_33 = 5
    v4755.Uses = BattleFunc_33
    BattleFunc_33 = 140
    v4755.Power = BattleFunc_33
    BattleFunc_33 = "Single"
    v4755.Target = BattleFunc_33
    local function BattleFunc_34(p136, p137, p138)
        local v641 = {}
        v641.matk = -2
        v4(p136, p137, p137, 100, v641)
    end
    v4755.BattleFunc = BattleFunc_34
    v4663["Leaf Tornado"] = v4755
    local v4756 = {}
    BattleFunc_34 = "Insect"
    v4756.Type = BattleFunc_34
    BattleFunc_34 = "The user causes the target to fear insects, doing damage to their psyche. This attack may cause confusion."
    v4756.Desc = BattleFunc_34
    BattleFunc_34 = "Magical"
    v4756.Category = BattleFunc_34
    BattleFunc_34 = 100
    v4756.Accuracy = BattleFunc_34
    BattleFunc_34 = 10
    v4756.Uses = BattleFunc_34
    BattleFunc_34 = 90
    v4756.Power = BattleFunc_34
    BattleFunc_34 = "Single"
    v4756.Target = BattleFunc_34
    local function BattleFunc_35(p139, p140, p141)
        v3(p139, p140, p141, 20, "Confuse")
    end
    v4756.BattleFunc = BattleFunc_35
    v4663.Entomophobia = v4756
    local v4757 = {}
    BattleFunc_35 = "Insect"
    v4757.Type = BattleFunc_35
    BattleFunc_35 = "The ultimate insect move. The user, with its mandible or jaws, does massive damage."
    v4757.Desc = BattleFunc_35
    BattleFunc_35 = "Physical"
    v4757.Category = BattleFunc_35
    BattleFunc_35 = 100
    v4757.Accuracy = BattleFunc_35
    BattleFunc_35 = 10
    v4757.Uses = BattleFunc_35
    BattleFunc_35 = 100
    v4757.Power = BattleFunc_35
    BattleFunc_35 = true
    v4757.Contact = BattleFunc_35
    BattleFunc_35 = "Single"
    v4757.Target = BattleFunc_35
    v4663["Mandible Wound"] = v4757
    local v4758 = {}
    BattleFunc_35 = "Metal"
    v4758.Type = BattleFunc_35
    BattleFunc_35 = "Slashing their sword, this attack does massive damage to all opposing doodles. Has a high chance to lower the target's defense."
    v4758.Desc = BattleFunc_35
    BattleFunc_35 = "Physical"
    v4758.Category = BattleFunc_35
    BattleFunc_35 = 100
    v4758.Accuracy = BattleFunc_35
    BattleFunc_35 = 10
    v4758.Uses = BattleFunc_35
    BattleFunc_35 = true
    v4758.Contact = BattleFunc_35
    BattleFunc_35 = true
    v4758.Slash = BattleFunc_35
    BattleFunc_35 = 85
    v4758.Power = BattleFunc_35
    BattleFunc_35 = "AllFoes"
    v4758.Target = BattleFunc_35
    local function BattleFunc_36(p142, p143, p144)
        local v656 = {}
        v656.def = -1
        v4(p142, p143, p144, 50, v656)
    end
    v4758.BattleFunc = BattleFunc_36
    v4663["Sword Sweep"] = v4758
    local v4759 = {}
    BattleFunc_36 = "Melee"
    v4759.Type = BattleFunc_36
    BattleFunc_36 = "The user challenges the opponents to a duel, boosting the user's attack and magical attack. The user can't switch out or flee for three turns."
    v4759.Desc = BattleFunc_36
    BattleFunc_36 = "Passive"
    v4759.Category = BattleFunc_36
    BattleFunc_36 = true
    v4759.Accuracy = BattleFunc_36
    BattleFunc_36 = 10
    v4759.Uses = BattleFunc_36
    BattleFunc_36 = nil
    v4759.Power = BattleFunc_36
    BattleFunc_36 = "Self"
    v4759.Target = BattleFunc_36
    local function BattleFunc_37(p145, p146, p147)
        if not p145:GetItemInfo(p147).Grease then
            p145:AddDialogue(p145.ActionList, "&DOODLENAME," .. p147.ID .. "&" .. " cannot be trapped due to Grease!")
        else
            local v669 = p147.Trapped
            v669 = p146.ID
            p147.TrappedBy = v669
            p147.Trapped = 4
            v664 = "&DOODLENAME,"
            v665 = p147.ID
            v666 = "&"
            v667 = " is trapped!"
            p145:AddDialogue(p145.ActionList, v664 .. v665 .. v666 .. v667)
            v664 = "&DOODLENAME,"
            v665 = p147.ID
            v666 = "&"
            v667 = " is already trapped!"
            p145:AddDialogue(p145.ActionList, v664 .. v665 .. v666 .. v667)
        end
        v664 = 100
        v665 = {}
        v666 = 1
        v665.atk = v666
        v666 = 1
        v665.matk = v666
        v4(p145, p146, p146, v664, v665)
    end
    v4759.BattleFunc = BattleFunc_37
    v4663.Challenge = v4759
    local v4760 = {}
    BattleFunc_37 = "Basic"
    v4760.Type = BattleFunc_37
    BattleFunc_37 = "The user breaks their armor, lowering their defense and magical defense stats, but greatly boosting its attack, magical attack, and speed."
    v4760.Desc = BattleFunc_37
    BattleFunc_37 = "Passive"
    v4760.Category = BattleFunc_37
    BattleFunc_37 = true
    v4760.Accuracy = BattleFunc_37
    BattleFunc_37 = 10
    v4760.Uses = BattleFunc_37
    BattleFunc_37 = nil
    v4760.Power = BattleFunc_37
    BattleFunc_37 = "Self"
    v4760.Target = BattleFunc_37
    local function BattleFunc_38(p148, p149, p150)
        local v686 = {}
        v686.atk = 2
        v686.matk = 2
        v686.def = -1
        v686.mdef = -1
        v686.spe = 2
        v4(p148, p149, p149, 100, v686)
    end
    v4760.BattleFunc = BattleFunc_38
    v4663["Armor Break"] = v4760
    local v4761 = {}
    BattleFunc_38 = "Dark"
    v4761.Type = BattleFunc_38
    BattleFunc_38 = "The user frenzies under the guise of darkness, inflicting Vulnerable."
    v4761.Desc = BattleFunc_38
    BattleFunc_38 = "Physical"
    v4761.Category = BattleFunc_38
    BattleFunc_38 = 90
    v4761.Accuracy = BattleFunc_38
    BattleFunc_38 = 5
    v4761.Uses = BattleFunc_38
    BattleFunc_38 = true
    v4761.Contact = BattleFunc_38
    BattleFunc_38 = 95
    v4761.Power = BattleFunc_38
    BattleFunc_38 = "Single"
    v4761.Target = BattleFunc_38
    local function BattleFunc_39(p151, p152, p153)
        v3(p151, p152, p153, 100, "Vulnerable")
    end
    v4761.BattleFunc = BattleFunc_39
    v4663["Frenzied Darkness"] = v4761
    local v4762 = {}
    BattleFunc_39 = "Plant"
    v4762.Type = BattleFunc_39
    BattleFunc_39 = "Attacks furiously with thorns."
    v4762.Desc = BattleFunc_39
    BattleFunc_39 = "Physical"
    v4762.Category = BattleFunc_39
    BattleFunc_39 = 100
    v4762.Accuracy = BattleFunc_39
    BattleFunc_39 = 10
    v4762.Uses = BattleFunc_39
    BattleFunc_39 = 100
    v4762.Power = BattleFunc_39
    BattleFunc_39 = "Single"
    v4762.Target = BattleFunc_39
    v4663["Thorns of Wrath"] = v4762
    local v4763 = {}
    BattleFunc_39 = "Earth"
    v4763.Type = BattleFunc_39
    BattleFunc_39 = "The user makes the ground underneath the opposing doodles. This may lower their magical attack."
    v4763.Desc = BattleFunc_39
    BattleFunc_39 = "Magical"
    v4763.Category = BattleFunc_39
    BattleFunc_39 = 100
    v4763.Accuracy = BattleFunc_39
    BattleFunc_39 = 10
    v4763.Uses = BattleFunc_39
    BattleFunc_39 = 90
    v4763.Power = BattleFunc_39
    BattleFunc_39 = "AllFoes"
    v4763.Target = BattleFunc_39
    local function BattleFunc_40(p154, p155, p156)
        local v705 = {}
        v705.matk = -1
        v4(p154, p155, p156, 10, v705)
    end
    v4763.BattleFunc = BattleFunc_40
    v4663["Earth Surge"] = v4763
    local v4764 = {}
    BattleFunc_40 = "Crystal"
    v4764.Type = BattleFunc_40
    BattleFunc_40 = "The user summons precious gems to burst from the ground underneath a target, dealing large amounts of damage. This greatly lowers the user's magical attack."
    v4764.Desc = BattleFunc_40
    BattleFunc_40 = "Magical"
    v4764.Category = BattleFunc_40
    BattleFunc_40 = 90
    v4764.Accuracy = BattleFunc_40
    BattleFunc_40 = 10
    v4764.Uses = BattleFunc_40
    BattleFunc_40 = 140
    v4764.Power = BattleFunc_40
    BattleFunc_40 = "Single"
    v4764.Target = BattleFunc_40
    local function BattleFunc_41(p157, p158, p159)
        local v713 = {}
        v713.matk = -2
        v4(p157, p158, p158, 100, v713)
    end
    v4764.BattleFunc = BattleFunc_41
    v4663.Rupture = v4764
    local v4765 = {}
    BattleFunc_41 = "Earth"
    v4765.Type = BattleFunc_41
    BattleFunc_41 = "The user causes a powerful earthquake, doing massive damage."
    v4765.Desc = BattleFunc_41
    BattleFunc_41 = "Physical"
    v4765.Category = BattleFunc_41
    BattleFunc_41 = 100
    v4765.Accuracy = BattleFunc_41
    BattleFunc_41 = 10
    v4765.Uses = BattleFunc_41
    BattleFunc_41 = 100
    v4765.Power = BattleFunc_41
    BattleFunc_41 = "AllOthers"
    v4765.Target = BattleFunc_41
    v4663.Earthquake = v4765
    local v4766 = {}
    BattleFunc_41 = "Spark"
    v4766.Type = BattleFunc_41
    BattleFunc_41 = "The user creates a shock wave, doing damage to all other Doodles."
    v4766.Desc = BattleFunc_41
    BattleFunc_41 = "Magical"
    v4766.Category = BattleFunc_41
    BattleFunc_41 = 100
    v4766.Accuracy = BattleFunc_41
    BattleFunc_41 = 10
    v4766.Uses = BattleFunc_41
    BattleFunc_41 = 80
    v4766.Power = BattleFunc_41
    BattleFunc_41 = "AllOthers"
    v4766.Target = BattleFunc_41
    v4663["Shock Wave"] = v4766
    local v4767 = {}
    BattleFunc_41 = "Basic"
    v4767.Type = BattleFunc_41
    BattleFunc_41 = "The user crashes into the opponent with a full body slam."
    v4767.Desc = BattleFunc_41
    BattleFunc_41 = "Physical"
    v4767.Category = BattleFunc_41
    BattleFunc_41 = true
    v4767.Contact = BattleFunc_41
    BattleFunc_41 = 95
    v4767.Accuracy = BattleFunc_41
    BattleFunc_41 = 15
    v4767.Uses = BattleFunc_41
    BattleFunc_41 = 90
    v4767.Power = BattleFunc_41
    BattleFunc_41 = "Single"
    v4767.Target = BattleFunc_41
    v4663["Body Slam"] = v4767
    local v4768 = {}
    BattleFunc_41 = "Beast"
    v4768.Type = BattleFunc_41
    BattleFunc_41 = "The user chomps on the target twice in quick succession. This move hits 2 times."
    v4768.Desc = BattleFunc_41
    BattleFunc_41 = "Physical"
    v4768.Category = BattleFunc_41
    BattleFunc_41 = true
    v4768.Contact = BattleFunc_41
    BattleFunc_41 = 90
    v4768.Accuracy = BattleFunc_41
    local function Times_5(p160)
        return 2
    end
    v4768.Times = Times_5
    Times_5 = 2
    v4768.MaxHit = Times_5
    Times_5 = true
    v4768.Biting = Times_5
    Times_5 = {}
    local v4769 = {}
    local v4770 = {}
    v4770.AnimType = "Bite"
    v4770.Color = Color3.fromRGB(204, 204, 204)
    v4770.Rotation = -45
    v4770.Size = 0.75
    v4770.Times = 1
    v4770.Wait = 0.05
    v4770.Pitch = 0.8
    local v4778 = {}
    v4778.AnimType = "Bite"
    v4778.Color = Color3.fromRGB(204, 204, 204)
    v4778.Rotation = 45
    v4778.Size = 0.75
    v4778.Times = 1
    v4778.Wait = 0.05
    v4778.Pitch = 1
    v4769[1] = v4770
    v4769[2] = v4778
    Times_5.Order = v4769
    v4768.MoveAnim = Times_5
    Times_5 = 15
    v4768.Uses = Times_5
    Times_5 = 50
    v4768.Power = Times_5
    Times_5 = "Single"
    v4768.Target = Times_5
    v4663["Double Bite"] = v4768
    local v4785 = {}
    Times_5 = "Food"
    v4785.Type = Times_5
    Times_5 = "This attack does double damage if the user has less than half health."
    v4785.Desc = Times_5
    Times_5 = "Physical"
    v4785.Category = Times_5
    Times_5 = 100
    v4785.Accuracy = Times_5
    Times_5 = 5
    v4785.Uses = Times_5
    Times_5 = 80
    v4785.Power = Times_5
    Times_5 = "Single"
    v4785.Target = Times_5
    local function ModifyDamage_1(p161, p162, p163, p164, p165, p166, p167)
        local v731 = p162.currenthp / 2
        if v731 > p162.Stats.hp then
            v731 = 2
            return v731
        end
        return 1
    end
    v4785.ModifyDamage = ModifyDamage_1
    v4663["Just Desserts"] = v4785
    local v4786 = {}
    ModifyDamage_1 = "Food"
    v4786.Type = ModifyDamage_1
    ModifyDamage_1 = "The user kisses the target with a sweet, sugary kiss. Has a chance to confuse the target."
    v4786.Desc = ModifyDamage_1
    ModifyDamage_1 = "Physical"
    v4786.Category = ModifyDamage_1
    ModifyDamage_1 = 100
    v4786.Accuracy = ModifyDamage_1
    ModifyDamage_1 = true
    v4786.Contact = ModifyDamage_1
    ModifyDamage_1 = 15
    v4786.Uses = ModifyDamage_1
    ModifyDamage_1 = 50
    v4786.Power = ModifyDamage_1
    ModifyDamage_1 = "Single"
    v4786.Target = ModifyDamage_1
    local function BattleFunc_42(p168, p169, p170)
        v3(p168, p169, p170, 20, "Confuse")
    end
    v4786.BattleFunc = BattleFunc_42
    v4663["Sugar Kiss"] = v4786
    local v4787 = {}
    BattleFunc_42 = "Plant"
    v4787.Type = BattleFunc_42
    BattleFunc_42 = "A spiral of cherry blossoms strikes. Has a chance to confuse the target."
    v4787.Desc = BattleFunc_42
    BattleFunc_42 = "Magical"
    v4787.Category = BattleFunc_42
    BattleFunc_42 = 90
    v4787.Accuracy = BattleFunc_42
    BattleFunc_42 = 15
    v4787.Uses = BattleFunc_42
    BattleFunc_42 = 75
    v4787.Power = BattleFunc_42
    BattleFunc_42 = "Single"
    v4787.Target = BattleFunc_42
    local function BattleFunc_43(p171, p172, p173)
        v3(p171, p172, p173, 20, "Confuse")
    end
    v4787.BattleFunc = BattleFunc_43
    v4663["Sakura Blast"] = v4787
    local v4788 = {}
    BattleFunc_43 = "Earth"
    v4788.Type = BattleFunc_43
    BattleFunc_43 = "The user shatters the earth beneath the target, breaking any Magical Shields, Crystal Walls, or Shales."
    v4788.Desc = BattleFunc_43
    BattleFunc_43 = "Physical"
    v4788.Category = BattleFunc_43
    BattleFunc_43 = 100
    v4788.Accuracy = BattleFunc_43
    BattleFunc_43 = 10
    v4788.Uses = BattleFunc_43
    BattleFunc_43 = 70
    v4788.Power = BattleFunc_43
    BattleFunc_43 = "Single"
    v4788.Target = BattleFunc_43
    v4788.ModifyDamage = function(p174, p175, p176, p177, p178, p179, p180)
        local v749 = p174:GetSideFromDoodle(p176)
        local v750 = v749.MagicalShield
        if v750 then
            v750 = v749.CrystalWall
            if v750 then
                v750 = v749.Shale
                if not v750 then
                    if p180 then
                    end
                    v750 = 2
                    return v750
                end
                return 1
            end
        end
    end
    local function BattleFunc_44(p181, p182, p183)
        local v755 = p181:GetSideFromDoodle(p183)
        local v756 = v755.MagicalShield
        if v756 then
            v756 = v755.CrystalWall
            if v756 then
                v756 = v755.Shale
                if not v756 then
                    v756 = nil
                    v755.CrystalWall = v756
                    v756 = nil
                    v755.MagicalShield = v756
                    v756 = nil
                    v755.Shale = v756
                    p181:AddDialogue(p181.ActionList, "&DOODLENAME," .. p182.ID .. "&" .. " shattered all barriers!")
                end
                return 
            end
        end
    end
    v4788.BattleFunc = BattleFunc_44
    v4663.Shatter = v4788
    local v4789 = {}
    BattleFunc_44 = "Basic"
    v4789.Type = BattleFunc_44
    BattleFunc_44 = "The user hits the enemy multiple times. This move hits 2-5 times."
    v4789.Desc = BattleFunc_44
    BattleFunc_44 = "Physical"
    v4789.Category = BattleFunc_44
    BattleFunc_44 = 90
    v4789.Accuracy = BattleFunc_44
    local function Times_6(p184)
        return math.random(2, 5)
    end
    v4789.Times = Times_6
    Times_6 = 5
    v4789.MaxHit = Times_6
    Times_6 = 15
    v4789.Uses = Times_6
    Times_6 = 15
    v4789.Power = Times_6
    Times_6 = "Single"
    v4789.Target = Times_6
    v4663["Multi-Hit"] = v4789
    local v4790 = {}
    Times_6 = "Food"
    v4790.Type = Times_6
    Times_6 = "The user shoots corn at the target. This move hits 2-5 times."
    v4790.Desc = Times_6
    Times_6 = "Physical"
    v4790.Category = Times_6
    Times_6 = 90
    v4790.Accuracy = Times_6
    local function Times_7(p185)
        return math.random(2, 5)
    end
    v4790.Times = Times_7
    Times_7 = 5
    v4790.MaxHit = Times_7
    Times_7 = 15
    v4790.Uses = Times_7
    Times_7 = 15
    v4790.Power = Times_7
    Times_7 = "Single"
    v4790.Target = Times_7
    v4663["Bullet Corn"] = v4790
    local v4791 = {}
    Times_7 = "Earth"
    v4791.Type = Times_7
    Times_7 = "The user causes stalacities to fall from the ceiling. This move hits 2-5 times."
    v4791.Desc = Times_7
    Times_7 = "Physical"
    v4791.Category = Times_7
    Times_7 = 90
    v4791.Accuracy = Times_7
    local function Times_8(p186)
        return math.random(2, 5)
    end
    v4791.Times = Times_8
    Times_8 = 5
    v4791.MaxHit = Times_8
    Times_8 = 15
    v4791.Uses = Times_8
    Times_8 = 25
    v4791.Power = Times_8
    Times_8 = "Single"
    v4791.Target = Times_8
    v4663.Stalactites = v4791
    local v4792 = {}
    Times_8 = "Basic"
    v4792.Type = Times_8
    Times_8 = "The user attempts to stitch the opponent together. This move hits 3-4 times."
    v4792.Desc = Times_8
    Times_8 = "Physical"
    v4792.Category = Times_8
    Times_8 = 90
    v4792.Accuracy = Times_8
    local function Times_9(p187)
        return math.random(3, 4)
    end
    v4792.Times = Times_9
    Times_9 = 4
    v4792.MaxHit = Times_9
    Times_9 = 5
    v4792.Uses = Times_9
    Times_9 = 30
    v4792.Power = Times_9
    Times_9 = "Single"
    v4792.Target = Times_9
    v4663["Purl Stitch"] = v4792
    local v4793 = {}
    Times_9 = "Earth"
    v4793.Type = Times_9
    Times_9 = "The user causes a giant landslide, doing massive damage to all opposing doodles. Has a chance to flinch."
    v4793.Desc = Times_9
    Times_9 = "Physical"
    v4793.Category = Times_9
    Times_9 = 85
    v4793.Accuracy = Times_9
    Times_9 = 10
    v4793.Uses = Times_9
    Times_9 = 95
    v4793.Power = Times_9
    Times_9 = "AllFoes"
    v4793.Target = Times_9
    local function BattleFunc_45(p188, p189, p190)
        v3(p188, p189, p190, 20, "Flinch")
    end
    v4793.BattleFunc = BattleFunc_45
    v4663.Landslide = v4793
    local v4794 = {}
    BattleFunc_45 = "Earth"
    v4794.Type = BattleFunc_45
    BattleFunc_45 = "User throws a pebble at the target."
    v4794.Desc = BattleFunc_45
    BattleFunc_45 = "Physical"
    v4794.Category = BattleFunc_45
    BattleFunc_45 = 100
    v4794.Accuracy = BattleFunc_45
    BattleFunc_45 = 25
    v4794.Uses = BattleFunc_45
    BattleFunc_45 = 50
    v4794.Power = BattleFunc_45
    BattleFunc_45 = "Single"
    v4794.Target = BattleFunc_45
    v4663.Pebble = v4794
    local v4795 = {}
    BattleFunc_45 = "Earth"
    v4795.Type = BattleFunc_45
    BattleFunc_45 = "Pointed blades shoot up from the ground. Has a chance to lower the target's defense."
    v4795.Desc = BattleFunc_45
    BattleFunc_45 = "Physical"
    v4795.Category = BattleFunc_45
    BattleFunc_45 = 90
    v4795.Accuracy = BattleFunc_45
    BattleFunc_45 = 15
    v4795.Uses = BattleFunc_45
    BattleFunc_45 = 70
    v4795.Power = BattleFunc_45
    BattleFunc_45 = "Single"
    v4795.Target = BattleFunc_45
    local function BattleFunc_46(p191, p192, p193)
        local v792 = {}
        v792.def = -1
        v4(p191, p192, p193, 20, v792)
    end
    v4795.BattleFunc = BattleFunc_46
    v4663["Earth Lance"] = v4795
    local v4796 = {}
    BattleFunc_46 = "Earth"
    v4796.Type = BattleFunc_46
    BattleFunc_46 = "The user charges at the target while causing the earth to rumble. This attack boosts the user's speed stat."
    v4796.Desc = BattleFunc_46
    BattleFunc_46 = "Physical"
    v4796.Category = BattleFunc_46
    BattleFunc_46 = 100
    v4796.Accuracy = BattleFunc_46
    BattleFunc_46 = 15
    v4796.Uses = BattleFunc_46
    BattleFunc_46 = true
    v4796.Contact = BattleFunc_46
    BattleFunc_46 = 50
    v4796.Power = BattleFunc_46
    BattleFunc_46 = "Single"
    v4796.Target = BattleFunc_46
    local function BattleFunc_47(p194, p195, p196)
        local v800 = {}
        v800.spe = 1
        v4(p194, p195, p195, 100, v800)
    end
    v4796.BattleFunc = BattleFunc_47
    v4663["Rumbling Charge"] = v4796
    local v4797 = {}
    BattleFunc_47 = "Earth"
    v4797.Type = BattleFunc_47
    BattleFunc_47 = "User attacks using old roots. Has a chance to lower the target's accuracy."
    v4797.Desc = BattleFunc_47
    BattleFunc_47 = "Physical"
    v4797.Category = BattleFunc_47
    BattleFunc_47 = 90
    v4797.Accuracy = BattleFunc_47
    BattleFunc_47 = 15
    v4797.Uses = BattleFunc_47
    BattleFunc_47 = 70
    v4797.Power = BattleFunc_47
    BattleFunc_47 = "Single"
    v4797.Target = BattleFunc_47
    local function BattleFunc_48(p197, p198, p199)
        local v808 = {}
        v808.acc = -1
        v4(p197, p198, p199, 20, v808)
    end
    v4797.BattleFunc = BattleFunc_48
    v4663["Rusty Roots"] = v4797
    local v4798 = {}
    BattleFunc_48 = "Plant"
    v4798.Type = BattleFunc_48
    BattleFunc_48 = "The user sprays a barrage of needles at the target. Lowers the user's defense and magical defense."
    v4798.Desc = BattleFunc_48
    BattleFunc_48 = "Physical"
    v4798.Category = BattleFunc_48
    BattleFunc_48 = 100
    v4798.Accuracy = BattleFunc_48
    BattleFunc_48 = 5
    v4798.Uses = BattleFunc_48
    BattleFunc_48 = 120
    v4798.Power = BattleFunc_48
    BattleFunc_48 = "Single"
    v4798.Target = BattleFunc_48
    local function BattleFunc_49(p200, p201, p202)
        local v816 = {}
        v816.def = -1
        v816.mdef = -1
        v4(p200, p201, p201, 100, v816)
    end
    v4798.BattleFunc = BattleFunc_49
    v4663["1,000 Needles"] = v4798
    local v4799 = {}
    BattleFunc_49 = "Earth"
    v4799.Type = BattleFunc_49
    BattleFunc_49 = "The user spits mud at the target, doing magical damage. Lowers the target's accuracy."
    v4799.Desc = BattleFunc_49
    BattleFunc_49 = "Magical"
    v4799.Category = BattleFunc_49
    BattleFunc_49 = 80
    v4799.Accuracy = BattleFunc_49
    BattleFunc_49 = 25
    v4799.Uses = BattleFunc_49
    BattleFunc_49 = 20
    v4799.Power = BattleFunc_49
    BattleFunc_49 = "Single"
    v4799.Target = BattleFunc_49
    local function BattleFunc_50(p203, p204, p205)
        local v825 = {}
        v825.acc = -1
        v4(p203, p204, p205, 100, v825)
    end
    v4799.BattleFunc = BattleFunc_50
    v4663["Mud Spit"] = v4799
    local v4800 = {}
    BattleFunc_50 = "Earth"
    v4800.Type = BattleFunc_50
    BattleFunc_50 = "The user casts a dirt ball at the target, doing magical damage. Lowers the target's accuracy."
    v4800.Desc = BattleFunc_50
    BattleFunc_50 = "Magical"
    v4800.Category = BattleFunc_50
    BattleFunc_50 = 80
    v4800.Accuracy = BattleFunc_50
    BattleFunc_50 = 25
    v4800.Uses = BattleFunc_50
    BattleFunc_50 = 40
    v4800.Power = BattleFunc_50
    BattleFunc_50 = "Single"
    v4800.Target = BattleFunc_50
    local function BattleFunc_51(p206, p207, p208)
        local v833 = {}
        v833.acc = -1
        v4(p206, p207, p208, 20, v833)
    end
    v4800.BattleFunc = BattleFunc_51
    v4663["Dirt Lump"] = v4800
    local v4801 = {}
    BattleFunc_51 = "Beast"
    v4801.Type = BattleFunc_51
    BattleFunc_51 = "User roars at the top of its lungs. This lowers the attack of the target"
    v4801.Desc = BattleFunc_51
    BattleFunc_51 = "Magical"
    v4801.Category = BattleFunc_51
    BattleFunc_51 = 100
    v4801.Accuracy = BattleFunc_51
    BattleFunc_51 = true
    v4801.Sound = BattleFunc_51
    BattleFunc_51 = 10
    v4801.Uses = BattleFunc_51
    BattleFunc_51 = 85
    v4801.Power = BattleFunc_51
    BattleFunc_51 = "Single"
    v4801.Target = BattleFunc_51
    local function BattleFunc_52(p209, p210, p211)
        local v841 = {}
        v841.atk = -1
        v4(p209, p210, p211, 100, v841)
    end
    v4801.BattleFunc = BattleFunc_52
    v4663["Bestial Roar"] = v4801
    local v4802 = {}
    BattleFunc_52 = "Beast"
    v4802.Type = BattleFunc_52
    BattleFunc_52 = "User activates its inner beast to devastatingly unleash its most savage attack. Has a chance to flinch the target."
    v4802.Desc = BattleFunc_52
    BattleFunc_52 = "Physical"
    v4802.Category = BattleFunc_52
    BattleFunc_52 = 100
    v4802.Accuracy = BattleFunc_52
    BattleFunc_52 = true
    v4802.Contact = BattleFunc_52
    BattleFunc_52 = 5
    v4802.Uses = BattleFunc_52
    BattleFunc_52 = {}
    local v4803 = {}
    local v4804 = {}
    v4804.AnimType = "Impact"
    v4804.Color = Color3.fromRGB(133, 104, 94)
    v4804.Size = 1
    v4804.Times = 1
    v4804.Wait = 0.1
    v4804.Pitch = 0.8
    v4803[1] = v4804
    BattleFunc_52.Order = v4803
    v4802.MoveAnim = BattleFunc_52
    BattleFunc_52 = 100
    v4802.Power = BattleFunc_52
    BattleFunc_52 = "Single"
    v4802.Target = BattleFunc_52
    local function BattleFunc_53(p212, p213, p214)
        v3(p212, p213, p214, 25, "Flinch")
    end
    v4802.BattleFunc = BattleFunc_53
    v4663["Bestial Wrath"] = v4802
    local v4812 = {}
    BattleFunc_53 = "Beast"
    v4812.Type = BattleFunc_53
    BattleFunc_53 = "User crunches the target. Has a chance to lower the target's defense."
    v4812.Desc = BattleFunc_53
    BattleFunc_53 = "Physical"
    v4812.Category = BattleFunc_53
    BattleFunc_53 = 100
    v4812.Accuracy = BattleFunc_53
    BattleFunc_53 = true
    v4812.Contact = BattleFunc_53
    BattleFunc_53 = true
    v4812.Biting = BattleFunc_53
    BattleFunc_53 = 10
    v4812.Uses = BattleFunc_53
    BattleFunc_53 = {}
    local v4813 = {}
    local v4814 = {}
    v4814.AnimType = "Bite"
    v4814.Color = Color3.fromRGB(133, 104, 94)
    v4814.Size = 1
    v4814.Times = 1
    v4814.Wait = 0.1
    v4814.Pitch = 0.8
    v4813[1] = v4814
    BattleFunc_53.Order = v4813
    v4812.MoveAnim = BattleFunc_53
    BattleFunc_53 = 80
    v4812.Power = BattleFunc_53
    BattleFunc_53 = "Single"
    v4812.Target = BattleFunc_53
    local function BattleFunc_54(p215, p216, p217)
        local v863 = {}
        v863.def = -1
        v4(p215, p216, p217, 20, v863)
    end
    v4812.BattleFunc = BattleFunc_54
    v4663.Crunch = v4812
    local v4821 = {}
    BattleFunc_54 = "Basic"
    v4821.Type = BattleFunc_54
    BattleFunc_54 = " Sacrificing some health, the user creates a training dummy. The dummy serves as the user's scapegoat, taking attacks for them."
    v4821.Desc = BattleFunc_54
    BattleFunc_54 = "Passive"
    v4821.Category = BattleFunc_54
    BattleFunc_54 = true
    v4821.Accuracy = BattleFunc_54
    BattleFunc_54 = 10
    v4821.Uses = BattleFunc_54
    BattleFunc_54 = nil
    v4821.Power = BattleFunc_54
    BattleFunc_54 = "Self"
    v4821.Target = BattleFunc_54
    local function BattleFunc_55(p218, p219, p220)
        if not p219.Decoy then
            p218:AddDialogue(p218.ActionList, "&DOODLENAME," .. p219.ID .. "&" .. " already has a scapegoat!")
            return 
        end
        local v873 = p219.currenthp
        local v874 = 0
        if v873 > v874 then
            v873 = p219.currenthp
            local v875 = p219.Stats
            local v876 = v875.hp
            v874 = v876 / 4
            if v874 > v873 then
                v876 = p218.ActionList
                v868 = "&DOODLENAME,"
                v869 = p219.ID
                v870 = "&"
                v871 = " doesn't have enough health!"
                v875 = v868 .. v869 .. v870 .. v871
                p218:AddDialogue(v876, v875)
                return 
            end
        end
        v874 = p219.Stats.hp / 4
        local v880 = math.floor(v874)
        p219.Decoy = {}
        local v892 = {}
        v892.currenthp = v880
        v892.maxhp = v880
        p219.Decoy = v892
        v868 = {}
        v869 = "SummonScapegoat"
        v868.Action = v869
        v869 = p219.Owner
        v868.Player = v869
        v868.Doodle = p219
        p218:AddAction(p218.ActionList, v868)
        v869 = nil
        v870 = true
        v871 = true
        p218:TakeDamage(p219, v880, v869, v870, v871)
        p218:AddDialogue(p218.ActionList, "&DOODLENAME," .. p219.ID .. "&" .. " made a scapegoat!")
    end
    v4821.BattleFunc = BattleFunc_55
    v4663.Scapegoat = v4821
    local v4822 = {}
    BattleFunc_55 = "Basic"
    v4822.Type = BattleFunc_55
    BattleFunc_55 = "If the user would faint, restore their health by half. This attack only works once per battle."
    v4822.Desc = BattleFunc_55
    BattleFunc_55 = "Passive"
    v4822.Category = BattleFunc_55
    BattleFunc_55 = true
    v4822.Accuracy = BattleFunc_55
    BattleFunc_55 = 10
    v4822.Uses = BattleFunc_55
    BattleFunc_55 = nil
    v4822.Power = BattleFunc_55
    BattleFunc_55 = "Self"
    v4822.Target = BattleFunc_55
    local function BattleFunc_56(p221, p222, p223)
        local v895 = p222.Revitalize
        if v895 then
            v895 = p222.RevitalizeUsed
            if not v895 then
                p221:AddDialogue(p221.ActionList, "But it failed!")
                return 
            end
            p221:AddDialogue(p221.ActionList, "&DOODLENAME," .. p222.ID .. "&" .. " will revive if it faints!")
            p222.Revitalize = true
            p222.OnFaintTargets.Revitalize = "Self"
            local v929 = p222.OnFaint
            if v929 then
                v929 = {}
            end
            p222.OnFaint = v929
            p222.OnFaint.Revitalize = function(p224, p225, p226)
                local v907 = p225.RevitalizeUsed
                if v907 then
                    v907 = math.round
                    p225.Status = nil
                    p224:AddDialogue(p224.ActionList, "&DOODLENAME," .. p225.ID .. "&" .. " revived because of Revitalize!")
                    p224:TakeDamage(p225, -v907(p225.Stats.hp / 2))
                    p225.RevitalizeUsed = true
                    local v923 = {}
                    v923.Player = p225.Owner
                    v923.Doodle = p225
                    v923.Action = "StatusAnim"
                    v923.Status = ""
                    p224:AddAction(p224.ActionList, v923)
                end
            end
            return 
        end
    end
    v4822.BattleFunc = BattleFunc_56
    v4663.Revitalize = v4822
    local v4823 = {}
    BattleFunc_56 = "Dark"
    v4823.Type = BattleFunc_56
    BattleFunc_56 = "The user steps through the shadows, boosting its speed and crit chance."
    v4823.Desc = BattleFunc_56
    BattleFunc_56 = "Passive"
    v4823.Category = BattleFunc_56
    BattleFunc_56 = 100
    v4823.Accuracy = BattleFunc_56
    BattleFunc_56 = 25
    v4823.Uses = BattleFunc_56
    BattleFunc_56 = nil
    v4823.Power = BattleFunc_56
    BattleFunc_56 = "Self"
    v4823.Target = BattleFunc_56
    local function BattleFunc_57(p227, p228, p229)
        local v933 = p228.MoreCrit
        if v933 then
            v933 = true
            p228.MoreCrit = v933
            p227:AddDialogue(p227.ActionList, "&DOODLENAME," .. p228.ID .. "&" .. " is more likely to critical hit!")
        end
        v935 = 100
        v936 = {}
        v937 = 1
        v936.spe = v937
        v4(p227, p228, p229, v935, v936)
    end
    v4823.BattleFunc = BattleFunc_57
    v4663.Shadowstep = v4823
    local v4824 = {}
    BattleFunc_57 = "Basic"
    v4824.Type = BattleFunc_57
    BattleFunc_57 = "Covers the user in a smokescreen, boosting its evasion."
    v4824.Desc = BattleFunc_57
    BattleFunc_57 = "Passive"
    v4824.Category = BattleFunc_57
    BattleFunc_57 = 100
    v4824.Accuracy = BattleFunc_57
    BattleFunc_57 = 25
    v4824.Uses = BattleFunc_57
    BattleFunc_57 = nil
    v4824.Power = BattleFunc_57
    BattleFunc_57 = "Self"
    v4824.Target = BattleFunc_57
    local function BattleFunc_58(p230, p231, p232)
        local v950 = {}
        v950.eva = 1
        v4(p230, p231, p232, 100, v950)
    end
    v4824.BattleFunc = BattleFunc_58
    v4663.Smokescreen = v4824
    local v4825 = {}
    BattleFunc_58 = "Basic"
    v4825.Type = BattleFunc_58
    BattleFunc_58 = "The user hides, boosting its evasion but lowering its accuracy."
    v4825.Desc = BattleFunc_58
    BattleFunc_58 = "Passive"
    v4825.Category = BattleFunc_58
    BattleFunc_58 = 100
    v4825.Accuracy = BattleFunc_58
    BattleFunc_58 = 25
    v4825.Uses = BattleFunc_58
    BattleFunc_58 = nil
    v4825.Power = BattleFunc_58
    BattleFunc_58 = "Self"
    v4825.Target = BattleFunc_58
    local function BattleFunc_59(p233, p234, p235)
        local v958 = {}
        v958.eva = 1
        v958.acc = -1
        v4(p233, p234, p235, 100, v958)
    end
    v4825.BattleFunc = BattleFunc_59
    v4663.Hide = v4825
    local v4826 = {}
    BattleFunc_59 = "Dark"
    v4826.Type = BattleFunc_59
    BattleFunc_59 = "A melody that is banned in many countries. It causes any Doodle to hear this song to faint in 3 turns, unless it switches out of battle."
    v4826.Desc = BattleFunc_59
    BattleFunc_59 = "Passive"
    v4826.Category = BattleFunc_59
    BattleFunc_59 = true
    v4826.Accuracy = BattleFunc_59
    BattleFunc_59 = 5
    v4826.Uses = BattleFunc_59
    BattleFunc_59 = true
    v4826.Sound = BattleFunc_59
    BattleFunc_59 = nil
    v4826.Power = BattleFunc_59
    BattleFunc_59 = "All"
    v4826.Target = BattleFunc_59
    v4826.BeforeFunc = function(p236, p237, p238)
        local v962
        local v965, v966, v967 = pairs(p238)
        for v970, v969 in v965, v966, v967 do
            local v968 = v969.PerishSong
            v962 = true
        end
        if not v962 then
            v967 = p236.ActionList
            v970 = "All affected doodles will faint in 3 turns!"
            p236:AddDialogue(v967, v970)
            return 
        end
        p236:AddDialogue(p236.ActionList, "Every doodle has already heard this melody...")
    end
    local function BattleFunc_60(p239, p240, p241)
        local v975 = p241.PerishSong
        if v975 then
            v975 = 3
            p241.PerishSong = v975
        end
        local v1003 = p241.EndFuncs
        if v1003 then
            v1003 = {}
        end
        p241.EndFuncs = v1003
        local v1005 = p241.EndFuncs.SoD
        if v1005 then
            v1005 = p241.EndFuncs
            v1005.SoD = function(p242, p243, p244)
                local v977 = p243.PerishSong
                if not v977 then
                    v977 = p243.PerishSong - 1
                    p243.PerishSong = v977
                    v977 = p243.PerishSong
                    local v1001 = 0
                    if v977 > v1001 then
                        local v986 = p243.PerishSong
                        local v987 = ""
                        v987 = "s"
                        p242:AddDialogue(p242.ActionList, "&DOODLENAME," .. p243.ID .. "&" .. " has " .. p243.PerishSong .. " turn" .. v987 .. " left!")
                        return 
                    end
                    p243.PerishSong = nil
                    v1001 = p243.Stats.hp
                    v980 = math.floor(v1001)
                    v981 = nil
                    v982 = nil
                    v983 = true
                    p242:TakeDamage(p243, v980, v981, v982, v983)
                    v984 = " succumbed to the Sonata of Darkness!"
                    p242:AddDialogue(p242.ActionList, "&DOODLENAME," .. p243.ID .. "&" .. v984)
                end
            end
        end
    end
    v4826.BattleFunc = BattleFunc_60
    v4663["Sonata of Darkness"] = v4826
    local v4827 = {}
    BattleFunc_60 = "Basic"
    v4827.Type = BattleFunc_60
    BattleFunc_60 = "The user entertains the target with various means. This greatly lowers their attack."
    v4827.Desc = BattleFunc_60
    BattleFunc_60 = "Passive"
    v4827.Category = BattleFunc_60
    BattleFunc_60 = 90
    v4827.Accuracy = BattleFunc_60
    BattleFunc_60 = 30
    v4827.Uses = BattleFunc_60
    BattleFunc_60 = true
    v4827.Sound = BattleFunc_60
    BattleFunc_60 = nil
    v4827.Power = BattleFunc_60
    BattleFunc_60 = "Single"
    v4827.Target = BattleFunc_60
    local function BattleFunc_61(p245, p246, p247)
        local v1012 = {}
        v1012.atk = -2
        v4(p245, p246, p247, 100, v1012)
    end
    v4827.BattleFunc = BattleFunc_61
    v4663.Entertain = v4827
    local v4828 = {}
    BattleFunc_61 = "Basic"
    v4828.Type = BattleFunc_61
    BattleFunc_61 = "The user makes an extremely annoying sound at the target. This greatly lowers their defense."
    v4828.Desc = BattleFunc_61
    BattleFunc_61 = "Passive"
    v4828.Category = BattleFunc_61
    BattleFunc_61 = 90
    v4828.Accuracy = BattleFunc_61
    BattleFunc_61 = 30
    v4828.Uses = BattleFunc_61
    BattleFunc_61 = true
    v4828.Sound = BattleFunc_61
    BattleFunc_61 = nil
    v4828.Power = BattleFunc_61
    BattleFunc_61 = "Single"
    v4828.Target = BattleFunc_61
    local function BattleFunc_62(p248, p249, p250)
        local v1020 = {}
        v1020.def = -2
        v4(p248, p249, p250, 100, v1020)
    end
    v4828.BattleFunc = BattleFunc_62
    v4663.Screech = v4828
    local v4829 = {}
    BattleFunc_62 = "Poison"
    v4829.Type = BattleFunc_62
    BattleFunc_62 = "The user uses their bad odor to lower the opposing Doodles' accuracy and evasion."
    v4829.Desc = BattleFunc_62
    BattleFunc_62 = "Passive"
    v4829.Category = BattleFunc_62
    BattleFunc_62 = 100
    v4829.Accuracy = BattleFunc_62
    BattleFunc_62 = 25
    v4829.Uses = BattleFunc_62
    BattleFunc_62 = nil
    v4829.Power = BattleFunc_62
    BattleFunc_62 = "AllFoes"
    v4829.Target = BattleFunc_62
    local function BattleFunc_63(p251, p252, p253)
        local v1028 = {}
        v1028.acc = -1
        v1028.eva = -1
        v4(p251, p252, p253, 100, v1028)
    end
    v4829.BattleFunc = BattleFunc_63
    v4663["Bad Odor"] = v4829
    local v4830 = {}
    BattleFunc_63 = "Dark"
    v4830.Type = BattleFunc_63
    BattleFunc_63 = "The user hisses at the opponent Doodles, making them afraid to attack. This lowers their attack and magic attack."
    v4830.Desc = BattleFunc_63
    BattleFunc_63 = "Passive"
    v4830.Category = BattleFunc_63
    BattleFunc_63 = 100
    v4830.Accuracy = BattleFunc_63
    BattleFunc_63 = 25
    v4830.Uses = BattleFunc_63
    BattleFunc_63 = nil
    v4830.Power = BattleFunc_63
    BattleFunc_63 = "AllFoes"
    v4830.Target = BattleFunc_63
    local function BattleFunc_64(p254, p255, p256)
        local v1037 = {}
        v1037.atk = -1
        v1037.matk = -1
        v4(p254, p255, p256, 100, v1037)
    end
    v4830.BattleFunc = BattleFunc_64
    v4663.Hiss = v4830
    local v4831 = {}
    BattleFunc_64 = "Beast"
    v4831.Type = BattleFunc_64
    BattleFunc_64 = "The user calls to the wilds. For the next 5 turns, any allied Doodle that is sent out gets a random stat greatly boosted."
    v4831.Desc = BattleFunc_64
    BattleFunc_64 = "Passive"
    v4831.Category = BattleFunc_64
    BattleFunc_64 = true
    v4831.Accuracy = BattleFunc_64
    BattleFunc_64 = 10
    v4831.Uses = BattleFunc_64
    BattleFunc_64 = nil
    v4831.Power = BattleFunc_64
    BattleFunc_64 = "Self"
    v4831.Target = BattleFunc_64
    local function BattleFunc_65(p257, p258, p259)
        local v1043 = p257:GetSideFromDoodle(p259)
        if not v1043.CotW then
            p257:AddDialogue(p257.ActionList, "&DOODLENAME," .. p258.ID .. "&" .. " is already affected by Call of the Wild!")
            return 
        end
        v1046 = "&DOODLENAME,"
        v1047 = p258.ID
        v1048 = "&"
        v1049 = " called out to the wilds!"
        p257:AddDialogue(p257.ActionList, v1046 .. v1047 .. v1048 .. v1049)
        v1043.CotW = 5
    end
    v4831.BattleFunc = BattleFunc_65
    v4663["Call of the Wild"] = v4831
    local v4832 = {}
    BattleFunc_65 = "Basic"
    v4832.Type = BattleFunc_65
    BattleFunc_65 = "The user boost all allies' crit chance for 5 turns."
    v4832.Desc = BattleFunc_65
    BattleFunc_65 = "Passive"
    v4832.Category = BattleFunc_65
    BattleFunc_65 = true
    v4832.Accuracy = BattleFunc_65
    BattleFunc_65 = 10
    v4832.Uses = BattleFunc_65
    BattleFunc_65 = nil
    v4832.Power = BattleFunc_65
    BattleFunc_65 = "Self"
    v4832.Target = BattleFunc_65
    local function BattleFunc_66(p260, p261, p262)
        local v1058 = p260:GetSideFromDoodle(p262)
        if not v1058.CritUp then
            p260:AddDialogue(p260.ActionList, "&DOODLENAME," .. p261.ID .. "&" .. " is already affected by Crit Up!")
            return 
        end
        v1061 = "&DOODLENAME,"
        v1062 = p261.ID
        v1063 = "&"
        v1064 = " boosts the critical chance of "
        p260:AddDialogue(p260.ActionList, v1061 .. v1062 .. v1063 .. v1064 .. "&DOODLENAME," .. p261.ID .. "&" .. "'s entire team!")
        v1058.CritUp = 5
    end
    v4832.BattleFunc = BattleFunc_66
    v4663["Crit Up"] = v4832
    local v4833 = {}
    BattleFunc_66 = "Air"
    v4833.Type = BattleFunc_66
    BattleFunc_66 = "The user creates a wind barrier, speeding up all allies for 5 turns."
    v4833.Desc = BattleFunc_66
    BattleFunc_66 = "Passive"
    v4833.Category = BattleFunc_66
    BattleFunc_66 = true
    v4833.Accuracy = BattleFunc_66
    BattleFunc_66 = 10
    v4833.Uses = BattleFunc_66
    BattleFunc_66 = nil
    v4833.Power = BattleFunc_66
    BattleFunc_66 = "Self"
    v4833.Target = BattleFunc_66
    local function BattleFunc_67(p263, p264, p265)
        local v1077 = p263:GetSideFromDoodle(p265)
        if not v1077.Sylphid then
            p263:AddDialogue(p263.ActionList, "&DOODLENAME," .. p264.ID .. "&" .. " is already affected by Sylphid!")
            return 
        end
        v1080 = "Sylphid boosts the speed of "
        v1081 = "&DOODLENAME,"
        v1082 = p264.ID
        v1083 = "&"
        p263:AddDialogue(p263.ActionList, v1080 .. v1081 .. v1082 .. v1083 .. "'s entire team!")
        v1077.Sylphid = 5
    end
    v4833.BattleFunc = BattleFunc_67
    v4663.Sylphid = v4833
    local v4834 = {}
    BattleFunc_67 = "Light"
    v4834.Type = BattleFunc_67
    BattleFunc_67 = "The user purges all stat changes, resetting them."
    v4834.Desc = BattleFunc_67
    BattleFunc_67 = "Passive"
    v4834.Category = BattleFunc_67
    BattleFunc_67 = true
    v4834.Accuracy = BattleFunc_67
    BattleFunc_67 = 10
    v4834.Uses = BattleFunc_67
    BattleFunc_67 = nil
    v4834.Power = BattleFunc_67
    BattleFunc_67 = "Single"
    v4834.Target = BattleFunc_67
    local function BattleFunc_68(p266, p267, p268)
        local v1091 = {}
        v1091.atk = 0
        v1091.def = 0
        v1091.matk = 0
        v1091.mdef = 0
        v1091.spe = 0
        v1091.acc = 0
        v1091.eva = 0
        p267.Boosts = v1091
        local v1101 = {}
        v1101.atk = 0
        v1101.def = 0
        v1101.matk = 0
        v1101.mdef = 0
        v1101.spe = 0
        v1101.acc = 0
        v1101.eva = 0
        p268.Boosts = v1101
        p266:AddDialogue(p266.ActionList, "All Doodle stat changes have been reset!")
    end
    v4834.BattleFunc = BattleFunc_68
    v4663.Purge = v4834
    local v4835 = {}
    BattleFunc_68 = "Earth"
    v4835.Type = BattleFunc_68
    BattleFunc_68 = "If there's a sandstorm, the user summons a wall made of shale, making the opponent's super-effective attacks do half damage for five turns."
    v4835.Desc = BattleFunc_68
    BattleFunc_68 = "Passive"
    v4835.Category = BattleFunc_68
    BattleFunc_68 = true
    v4835.Accuracy = BattleFunc_68
    BattleFunc_68 = 10
    v4835.Uses = BattleFunc_68
    BattleFunc_68 = nil
    v4835.Power = BattleFunc_68
    BattleFunc_68 = "Self"
    v4835.Target = BattleFunc_68
    local function BattleFunc_69(p269, p270, p271)
        local v1112 = p269:GetSideFromDoodle(p271)
        if not v1112.Shale then
            p269:AddDialogue(p269.ActionList, "&DOODLENAME," .. p270.ID .. "&" .. " is already affected by Shale!")
            return 
        end
        local v1120 = p269.Weather
        p269 = p269 * p269
        p269:AddDialogue(p269.ActionList, "Shale failed because there isn't a sandstorm!")
        return 
        v1115 = "Shale reduces the damage of super-effective attacks on "
        v1116 = "&DOODLENAME,"
        v1117 = p270.ID
        v1118 = "&"
        p269:AddDialogue(p269.ActionList, v1115 .. v1116 .. v1117 .. v1118 .. "'s entire team!")
        v1112.Shale = 5
    end
    v4835.BattleFunc = BattleFunc_69
    v4663.Shale = v4835
    local v4836 = {}
    BattleFunc_69 = "Crystal"
    v4836.Type = BattleFunc_69
    BattleFunc_69 = "The user summons a crystal wall, making the opponent's physical attacks do half damage for five turns."
    v4836.Desc = BattleFunc_69
    BattleFunc_69 = "Passive"
    v4836.Category = BattleFunc_69
    BattleFunc_69 = true
    v4836.Accuracy = BattleFunc_69
    BattleFunc_69 = 10
    v4836.Uses = BattleFunc_69
    BattleFunc_69 = nil
    v4836.Power = BattleFunc_69
    BattleFunc_69 = "Self"
    v4836.Target = BattleFunc_69
    local function BattleFunc_70(p272, p273, p274)
        local v1131 = p272:GetSideFromDoodle(p274)
        if not v1131.CrystalWall then
            p272:AddDialogue(p272.ActionList, "&DOODLENAME," .. p273.ID .. "&" .. " is already affected by Crystal Wall!")
            return 
        end
        v1134 = "Crystal Wall boosts the defense of "
        v1135 = "&DOODLENAME,"
        v1136 = p273.ID
        v1137 = "&"
        p272:AddDialogue(p272.ActionList, v1134 .. v1135 .. v1136 .. v1137 .. "'s entire team!")
        v1131.CrystalWall = 5
    end
    v4836.BattleFunc = BattleFunc_70
    v4663["Crystal Wall"] = v4836
    local v4837 = {}
    BattleFunc_70 = "Ice"
    v4837.Type = BattleFunc_70
    BattleFunc_70 = "The user summons an icy veil, preventing your side from being inflicted with status conditions for five turns."
    v4837.Desc = BattleFunc_70
    BattleFunc_70 = "Passive"
    v4837.Category = BattleFunc_70
    BattleFunc_70 = true
    v4837.Accuracy = BattleFunc_70
    BattleFunc_70 = 10
    v4837.Uses = BattleFunc_70
    BattleFunc_70 = nil
    v4837.Power = BattleFunc_70
    BattleFunc_70 = "Self"
    v4837.Target = BattleFunc_70
    local function BattleFunc_71(p275, p276, p277)
        local v1147 = p275:GetSideFromDoodle(p277)
        if not v1147.Safeguard then
            p275:AddDialogue(p275.ActionList, "&DOODLENAME," .. p276.ID .. "&" .. " is already affected by Icy Veil!")
            return 
        end
        v1150 = "An icy veil is protecting "
        v1151 = "&DOODLENAME,"
        v1152 = p276.ID
        v1153 = "&"
        p275:AddDialogue(p275.ActionList, v1150 .. v1151 .. v1152 .. v1153 .. "'s entire team!")
        v1147.Safeguard = 5
    end
    v4837.BattleFunc = BattleFunc_71
    v4663["Icy Veil"] = v4837
    local v4838 = {}
    BattleFunc_71 = "Mind"
    v4838.Type = BattleFunc_71
    BattleFunc_71 = "The user summons a magical shield, making the opponent's magical attacks do half damage for five turns."
    v4838.Desc = BattleFunc_71
    BattleFunc_71 = "Passive"
    v4838.Category = BattleFunc_71
    BattleFunc_71 = true
    v4838.Accuracy = BattleFunc_71
    BattleFunc_71 = 10
    v4838.Uses = BattleFunc_71
    BattleFunc_71 = nil
    v4838.Power = BattleFunc_71
    BattleFunc_71 = "Self"
    v4838.Target = BattleFunc_71
    local function BattleFunc_72(p278, p279, p280)
        local v1163 = p278:GetSideFromDoodle(p280)
        if not v1163.MagicalShield then
            p278:AddDialogue(p278.ActionList, "&DOODLENAME," .. p279.ID .. "&" .. " is already affected by Magical Shield!")
            return 
        end
        v1166 = "Magical Shield boosts the magical defense of "
        v1167 = "&DOODLENAME,"
        v1168 = p279.ID
        v1169 = "&"
        p278:AddDialogue(p278.ActionList, v1166 .. v1167 .. v1168 .. v1169 .. "'s entire team!")
        v1163.MagicalShield = 5
    end
    v4838.BattleFunc = BattleFunc_72
    v4663["Magical Shield"] = v4838
    local v4839 = {}
    BattleFunc_72 = "Basic"
    v4839.Type = BattleFunc_72
    BattleFunc_72 = "The user sets up a yarn snare on the opponent's side. If any Doodle gets sent out onto the yarn snare, the snare lowers its attack."
    v4839.Desc = BattleFunc_72
    BattleFunc_72 = "Passive"
    v4839.Category = BattleFunc_72
    BattleFunc_72 = true
    v4839.Accuracy = BattleFunc_72
    BattleFunc_72 = 20
    v4839.Uses = BattleFunc_72
    BattleFunc_72 = nil
    v4839.Power = BattleFunc_72
    BattleFunc_72 = "Self"
    v4839.Target = BattleFunc_72
    BattleFunc_72 = true
    v4839.EntryHazard = BattleFunc_72
    local function BattleFunc_73(p281, p282, p283)
        local v1179 = p281:GetOppositeSideFromDoodle(p283)
        if not v1179.EntryHazards.YarnSnare then
            p281:AddDialogue(p281.ActionList, "There is already a yarn snare!")
            return 
        end
        p281:AddDialogue(p281.ActionList, "&DOODLENAME," .. p283.ID .. "&" .. " set up a yarn snare on the other side!")
        v1179.EntryHazards.YarnSnare = function(p284, p285)
            local v1198 = v2.IsType(p285, "Air")
            if v1198 then
                v1198 = p284:GetTraitInfo(p285).Levitate
                if not v1198 then
                    return 
                end
                p284:AddDialogue(p284.ActionList, "&DOODLENAME," .. p285.ID .. "&" .. " was caught on the yarn snare!")
                local v1211 = {}
                v1211.atk = -1
                v4(p284, p282, p285, 100, v1211)
            end
        end
    end
    v4839.BattleFunc = BattleFunc_73
    v4663["Yarn Snare"] = v4839
    local v4840 = {}
    BattleFunc_73 = "Poison"
    v4840.Type = BattleFunc_73
    BattleFunc_73 = "The user sets up poison on the opponent's side. If any Doodle gets sent out into the poison, they get poisoned."
    v4840.Desc = BattleFunc_73
    BattleFunc_73 = "Passive"
    v4840.Category = BattleFunc_73
    BattleFunc_73 = true
    v4840.Accuracy = BattleFunc_73
    BattleFunc_73 = 20
    v4840.Uses = BattleFunc_73
    BattleFunc_73 = nil
    v4840.Power = BattleFunc_73
    BattleFunc_73 = "Self"
    v4840.Target = BattleFunc_73
    BattleFunc_73 = true
    v4840.EntryHazard = BattleFunc_73
    local function BattleFunc_74(p286, p287, p288)
        local v1217 = p286:GetOppositeSideFromDoodle(p288)
        if not v1217.EntryHazards.LingeringPoison then
            p286:AddDialogue(p286.ActionList, "There is already lingering poison.")
            return 
        end
        p286:AddDialogue(p286.ActionList, "&DOODLENAME," .. p288.ID .. "&" .. " set up lingering poison on the other side!")
        v1217.EntryHazards.LingeringPoison = function(p289, p290)
            if not v2.IsType(p290, "Poison") then
                p289:AddDialogue(p289.ActionList, "&DOODLENAME," .. p290.ID .. "&" .. " absorbed the lingering poison!")
                v1217.EntryHazards.LingeringPoison = nil
                return 
            end
            v1240 = v2
            v1241 = v1240.IsType
            v1240 = p290
            local v1243 = v1241(v1240, "Metal")
            if v1243 then
                v1243 = v2.IsType
                local v1246 = v1243(p290, "Crystal")
                if not v1246 then
                    return 
                end
                v1246 = p290.Status
                local v1247 = p290.Status
                v1235 = "Blank"
                p289:StatusDisplay(p290, v1235)
                p289:AddDialogue(p289.ActionList, "There's lingering poison...")
                local v1254 = {}
                v1254.Ability = "No ability"
                v1236 = 100
                v1237 = "Poison"
                v3(p289, v1254, p290, v1236, v1237)
            end
        end
    end
    v4840.BattleFunc = BattleFunc_74
    v4663["Lingering Poison"] = v4840
    local v4841 = {}
    BattleFunc_74 = "Plant"
    v4841.Type = BattleFunc_74
    BattleFunc_74 = "The user sets up entangling vines on the opponent's side. If any Doodle gets sent out onto the vines, lower their speed."
    v4841.Desc = BattleFunc_74
    BattleFunc_74 = "Passive"
    v4841.Category = BattleFunc_74
    BattleFunc_74 = true
    v4841.Accuracy = BattleFunc_74
    BattleFunc_74 = 20
    v4841.Uses = BattleFunc_74
    BattleFunc_74 = nil
    v4841.Power = BattleFunc_74
    BattleFunc_74 = "Self"
    v4841.Target = BattleFunc_74
    BattleFunc_74 = true
    v4841.EntryHazard = BattleFunc_74
    local function BattleFunc_75(p291, p292, p293)
        local v1264 = p291:GetOppositeSideFromDoodle(p293)
        if not v1264.EntryHazards.EntanglingVines then
            p291:AddDialogue(p291.ActionList, "There are already entangling vines!")
            return 
        end
        p291:AddDialogue(p291.ActionList, "&DOODLENAME," .. p293.ID .. "&" .. " set up entangling vines on the other side!")
        v1264.EntryHazards.EntanglingVines = function(p294, p295)
            local v1283 = v2.IsType(p295, "Air")
            if v1283 then
                v1283 = p294:GetTraitInfo(p295).Levitate
                if not v1283 then
                    return 
                end
                p294:AddDialogue(p294.ActionList, "&DOODLENAME," .. p295.ID .. "&" .. " was entangled by vines!")
                local v1296 = {}
                v1296.spe = -1
                v4(p294, p292, p295, 100, v1296)
            end
        end
    end
    v4841.BattleFunc = BattleFunc_75
    v4663["Entangling Vines"] = v4841
    local v4842 = {}
    BattleFunc_75 = "Plant"
    v4842.Type = BattleFunc_75
    BattleFunc_75 = "The user is protected by a nature's guardian. If a Doodle hits them with a contact move, has a chance to boost all of their stats."
    v4842.Desc = BattleFunc_75
    BattleFunc_75 = "Passive"
    v4842.Category = BattleFunc_75
    BattleFunc_75 = true
    v4842.Accuracy = BattleFunc_75
    BattleFunc_75 = 10
    v4842.Uses = BattleFunc_75
    BattleFunc_75 = nil
    v4842.Power = BattleFunc_75
    BattleFunc_75 = "Self"
    v4842.Target = BattleFunc_75
    local function BattleFunc_76(p296, p297, p298)
        if not p297.NaturesGuardian then
            p296:AddDialogue(p296.ActionList, "&DOODLENAME," .. p297.ID .. "&" .. " already has a Nature's Guardian!")
            return 
        end
        p297.NaturesGuardian = true
        v1302 = "&DOODLENAME,"
        v1303 = p297.ID
        v1304 = "&"
        v1305 = " now has a Nature's Guardian!"
        p296:AddDialogue(p296.ActionList, v1302 .. v1303 .. v1304 .. v1305)
        local v1310 = p297.OnHit
        if v1310 then
            v1310 = {}
        end
        p297.OnHit = v1310
        local v1311 = p297.OnHit
        local v1334 = v1311.NaturesGuardian
        if v1334 then
            v1334 = p297.OnHit
            v1311 = function(p299, p300, p301, p302)
                local v1312 = p297
                local v1313 = v1312.NaturesGuardian
                if not v1313 then
                    v1312 = p297
                    v1313 = v1312.currenthp
                    v1312 = 0
                    if v1313 > v1312 then
                        v1313 = p302.Contact
                        if not v1313 then
                            v1313 = math.random
                            v1312 = 1
                            local v1315 = v1313(v1312, 2)
                            p299:AddDialogue(p299.ActionList, "&DOODLENAME," .. p297.ID .. "&" .. " received their Nature's Guardian's blessing!")
                            local v1328 = {}
                            v1328.atk = 1
                            v1328.def = 1
                            v1328.matk = 1
                            v1328.spe = 1
                            v1328.mdef = 1
                            v4(p299, p297, p297, 100, v1328)
                        end
                    end
                end
            end
            v1334.NaturesGuardian = v1311
        end
    end
    v4842.BattleFunc = BattleFunc_76
    v4663["Nature's Guardian"] = v4842
    local v4843 = {}
    BattleFunc_76 = "Fire"
    v4843.Type = BattleFunc_76
    BattleFunc_76 = "The user summons fire shields around them, protecting them from attacks. If a Doodle hits them with a magic attack, the shields react by shooting a Firebolt back."
    v4843.Desc = BattleFunc_76
    BattleFunc_76 = "Passive"
    v4843.Category = BattleFunc_76
    BattleFunc_76 = true
    v4843.Accuracy = BattleFunc_76
    BattleFunc_76 = 10
    v4843.Uses = BattleFunc_76
    BattleFunc_76 = nil
    v4843.Power = BattleFunc_76
    BattleFunc_76 = "Self"
    v4843.Target = BattleFunc_76
    local function BattleFunc_77(p303, p304, p305)
        if not p304.FlameShield then
            p303:AddDialogue(p303.ActionList, "&DOODLENAME," .. p304.ID .. "&" .. " is already surrounded by a flame shield!")
            return 
        end
        p304.FlameShield = true
        v1338 = "&DOODLENAME,"
        v1339 = p304.ID
        v1340 = "&"
        v1341 = " is now surrounded by a flame shield!"
        p303:AddDialogue(p303.ActionList, v1338 .. v1339 .. v1340 .. v1341)
        local v1346 = p304.OnHit
        if v1346 then
            v1346 = {}
        end
        p304.OnHit = v1346
        local v1347 = p304.OnHit
        local v1362 = v1347.FlameShield
        if v1362 then
            v1362 = p304.OnHit
            v1347 = function(p306, p307, p308, p309)
                local v1348 = p304
                local v1349 = v1348.FlameShield
                if not v1349 then
                    v1348 = p304
                    v1349 = v1348.currenthp
                    v1348 = 0
                    if v1349 > v1348 then
                        v1349 = p309.Category
                        p306:AddDialogue(p306.ActionList, "&DOODLENAME," .. p307.ID .. "&" .. "'s Flame Shield shoots a Fire Bolt!")
                        local v1357 = {}
                        v1357[1] = p308
                        p306:UseMove(p307, v1357, "FirewallFirebolt", true)
                    end
                end
            end
            v1362.FlameShield = v1347
        end
    end
    v4843.BattleFunc = BattleFunc_77
    v4663["Flame Shield"] = v4843
    local v4844 = {}
    BattleFunc_77 = "Water"
    v4844.Type = BattleFunc_77
    BattleFunc_77 = "The user summons bubble shields around them, protecting them from attacks. If a Doodle hits them with a physical attack, the shields react by shooting a Waterbolt back."
    v4844.Desc = BattleFunc_77
    BattleFunc_77 = "Passive"
    v4844.Category = BattleFunc_77
    BattleFunc_77 = true
    v4844.Accuracy = BattleFunc_77
    BattleFunc_77 = 10
    v4844.Uses = BattleFunc_77
    BattleFunc_77 = nil
    v4844.Power = BattleFunc_77
    BattleFunc_77 = "Self"
    v4844.Target = BattleFunc_77
    local function BattleFunc_78(p310, p311, p312)
        if not p311.WaterShield then
            p310:AddDialogue(p310.ActionList, "&DOODLENAME," .. p311.ID .. "&" .. " is already surrounded by a bubble shield!")
            return 
        end
        p311.WaterShield = true
        v1366 = "&DOODLENAME,"
        v1367 = p311.ID
        v1368 = "&"
        v1369 = " is now surrounded by a bubble shield!"
        p310:AddDialogue(p310.ActionList, v1366 .. v1367 .. v1368 .. v1369)
        local v1374 = p311.OnHit
        if v1374 then
            v1374 = {}
        end
        p311.OnHit = v1374
        local v1375 = p311.OnHit
        local v1390 = v1375.WaterShield
        if v1390 then
            v1390 = p311.OnHit
            v1375 = function(p313, p314, p315, p316)
                local v1376 = p311
                local v1377 = v1376.WaterShield
                if not v1377 then
                    v1376 = p311
                    v1377 = v1376.currenthp
                    v1376 = 0
                    if v1377 > v1376 then
                        v1377 = p316.Category
                        p313:AddDialogue(p313.ActionList, "&DOODLENAME," .. p314.ID .. "&" .. "'s Bubble Shield shoots a Waterbolt!")
                        local v1385 = {}
                        v1385[1] = p315
                        p313:UseMove(p314, v1385, "Waterbolt", true)
                    end
                end
            end
            v1390.WaterShield = v1375
        end
    end
    v4844.BattleFunc = BattleFunc_78
    v4663["Bubble Shield"] = v4844
    local v4845 = {}
    BattleFunc_78 = "Mind"
    v4845.Type = BattleFunc_78
    BattleFunc_78 = "The user trades traits with the target."
    v4845.Desc = BattleFunc_78
    BattleFunc_78 = "Passive"
    v4845.Category = BattleFunc_78
    BattleFunc_78 = 100
    v4845.Accuracy = BattleFunc_78
    BattleFunc_78 = true
    v4845.Sound = BattleFunc_78
    BattleFunc_78 = 5
    v4845.Uses = BattleFunc_78
    BattleFunc_78 = nil
    v4845.Power = BattleFunc_78
    BattleFunc_78 = "Single"
    v4845.Target = BattleFunc_78
    local function BattleFunc_79(p317, p318, p319)
        local v1394 = v2.GetTrait(p319)
        p318.Ability = p319.Ability
        p319.Ability = p318.Ability
        p317:AddDialogue(p317.ActionList, "&DOODLENAME," .. p318.ID .. "&" .. "'s trait is now " .. p318.Ability .. "!")
        p317:AddDialogue(p317.ActionList, "&DOODLENAME," .. p319.ID .. "&" .. "'s trait is now " .. p319.Ability .. "!")
    end
    v4845.BattleFunc = BattleFunc_79
    v4663["Trait Exchange"] = v4845
    local v4846 = {}
    BattleFunc_79 = "Food"
    v4846.Type = BattleFunc_79
    BattleFunc_79 = "The user greatly increases its Defense. The user changes its trait to Adipose, taking less damage from Fire and Ice-type attacks."
    v4846.Desc = BattleFunc_79
    BattleFunc_79 = "Passive"
    v4846.Category = BattleFunc_79
    BattleFunc_79 = true
    v4846.Accuracy = BattleFunc_79
    BattleFunc_79 = 10
    v4846.Uses = BattleFunc_79
    BattleFunc_79 = nil
    v4846.Power = BattleFunc_79
    BattleFunc_79 = "Self"
    v4846.Target = BattleFunc_79
    local function BattleFunc_80(p320, p321, p322)
        local v1421 = {}
        v1421.def = 2
        v4(p320, p321, p321, 100, v1421)
        local v1423 = p321.Ability
        v1423 = "Adipose"
        p321.Ability = v1423
        p320:AddDialogue(p320.ActionList, "&DOODLENAME," .. p321.ID .. "&" .. "'s trait is now Adipose!")
        p320:AddDialogue(p320.ActionList, "&DOODLENAME," .. p321.ID .. "&" .. " now takes less damage from Ice and Fire-type attacks!")
    end
    v4846.BattleFunc = BattleFunc_80
    v4663["Fatten Up"] = v4846
    local v4847 = {}
    BattleFunc_80 = "Fire"
    v4847.Type = BattleFunc_80
    BattleFunc_80 = "The user internally heats up, boosting its magic attack. If the user has a status effect, greatly boost the user's magic attack instead."
    v4847.Desc = BattleFunc_80
    BattleFunc_80 = "Passive"
    v4847.Category = BattleFunc_80
    BattleFunc_80 = true
    v4847.Accuracy = BattleFunc_80
    BattleFunc_80 = 10
    v4847.Uses = BattleFunc_80
    BattleFunc_80 = nil
    v4847.Power = BattleFunc_80
    BattleFunc_80 = "Single"
    v4847.Target = BattleFunc_80
    local function BattleFunc_81(p323, p324, p325)
        local v1438 = p324.Status
        v1438 = v4
        local v1443 = {}
        v1443.matk = 2
        v1438(p323, p324, p324, 100, v1443)
        return 
        local v1450 = {}
        v1450.matk = 1
        v4(p323, p324, p324, 100, v1450)
    end
    v4847.BattleFunc = BattleFunc_81
    v4663.Inflame = v4847
    local v4848 = {}
    BattleFunc_81 = "Basic"
    v4848.Type = BattleFunc_81
    BattleFunc_81 = true
    v4848.AINeverUse = BattleFunc_81
    BattleFunc_81 = "The user begs for money. Only works one time per battle."
    v4848.Desc = BattleFunc_81
    BattleFunc_81 = "Passive"
    v4848.Category = BattleFunc_81
    BattleFunc_81 = true
    v4848.Accuracy = BattleFunc_81
    BattleFunc_81 = 10
    v4848.Uses = BattleFunc_81
    BattleFunc_81 = nil
    v4848.Power = BattleFunc_81
    BattleFunc_81 = "Single"
    v4848.Target = BattleFunc_81
    local function BattleFunc_82(p326, p327, p328)
        local v1453 = p326.Begged
        v1453 = p326.BattleType
        p326:AddDialogue(p326.ActionList, "But it failed!")
        return 
        local v1456 = p326.BattleType
        v1456 = p327.Level * 10
        local v1463 = math.random(math.ceil(v1456 * 0.85), math.ceil(v1456 * 1.15))
        local v1497 = p327.Owner
        local v1466 = p1.PlayerData[v1497]
        if not v1466 then
            v1466:AddMoney(v1463)
            p326:AddDialogue(p326.ActionList, "&DOODLENAME," .. p327.ID .. "&" .. " got $" .. v1463 .. " from begging!")
            p326.Begged = true
            return 
        end
        p326:AddDialogue(p326.ActionList, "But it failed!")
        return 
        if not p326.TrainerId then
            v1466 = p326.ActionList
            v1497 = "&DOODLENAME,"
            local v1481 = "&"
            v1469 = " begged for money!"
            p326:AddDialogue(v1466, v1497 .. p327.ID .. v1481 .. v1469)
            local v1483 = p1
            v1463 = v1483.Trainers.Battles
            local v1485 = v1463[p326.TrainerId]
            if v1485 then
                v1483 = p326.ActionList
                v1497 = "But it failed!"
                p326:AddDialogue(v1483, v1497)
                return 
            end
            local v1488 = p1.PlayerData
            local v1500 = p327.Owner
            local v1501 = v1488[v1500]
            if not v1501 then
                v1500 = v1485.Cash / 10
                v1488 = math.floor
                local v1489 = v1488(v1500)
                v1481 = v1489
                v1501:AddMoney(v1481)
                v1470 = p326.TrainerName
                v1471 = " felt bad and gave $"
                v1472 = v1489
                v1473 = "!"
                v1469 = v1470 .. v1471 .. v1472 .. v1473
                p326:AddDialogue(p326.ActionList, v1469)
                p326.Begged = true
                return 
            end
            p326:AddDialogue(p326.ActionList, "But it failed!")
            return 
        end
        v1484 = p326.ActionList
        p326:AddDialogue(v1484, "But it failed!")
    end
    v4848.BattleFunc = BattleFunc_82
    v4663.Panhandle = v4848
    local v4849 = {}
    BattleFunc_82 = "Basic"
    v4849.Type = BattleFunc_82
    BattleFunc_82 = "The user launches a surprise attack and makes the target flinch. It only works on the first turn each time the user enters battle."
    v4849.Desc = BattleFunc_82
    BattleFunc_82 = 3
    v4849.Priority = BattleFunc_82
    BattleFunc_82 = "Physical"
    v4849.Category = BattleFunc_82
    BattleFunc_82 = 100
    v4849.Accuracy = BattleFunc_82
    BattleFunc_82 = 10
    v4849.Uses = BattleFunc_82
    BattleFunc_82 = 30
    v4849.Power = BattleFunc_82
    BattleFunc_82 = "Single"
    v4849.Target = BattleFunc_82
    BattleFunc_82 = true
    v4849.Contact = BattleFunc_82
    v4849.ModifyDamage = function(p329, p330, p331, p332, p333, p334, p335)
        if not p330.FirstTurn then
            if p335 then
                p329:AddDialogue(p329.ActionList, "But it failed!")
            end
            return 0
        end
        return 1
    end
    local function BattleFunc_83(p336, p337, p338)
        local v1510 = p337.FirstTurn
        v1510 = v3
        v1510(p336, p337, p338, 100, "Flinch")
    end
    v4849.BattleFunc = BattleFunc_83
    v4663.Subterfuge = v4849
    local v4850 = {}
    BattleFunc_83 = "Basic"
    v4850.Type = BattleFunc_83
    BattleFunc_83 = "The user glares at the target with a cute look. It greatly lowers the target's attack."
    v4850.Desc = BattleFunc_83
    BattleFunc_83 = "Passive"
    v4850.Category = BattleFunc_83
    BattleFunc_83 = 100
    v4850.Accuracy = BattleFunc_83
    BattleFunc_83 = 20
    v4850.Uses = BattleFunc_83
    BattleFunc_83 = nil
    v4850.Power = BattleFunc_83
    BattleFunc_83 = "Single"
    v4850.Target = BattleFunc_83
    local function BattleFunc_84(p339, p340, p341)
        local v1522 = {}
        v1522.atk = -2
        v4(p339, p340, p341, 100, v1522)
    end
    v4850.BattleFunc = BattleFunc_84
    v4663["Cutesy Glare"] = v4850
    local v4851 = {}
    BattleFunc_84 = "Basic"
    v4851.Type = BattleFunc_84
    BattleFunc_84 = "The user glares at the target with an arrogant look. It lowers the target's attack and defense."
    v4851.Desc = BattleFunc_84
    BattleFunc_84 = "Passive"
    v4851.Category = BattleFunc_84
    BattleFunc_84 = 90
    v4851.Accuracy = BattleFunc_84
    BattleFunc_84 = 35
    v4851.Uses = BattleFunc_84
    BattleFunc_84 = nil
    v4851.Power = BattleFunc_84
    BattleFunc_84 = "Single"
    v4851.Target = BattleFunc_84
    local function BattleFunc_85(p342, p343, p344)
        local v1530 = {}
        v1530.atk = -1
        v1530.def = -1
        v4(p342, p343, p344, 100, v1530)
    end
    v4851.BattleFunc = BattleFunc_85
    v4663["Cold Glance"] = v4851
    local v4852 = {}
    BattleFunc_85 = "Basic"
    v4852.Type = BattleFunc_85
    BattleFunc_85 = "The user makes the target sad. It lowers the target's defense and magical defense."
    v4852.Desc = BattleFunc_85
    BattleFunc_85 = "Passive"
    v4852.Category = BattleFunc_85
    BattleFunc_85 = 90
    v4852.Accuracy = BattleFunc_85
    BattleFunc_85 = 20
    v4852.Uses = BattleFunc_85
    BattleFunc_85 = nil
    v4852.Power = BattleFunc_85
    BattleFunc_85 = "Single"
    v4852.Target = BattleFunc_85
    local function BattleFunc_86(p345, p346, p347)
        local v1539 = {}
        v1539.mdef = -1
        v1539.def = -1
        v4(p345, p346, p347, 100, v1539)
    end
    v4852.BattleFunc = BattleFunc_86
    v4663["Sad Zone"] = v4852
    local v4853 = {}
    BattleFunc_86 = "Basic"
    v4853.Type = BattleFunc_86
    BattleFunc_86 = "The user scrutinizes the opposing team with a scary look that lowers the Defense stat. "
    v4853.Desc = BattleFunc_86
    BattleFunc_86 = "Passive"
    v4853.Category = BattleFunc_86
    BattleFunc_86 = 100
    v4853.Accuracy = BattleFunc_86
    BattleFunc_86 = 40
    v4853.Uses = BattleFunc_86
    BattleFunc_86 = nil
    v4853.Power = BattleFunc_86
    BattleFunc_86 = "AllFoes"
    v4853.Target = BattleFunc_86
    local function BattleFunc_87(p348, p349, p350)
        local v1548 = {}
        v1548.def = -1
        v4(p348, p349, p350, 100, v1548)
    end
    v4853.BattleFunc = BattleFunc_87
    v4663.Scrutinize = v4853
    local v4854 = {}
    BattleFunc_87 = "Basic"
    v4854.Type = BattleFunc_87
    BattleFunc_87 = "The user croaks, boosting its magical attack."
    v4854.Desc = BattleFunc_87
    BattleFunc_87 = "Passive"
    v4854.Category = BattleFunc_87
    BattleFunc_87 = true
    v4854.Accuracy = BattleFunc_87
    BattleFunc_87 = 40
    v4854.Uses = BattleFunc_87
    BattleFunc_87 = nil
    v4854.Power = BattleFunc_87
    BattleFunc_87 = "Self"
    v4854.Target = BattleFunc_87
    local function BattleFunc_88(p351, p352, p353)
        local v1556 = {}
        v1556.matk = 1
        v4(p351, p352, p353, 100, v1556)
    end
    v4854.BattleFunc = BattleFunc_88
    v4663.Croak = v4854
    local v4855 = {}
    BattleFunc_88 = "Basic"
    v4855.Type = BattleFunc_88
    BattleFunc_88 = "The user allures the target into following them around. This greatly lowers the target's speed."
    v4855.Desc = BattleFunc_88
    BattleFunc_88 = "Passive"
    v4855.Category = BattleFunc_88
    BattleFunc_88 = 100
    v4855.Accuracy = BattleFunc_88
    BattleFunc_88 = true
    v4855.Sound = BattleFunc_88
    BattleFunc_88 = 20
    v4855.Uses = BattleFunc_88
    BattleFunc_88 = nil
    v4855.Power = BattleFunc_88
    BattleFunc_88 = "Single"
    v4855.Target = BattleFunc_88
    local function BattleFunc_89(p354, p355, p356)
        local v1564 = {}
        v1564.spe = -2
        v4(p354, p355, p356, 100, v1564)
    end
    v4855.BattleFunc = BattleFunc_89
    v4663.Allure = v4855
    local v4856 = {}
    BattleFunc_89 = "Basic"
    v4856.Type = BattleFunc_89
    BattleFunc_89 = "The user squeaks, trying to gain sympathy points. The opposing team's attack are lowered."
    v4856.Desc = BattleFunc_89
    BattleFunc_89 = "Passive"
    v4856.Category = BattleFunc_89
    BattleFunc_89 = 100
    v4856.Accuracy = BattleFunc_89
    BattleFunc_89 = true
    v4856.Sound = BattleFunc_89
    BattleFunc_89 = 40
    v4856.Uses = BattleFunc_89
    BattleFunc_89 = nil
    v4856.Power = BattleFunc_89
    BattleFunc_89 = "AllFoes"
    v4856.Target = BattleFunc_89
    local function BattleFunc_90(p357, p358, p359)
        local v1572 = {}
        v1572.atk = -1
        v4(p357, p358, p359, 100, v1572)
    end
    v4856.BattleFunc = BattleFunc_90
    v4663.Squeak = v4856
    local v4857 = {}
    BattleFunc_90 = "Spirit"
    v4857.Type = BattleFunc_90
    BattleFunc_90 = "The user damages the target, and then tries to trades items."
    v4857.Desc = BattleFunc_90
    BattleFunc_90 = "Magical"
    v4857.Category = BattleFunc_90
    BattleFunc_90 = 100
    v4857.Accuracy = BattleFunc_90
    BattleFunc_90 = 5
    v4857.Uses = BattleFunc_90
    BattleFunc_90 = 75
    v4857.Power = BattleFunc_90
    BattleFunc_90 = "Single"
    v4857.Target = BattleFunc_90
    local function BattleFunc_91(p360, p361, p362)
        local v1577 = v2.GetTrait(p362)
        if not v1577 then
            if not v1577.NoItemSteal then
                p360:AddDialogue(p360.ActionList, "&DOODLENAME," .. p362.ID .. "&" .. " is really protective of its held item!")
                return 
            end
        end
        local v1585 = p361.HeldItem
        v1585 = p362.HeldItem
        v1580 = "&DOODLENAME,"
        v1581 = p361.ID
        v1582 = "&"
        v1583 = " and "
        p360:AddDialogue(p360.ActionList, v1580 .. v1581 .. v1582 .. v1583 .. "&DOODLENAME," .. p362.ID .. "&" .. " don't have any held items!")
        return 
        p361.HeldItem = p362.HeldItem
        p362.HeldItem = p361.HeldItem
        v1580 = "&DOODLENAME,"
        v1581 = p361.ID
        v1582 = "&"
        v1583 = " and "
        p360:AddDialogue(p360.ActionList, v1580 .. v1581 .. v1582 .. v1583 .. "&DOODLENAME," .. p362.ID .. "&" .. " traded items!")
        p361:NewHeldItem(p360)
        p362:NewHeldItem(p360)
        p362.NoUpdateItem = true
        p361.NoUpdateItem = true
    end
    v4857.BattleFunc = BattleFunc_91
    v4663["Gleeful Ruse"] = v4857
    local v4858 = {}
    BattleFunc_91 = "Mind"
    v4858.Type = BattleFunc_91
    BattleFunc_91 = "The user convinces the target to trade held items."
    v4858.Desc = BattleFunc_91
    BattleFunc_91 = "Passive"
    v4858.Category = BattleFunc_91
    BattleFunc_91 = 100
    v4858.Accuracy = BattleFunc_91
    BattleFunc_91 = true
    v4858.Sound = BattleFunc_91
    BattleFunc_91 = 5
    v4858.Uses = BattleFunc_91
    BattleFunc_91 = nil
    v4858.Power = BattleFunc_91
    BattleFunc_91 = "Single"
    v4858.Target = BattleFunc_91
    local function BattleFunc_92(p363, p364, p365)
        local v1610 = v2.GetTrait(p365)
        if not v1610 then
            if not v1610.NoItemSteal then
                p363:AddDialogue(p363.ActionList, "&DOODLENAME," .. p365.ID .. "&" .. " is really protective of its held item!")
                return 
            end
        end
        local v1618 = p364.HeldItem
        v1618 = p365.HeldItem
        v1613 = "&DOODLENAME,"
        v1614 = p364.ID
        v1615 = "&"
        v1616 = " and "
        p363:AddDialogue(p363.ActionList, v1613 .. v1614 .. v1615 .. v1616 .. "&DOODLENAME," .. p365.ID .. "&" .. " don't have any held items!")
        return 
        p364.HeldItem = p365.HeldItem
        p365.HeldItem = p364.HeldItem
        v1613 = "&DOODLENAME,"
        v1614 = p364.ID
        v1615 = "&"
        v1616 = " and "
        p363:AddDialogue(p363.ActionList, v1613 .. v1614 .. v1615 .. v1616 .. "&DOODLENAME," .. p365.ID .. "&" .. " traded items!")
        p364:NewHeldItem(p363)
        p365:NewHeldItem(p363)
        p365.NoUpdateItem = true
        p364.NoUpdateItem = true
    end
    v4858.BattleFunc = BattleFunc_92
    v4663.Trade = v4858
    local v4859 = {}
    BattleFunc_92 = "Food"
    v4859.Type = BattleFunc_92
    BattleFunc_92 = "The user sprinkles seasoning on the opposing team. Food-types do more damage to targets that have seasoning on the target."
    v4859.Desc = BattleFunc_92
    BattleFunc_92 = "Passive"
    v4859.Category = BattleFunc_92
    BattleFunc_92 = 100
    v4859.Accuracy = BattleFunc_92
    BattleFunc_92 = 10
    v4859.Uses = BattleFunc_92
    BattleFunc_92 = nil
    v4859.Power = BattleFunc_92
    BattleFunc_92 = "AllFoes"
    v4859.Target = BattleFunc_92
    local function BattleFunc_93(p366, p367, p368)
        local v1641 = p368.Decoy
        local v1643 = "&DOODLENAME,"
        local v1644 = p368.ID
        local v1645 = "&"
        local v1646 = "'s decoy blocked the attack!"
        p366:AddDialogue(p366.ActionList, v1643 .. v1644 .. v1645 .. v1646)
        return 
        if not p368.Seasoning then
            v1643 = "&DOODLENAME,"
            v1644 = p368.ID
            v1645 = "&"
            v1646 = " is already covered in seasoning!"
            p366:AddDialogue(p366.ActionList, v1643 .. v1644 .. v1645 .. v1646)
            return 
        end
        p368.Seasoning = true
        p366:AddDialogue(p366.ActionList, "&DOODLENAME," .. p368.ID .. "&" .. " is now covered in seasoning!")
    end
    v4859.BattleFunc = BattleFunc_93
    v4663.Seasoning = v4859
    local v4860 = {}
    BattleFunc_93 = "Beast"
    v4860.Type = BattleFunc_93
    BattleFunc_93 = "The user activates its primal rage. Beast-type attacks do more damage."
    v4860.Desc = BattleFunc_93
    BattleFunc_93 = "Passive"
    v4860.Category = BattleFunc_93
    BattleFunc_93 = true
    v4860.Accuracy = BattleFunc_93
    BattleFunc_93 = 10
    v4860.Uses = BattleFunc_93
    BattleFunc_93 = nil
    v4860.Power = BattleFunc_93
    BattleFunc_93 = "Self"
    v4860.Target = BattleFunc_93
    local function BattleFunc_94(p369, p370, p371)
        if not p370.PrimalRage then
            p369:AddDialogue(p369.ActionList, "&DOODLENAME," .. p370.ID .. "&" .. " already is under primal rage!")
            return 
        end
        v1661 = "&DOODLENAME,"
        v1662 = p370.ID
        v1663 = "&"
        v1664 = " activated its primal rage!"
        p369:AddDialogue(p369.ActionList, v1661 .. v1662 .. v1663 .. v1664)
        p369:AddDialogue(p369.ActionList, "Beast-type attacks do more damage!")
        p370.PrimalRage = true
    end
    v4860.BattleFunc = BattleFunc_94
    v4663["Primal Rage"] = v4860
    local v4861 = {}
    BattleFunc_94 = "Insect"
    v4861.Type = BattleFunc_94
    BattleFunc_94 = "The user swaddles the target in a bunch of bandages, lowering their attack and speed."
    v4861.Desc = BattleFunc_94
    BattleFunc_94 = "Passive"
    v4861.Category = BattleFunc_94
    BattleFunc_94 = 100
    v4861.Accuracy = BattleFunc_94
    BattleFunc_94 = 30
    v4861.Uses = BattleFunc_94
    BattleFunc_94 = nil
    v4861.Power = BattleFunc_94
    BattleFunc_94 = "Single"
    v4861.Target = BattleFunc_94
    local function BattleFunc_95(p372, p373, p374)
        local v1679 = {}
        v1679.atk = -1
        v1679.spe = -1
        v4(p372, p373, p374, 100, v1679)
    end
    v4861.BattleFunc = BattleFunc_95
    v4663.Swaddle = v4861
    local v4862 = {}
    BattleFunc_95 = "Insect"
    v4862.Type = BattleFunc_95
    BattleFunc_95 = "The user covers the target in a web, lowering their speed."
    v4862.Desc = BattleFunc_95
    BattleFunc_95 = "Passive"
    v4862.Category = BattleFunc_95
    BattleFunc_95 = 100
    v4862.Accuracy = BattleFunc_95
    BattleFunc_95 = 40
    v4862.Uses = BattleFunc_95
    BattleFunc_95 = nil
    v4862.Power = BattleFunc_95
    BattleFunc_95 = "Single"
    v4862.Target = BattleFunc_95
    local function BattleFunc_96(p375, p376, p377)
        local v1688 = {}
        v1688.spe = -1
        v4(p375, p376, p377, 100, v1688)
    end
    v4862.BattleFunc = BattleFunc_96
    v4663.Web = v4862
    local v4863 = {}
    BattleFunc_96 = "Basic"
    v4863.Type = BattleFunc_96
    BattleFunc_96 = "The user cries up a storm. This lowers the target's magic defense."
    v4863.Desc = BattleFunc_96
    BattleFunc_96 = "Passive"
    v4863.Category = BattleFunc_96
    BattleFunc_96 = 100
    v4863.Accuracy = BattleFunc_96
    BattleFunc_96 = true
    v4863.Sound = BattleFunc_96
    BattleFunc_96 = 20
    v4863.Uses = BattleFunc_96
    BattleFunc_96 = nil
    v4863.Power = BattleFunc_96
    BattleFunc_96 = "Single"
    v4863.Target = BattleFunc_96
    local function BattleFunc_97(p378, p379, p380)
        local v1696 = {}
        v1696.mdef = -1
        v4(p378, p379, p380, 100, v1696)
    end
    v4863.BattleFunc = BattleFunc_97
    v4663["Crocodile Tears"] = v4863
    local v4864 = {}
    BattleFunc_97 = "Spark"
    v4864.Type = BattleFunc_97
    BattleFunc_97 = "The user charges up with electricity, increasing its speed."
    v4864.Desc = BattleFunc_97
    BattleFunc_97 = "Passive"
    v4864.Category = BattleFunc_97
    BattleFunc_97 = true
    v4864.Accuracy = BattleFunc_97
    BattleFunc_97 = 20
    v4864.Uses = BattleFunc_97
    BattleFunc_97 = nil
    v4864.Power = BattleFunc_97
    BattleFunc_97 = "Self"
    v4864.Target = BattleFunc_97
    local function BattleFunc_98(p381, p382, p383)
        local v1704 = {}
        v1704.spe = 1
        v4(p381, p382, p383, 100, v1704)
    end
    v4864.BattleFunc = BattleFunc_98
    v4663.Energized = v4864
    local v4865 = {}
    BattleFunc_98 = "Basic"
    v4865.Type = BattleFunc_98
    BattleFunc_98 = "The user adopts a more agile-stance, greatly increasing its speed."
    v4865.Desc = BattleFunc_98
    BattleFunc_98 = "Passive"
    v4865.Category = BattleFunc_98
    BattleFunc_98 = true
    v4865.Accuracy = BattleFunc_98
    BattleFunc_98 = 10
    v4865.Uses = BattleFunc_98
    BattleFunc_98 = nil
    v4865.Power = BattleFunc_98
    BattleFunc_98 = "Self"
    v4865.Target = BattleFunc_98
    local function BattleFunc_99(p384, p385, p386)
        local v1712 = {}
        v1712.spe = 2
        v4(p384, p385, p386, 100, v1712)
    end
    v4865.BattleFunc = BattleFunc_99
    v4663.Haste = v4865
    local v4866 = {}
    BattleFunc_99 = "Basic"
    v4866.Type = BattleFunc_99
    BattleFunc_99 = "The user floats into the sky, boosting its evasion but lowering its speed."
    v4866.Desc = BattleFunc_99
    BattleFunc_99 = "Passive"
    v4866.Category = BattleFunc_99
    BattleFunc_99 = 100
    v4866.Accuracy = BattleFunc_99
    BattleFunc_99 = 10
    v4866.Uses = BattleFunc_99
    BattleFunc_99 = nil
    v4866.Power = BattleFunc_99
    BattleFunc_99 = "Self"
    v4866.Target = BattleFunc_99
    local function BattleFunc_100(p387, p388, p389)
        local v1720 = {}
        v1720.eva = 1
        v1720.spe = -1
        v4(p387, p388, p389, 100, v1720)
    end
    v4866.BattleFunc = BattleFunc_100
    v4663["Balloon Boost"] = v4866
    local v4867 = {}
    BattleFunc_100 = "Light"
    v4867.Type = BattleFunc_100
    BattleFunc_100 = "A bright flare that greatly lowers the target's evasiveness. It may also leave the target with a burn."
    v4867.Desc = BattleFunc_100
    BattleFunc_100 = "Passive"
    v4867.Category = BattleFunc_100
    BattleFunc_100 = 100
    v4867.Accuracy = BattleFunc_100
    BattleFunc_100 = 20
    v4867.Uses = BattleFunc_100
    BattleFunc_100 = nil
    v4867.Power = BattleFunc_100
    BattleFunc_100 = "Single"
    v4867.Target = BattleFunc_100
    local function BattleFunc_101(p390, p391, p392)
        local v1729 = {}
        v1729.eva = -2
        v4(p390, p391, p392, 100, v1729)
        v3(p390, p391, p392, 20, "Burn")
    end
    v4867.BattleFunc = BattleFunc_101
    v4663.Flare = v4867
    local v4868 = {}
    BattleFunc_101 = "Dark"
    v4868.Type = BattleFunc_101
    BattleFunc_101 = "Projects raw terror into the enemy, forcing them to flinch on their next move. This move always attacks last."
    v4868.Desc = BattleFunc_101
    BattleFunc_101 = "Passive"
    v4868.Category = BattleFunc_101
    BattleFunc_101 = 100
    v4868.Accuracy = BattleFunc_101
    BattleFunc_101 = 5
    v4868.Uses = BattleFunc_101
    BattleFunc_101 = -3
    v4868.Priority = BattleFunc_101
    BattleFunc_101 = nil
    v4868.Power = BattleFunc_101
    BattleFunc_101 = "Single"
    v4868.Target = BattleFunc_101
    local function BattleFunc_102(p393, p394, p395)
        p395.ForceFlinch = true
    end
    v4868.BattleFunc = BattleFunc_102
    v4663["Pure Fear"] = v4868
    local v4869 = {}
    BattleFunc_102 = "Light"
    v4869.Type = BattleFunc_102
    BattleFunc_102 = "Blinding lights cuts the target's accuracy."
    v4869.Desc = BattleFunc_102
    BattleFunc_102 = "Passive"
    v4869.Category = BattleFunc_102
    BattleFunc_102 = 100
    v4869.Accuracy = BattleFunc_102
    BattleFunc_102 = 10
    v4869.Uses = BattleFunc_102
    BattleFunc_102 = nil
    v4869.Power = BattleFunc_102
    BattleFunc_102 = "Single"
    v4869.Target = BattleFunc_102
    local function BattleFunc_103(p396, p397, p398)
        local v1745 = {}
        v1745.acc = -1
        v4(p396, p397, p398, 100, v1745)
    end
    v4869.BattleFunc = BattleFunc_103
    v4663["Blinding Lights"] = v4869
    local v4870 = {}
    BattleFunc_103 = "Basic"
    v4870.Type = BattleFunc_103
    BattleFunc_103 = "Barks aggressively, annoying the target and lowering their defense and magic defense."
    v4870.Desc = BattleFunc_103
    BattleFunc_103 = "Passive"
    v4870.Category = BattleFunc_103
    BattleFunc_103 = 100
    v4870.Accuracy = BattleFunc_103
    BattleFunc_103 = 40
    v4870.Uses = BattleFunc_103
    BattleFunc_103 = nil
    v4870.Power = BattleFunc_103
    BattleFunc_103 = "Single"
    v4870.Target = BattleFunc_103
    local function BattleFunc_104(p399, p400, p401)
        local v1753 = {}
        v1753.def = -1
        v1753.mdef = -1
        v4(p399, p400, p401, 100, v1753)
    end
    v4870.BattleFunc = BattleFunc_104
    v4663.Bark = v4870
    local v4871 = {}
    BattleFunc_104 = "Basic"
    v4871.Type = BattleFunc_104
    BattleFunc_104 = "The user sharpens its claws or weapons, greatly boosting their attack."
    v4871.Desc = BattleFunc_104
    BattleFunc_104 = "Passive"
    v4871.Category = BattleFunc_104
    BattleFunc_104 = 100
    v4871.Accuracy = BattleFunc_104
    BattleFunc_104 = 20
    v4871.Uses = BattleFunc_104
    BattleFunc_104 = nil
    v4871.Power = BattleFunc_104
    BattleFunc_104 = "Self"
    v4871.Target = BattleFunc_104
    local function BattleFunc_105(p402, p403, p404)
        local v1762 = {}
        v1762.atk = 2
        v4(p402, p403, p404, 100, v1762)
    end
    v4871.BattleFunc = BattleFunc_105
    v4663.Sharpen = v4871
    local v4872 = {}
    BattleFunc_105 = "Basic"
    v4872.Type = BattleFunc_105
    BattleFunc_105 = "Once this move is used, this move's type turns into a Fire, Ice, or Spark-type move, cycling through them."
    v4872.Desc = BattleFunc_105
    BattleFunc_105 = true
    v4872.Slash = BattleFunc_105
    BattleFunc_105 = true
    v4872.Contact = BattleFunc_105
    BattleFunc_105 = "Physical"
    v4872.Category = BattleFunc_105
    BattleFunc_105 = 100
    v4872.Accuracy = BattleFunc_105
    BattleFunc_105 = 10
    v4872.Uses = BattleFunc_105
    BattleFunc_105 = {}
    local v4873 = {}
    local v4874 = {}
    v4874.AnimType = "Slash"
    v4874.Color = Color3.fromRGB(230, 145, 56)
    v4874.Size = 2
    v4874.Times = 1
    v4874.Wait = 0.05
    v4874.Pitch = 0.85
    local v4881 = {}
    v4881.AnimType = "Slash"
    v4881.Color = Color3.fromRGB(159, 197, 232)
    v4881.Size = 2
    v4881.Flipped = true
    v4881.Times = 1
    v4881.Wait = 0.05
    v4881.Pitch = 1.3
    local v4888 = {}
    v4888.AnimType = "Slash"
    v4888.Color = Color3.fromRGB(255, 228, 98)
    v4888.Size = 2
    v4888.Times = 1
    v4888.Wait = 0.05
    v4888.Pitch = 0.85
    v4873[1] = v4874
    v4873[2] = v4881
    v4873[3] = v4888
    BattleFunc_105.Order = v4873
    v4872.MoveAnim = BattleFunc_105
    BattleFunc_105 = 70
    v4872.Power = BattleFunc_105
    BattleFunc_105 = "Single"
    v4872.Target = BattleFunc_105
    local function MoveChangeType_1(p405, p406, p407, p408)
        local v1779 = {}
        v1779[0] = "Fire"
        v1779[1] = "Ice"
        v1779[2] = "Spark"
        local v1793 = p406.TriSlash
        p406.TriSlash = 0
        local v1796 = p406.TriSlash % 3
        local v1797 = v1779[v1796]
        if not v1797 then
            v1797 = v1779[v1796]
            p408.Type = v1797
        end
        p406.TriSlash = p406.TriSlash + 1
        local v1799 = p408.Type
        p405:AddDialogue(p405.ActionList, "This attack was an " .. p408.Type .. "-type move!")
        return 
        p405:AddDialogue(p405.ActionList, "This attack was a " .. p408.Type .. "-type move!")
    end
    v4872.MoveChangeType = MoveChangeType_1
    v4663["Tri-Elemental Slash"] = v4872
    local v4894 = {}
    MoveChangeType_1 = "Basic"
    v4894.Type = MoveChangeType_1
    MoveChangeType_1 = "The user does a strange, sad dance, greatly increasing its defense."
    v4894.Desc = MoveChangeType_1
    MoveChangeType_1 = "Passive"
    v4894.Category = MoveChangeType_1
    MoveChangeType_1 = true
    v4894.Accuracy = MoveChangeType_1
    MoveChangeType_1 = 20
    v4894.Uses = MoveChangeType_1
    MoveChangeType_1 = nil
    v4894.Power = MoveChangeType_1
    MoveChangeType_1 = "Self"
    v4894.Target = MoveChangeType_1
    local function BattleFunc_106(p409, p410, p411)
        local v1809 = {}
        v1809.def = 2
        v4(p409, p410, p411, 100, v1809)
    end
    v4894.BattleFunc = BattleFunc_106
    v4663["Misery Dance"] = v4894
    local v4895 = {}
    BattleFunc_106 = "Spirit"
    v4895.Type = BattleFunc_106
    BattleFunc_106 = "If the user doesn't have an item, boost its attack and speed. Otherwise, no effect."
    v4895.Desc = BattleFunc_106
    BattleFunc_106 = "Passive"
    v4895.Category = BattleFunc_106
    BattleFunc_106 = true
    v4895.Accuracy = BattleFunc_106
    BattleFunc_106 = 20
    v4895.Uses = BattleFunc_106
    BattleFunc_106 = nil
    v4895.Power = BattleFunc_106
    BattleFunc_106 = "Self"
    v4895.Target = BattleFunc_106
    local function BattleFunc_107(p412, p413, p414)
        local v1812 = p413.HeldItem
        v1812 = v4
        local v1817 = {}
        v1817.spe = 1
        v1817.atk = 1
        v1812(p412, p413, p414, 100, v1817)
        return 
        p412:AddDialogue(p412.ActionList, "It had no effect!")
    end
    v4895.BattleFunc = BattleFunc_107
    v4663.Jealousy = v4895
    local v4896 = {}
    BattleFunc_107 = "Mind"
    v4896.Type = BattleFunc_107
    BattleFunc_107 = " This Doodle is quick to react in times of duress, boosting their magical attack and speed."
    v4896.Desc = BattleFunc_107
    BattleFunc_107 = "Passive"
    v4896.Category = BattleFunc_107
    BattleFunc_107 = true
    v4896.Accuracy = BattleFunc_107
    BattleFunc_107 = 20
    v4896.Uses = BattleFunc_107
    BattleFunc_107 = nil
    v4896.Power = BattleFunc_107
    BattleFunc_107 = "Self"
    v4896.Target = BattleFunc_107
    local function BattleFunc_108(p415, p416, p417)
        local v1829 = {}
        v1829.spe = 1
        v1829.matk = 1
        v4(p415, p416, p417, 100, v1829)
    end
    v4896.BattleFunc = BattleFunc_108
    v4663["Quick Thinking"] = v4896
    local v4897 = {}
    BattleFunc_108 = "Basic"
    v4897.Type = BattleFunc_108
    BattleFunc_108 = "The user does a strange dance, increasing its defense, magic defense, and speed."
    v4897.Desc = BattleFunc_108
    BattleFunc_108 = "Passive"
    v4897.Category = BattleFunc_108
    BattleFunc_108 = true
    v4897.Accuracy = BattleFunc_108
    BattleFunc_108 = 20
    v4897.Uses = BattleFunc_108
    BattleFunc_108 = nil
    v4897.Power = BattleFunc_108
    BattleFunc_108 = "Self"
    v4897.Target = BattleFunc_108
    local function BattleFunc_109(p418, p419, p420)
        local v1838 = {}
        v1838.spe = 1
        v1838.mdef = 1
        v1838.def = 1
        v4(p418, p419, p420, 100, v1838)
    end
    v4897.BattleFunc = BattleFunc_109
    v4663["Swagger Dance"] = v4897
    local v4898 = {}
    BattleFunc_109 = "Basic"
    v4898.Type = BattleFunc_109
    BattleFunc_109 = "The user does a happy jig, increasing its defense and magic defense."
    v4898.Desc = BattleFunc_109
    BattleFunc_109 = "Passive"
    v4898.Category = BattleFunc_109
    BattleFunc_109 = true
    v4898.Accuracy = BattleFunc_109
    BattleFunc_109 = 10
    v4898.Uses = BattleFunc_109
    BattleFunc_109 = nil
    v4898.Power = BattleFunc_109
    BattleFunc_109 = "Self"
    v4898.Target = BattleFunc_109
    local function BattleFunc_110(p421, p422, p423)
        local v1848 = {}
        v1848.mdef = 1
        v1848.def = 1
        v4(p421, p422, p423, 100, v1848)
    end
    v4898.BattleFunc = BattleFunc_110
    v4663["Jolly Dance"] = v4898
    local v4899 = {}
    BattleFunc_110 = "Mind"
    v4899.Type = BattleFunc_110
    BattleFunc_110 = "The user realizes the secrets of the universe, increasing its magical attack and magical defense."
    v4899.Desc = BattleFunc_110
    BattleFunc_110 = "Passive"
    v4899.Category = BattleFunc_110
    BattleFunc_110 = true
    v4899.Accuracy = BattleFunc_110
    BattleFunc_110 = 10
    v4899.Uses = BattleFunc_110
    BattleFunc_110 = nil
    v4899.Power = BattleFunc_110
    BattleFunc_110 = "Self"
    v4899.Target = BattleFunc_110
    local function BattleFunc_111(p424, p425, p426)
        local v1857 = {}
        v1857.matk = 1
        v1857.mdef = 1
        v4(p424, p425, p426, 100, v1857)
    end
    v4899.BattleFunc = BattleFunc_111
    v4663.Enlightenment = v4899
    local v4900 = {}
    BattleFunc_111 = "Plant"
    v4900.Type = BattleFunc_111
    BattleFunc_111 = "The user fortifies its skin, greatly increasing its defense."
    v4900.Desc = BattleFunc_111
    BattleFunc_111 = "Passive"
    v4900.Category = BattleFunc_111
    BattleFunc_111 = true
    v4900.Accuracy = BattleFunc_111
    BattleFunc_111 = 20
    v4900.Uses = BattleFunc_111
    BattleFunc_111 = nil
    v4900.Power = BattleFunc_111
    BattleFunc_111 = "Self"
    v4900.Target = BattleFunc_111
    local function BattleFunc_112(p427, p428, p429)
        local v1866 = {}
        v1866.def = 2
        v4(p427, p428, p429, 100, v1866)
    end
    v4900.BattleFunc = BattleFunc_112
    v4663.Barkskin = v4900
    local v4901 = {}
    BattleFunc_112 = "Melee"
    v4901.Type = BattleFunc_112
    BattleFunc_112 = "Greatly boosts the user's power and speed at the cost of health."
    v4901.Desc = BattleFunc_112
    BattleFunc_112 = "Passive"
    v4901.Category = BattleFunc_112
    BattleFunc_112 = true
    v4901.Accuracy = BattleFunc_112
    BattleFunc_112 = true
    v4901.Recoil = BattleFunc_112
    BattleFunc_112 = 10
    v4901.Uses = BattleFunc_112
    BattleFunc_112 = nil
    v4901.Power = BattleFunc_112
    BattleFunc_112 = "Self"
    v4901.Target = BattleFunc_112
    local function BattleFunc_113(p430, p431, p432)
        local v1874 = {}
        v1874.atk = 2
        local v1889 = 2
        v1874.spe = v1889
        v4(p430, p431, p432, 100, v1874)
        local v1876 = p431.Stats
        local v1880 = math.floor(v1876.hp * 0.5)
        if v1880 > 0 then
            v1876 = p430.ActionList
            v1889 = p431.ID
            p430:AddDialogue(v1876, "&DOODLENAME," .. v1889 .. "&" .. " activated its adrenaline!")
            v1889 = nil
            p430:TakeDamage(p431, v1880, nil, v1889, true)
        end
    end
    v4901.BattleFunc = BattleFunc_113
    v4663.Adrenaline = v4901
    local v4902 = {}
    BattleFunc_113 = "Basic"
    v4902.Type = BattleFunc_113
    BattleFunc_113 = "The user traps the target and prevents them from escaping for 3-5 turns."
    v4902.Desc = BattleFunc_113
    BattleFunc_113 = "Passive"
    v4902.Category = BattleFunc_113
    BattleFunc_113 = 100
    v4902.Accuracy = BattleFunc_113
    BattleFunc_113 = 10
    v4902.Uses = BattleFunc_113
    BattleFunc_113 = nil
    v4902.Power = BattleFunc_113
    BattleFunc_113 = nil
    v4902.TrapMove = BattleFunc_113
    BattleFunc_113 = "Single"
    v4902.Target = BattleFunc_113
    local function BattleFunc_114(p433, p434, p435)
        if not p433:GetItemInfo(p435).Grease then
            p433:AddDialogue(p433.ActionList, "&DOODLENAME," .. p435.ID .. "&" .. " cannot be trapped due to Grease!")
            return 
        end
        local v1903 = p435.Trapped
        v1903 = p434.ID
        p435.TrappedBy = v1903
        p435.Trapped = math.random(4, 6)
        v1898 = "&DOODLENAME,"
        v1899 = p435.ID
        v1900 = "&"
        v1901 = " is trapped!"
        p433:AddDialogue(p433.ActionList, v1898 .. v1899 .. v1900 .. v1901)
        return 
        v1898 = "&DOODLENAME,"
        v1899 = p435.ID
        v1900 = "&"
        v1901 = " is already trapped!"
        p433:AddDialogue(p433.ActionList, v1898 .. v1899 .. v1900 .. v1901)
    end
    v4902.BattleFunc = BattleFunc_114
    v4663.Trap = v4902
    local v4903 = {}
    BattleFunc_114 = "Ice"
    v4903.Type = BattleFunc_114
    BattleFunc_114 = "Lowers the target's speed and prevents them from switching out for 3-5 turns."
    v4903.Desc = BattleFunc_114
    BattleFunc_114 = "Passive"
    v4903.Category = BattleFunc_114
    BattleFunc_114 = 100
    v4903.Accuracy = BattleFunc_114
    BattleFunc_114 = 10
    v4903.Uses = BattleFunc_114
    BattleFunc_114 = nil
    v4903.Power = BattleFunc_114
    BattleFunc_114 = nil
    v4903.TrapMove = BattleFunc_114
    BattleFunc_114 = "Single"
    v4903.Target = BattleFunc_114
    local function BattleFunc_115(p436, p437, p438)
        if not p436:GetItemInfo(p438).Grease then
            p436:AddDialogue(p436.ActionList, "&DOODLENAME," .. p438.ID .. "&" .. " cannot be trapped due to Grease!")
            return 
        end
        v1919 = 100
        v1920 = {}
        v1921 = -1
        v1920.spe = v1921
        v4(p436, p437, p438, v1919, v1920)
        local v1928 = p438.Trapped
        v1928 = p437.ID
        p438.TrappedBy = v1928
        p438.Trapped = math.random(4, 6)
        v1921 = "&"
        v1922 = " is trapped!"
        p436:AddDialogue(p436.ActionList, "&DOODLENAME," .. p438.ID .. v1921 .. v1922)
        return 
        v1921 = "&"
        v1922 = " is already trapped!"
        p436:AddDialogue(p436.ActionList, "&DOODLENAME," .. p438.ID .. v1921 .. v1922)
    end
    v4903.BattleFunc = BattleFunc_115
    v4663["Ice Prison"] = v4903
    local v4904 = {}
    BattleFunc_115 = "Metal"
    v4904.Type = BattleFunc_115
    BattleFunc_115 = "Using chains, prevents the target from escaping for 5 turns."
    v4904.Desc = BattleFunc_115
    BattleFunc_115 = "Passive"
    v4904.Category = BattleFunc_115
    BattleFunc_115 = 100
    v4904.Accuracy = BattleFunc_115
    BattleFunc_115 = 10
    v4904.Uses = BattleFunc_115
    BattleFunc_115 = nil
    v4904.Power = BattleFunc_115
    BattleFunc_115 = nil
    v4904.TrapMove = BattleFunc_115
    BattleFunc_115 = "Single"
    v4904.Target = BattleFunc_115
    local function BattleFunc_116(p439, p440, p441)
        if not p439:GetItemInfo(p441).Grease then
            p439:AddDialogue(p439.ActionList, "&DOODLENAME," .. p441.ID .. "&" .. " cannot be trapped due to Grease!")
            return 
        end
        local v1953 = p441.Trapped
        v1953 = 6
        p441.Trapped = v1953
        v1948 = "&DOODLENAME,"
        v1949 = p441.ID
        v1950 = "&"
        v1951 = " is trapped!"
        p439:AddDialogue(p439.ActionList, v1948 .. v1949 .. v1950 .. v1951)
        return 
        v1948 = "&DOODLENAME,"
        v1949 = p441.ID
        v1950 = "&"
        v1951 = " is already trapped!"
        p439:AddDialogue(p439.ActionList, v1948 .. v1949 .. v1950 .. v1951)
    end
    v4904.BattleFunc = BattleFunc_116
    v4663["Chain Imprisonment"] = v4904
    local v4905 = {}
    BattleFunc_116 = "Basic"
    v4905.Type = BattleFunc_116
    BattleFunc_116 = "The user coils up. This boosts its Attack and Speed stats as well as its accuracy. "
    v4905.Desc = BattleFunc_116
    BattleFunc_116 = "Passive"
    v4905.Category = BattleFunc_116
    BattleFunc_116 = 100
    v4905.Accuracy = BattleFunc_116
    BattleFunc_116 = 20
    v4905.Uses = BattleFunc_116
    BattleFunc_116 = nil
    v4905.Power = BattleFunc_116
    BattleFunc_116 = "Self"
    v4905.Target = BattleFunc_116
    local function BattleFunc_117(p442, p443, p444)
        local v1965 = {}
        v1965.atk = 1
        v1965.spe = 1
        v1965.acc = 1
        v4(p442, p443, p444, 100, v1965)
    end
    v4905.BattleFunc = BattleFunc_117
    v4663.Coil = v4905
    local v4906 = {}
    BattleFunc_117 = "Basic"
    v4906.Type = BattleFunc_117
    BattleFunc_117 = "Passive"
    v4906.Category = BattleFunc_117
    BattleFunc_117 = "The user hardens its body, boosting its defense."
    v4906.Desc = BattleFunc_117
    BattleFunc_117 = 100
    v4906.Accuracy = BattleFunc_117
    BattleFunc_117 = 40
    v4906.Uses = BattleFunc_117
    BattleFunc_117 = nil
    v4906.Power = BattleFunc_117
    BattleFunc_117 = "Self"
    v4906.Target = BattleFunc_117
    local function BattleFunc_118(p445, p446, p447)
        local v1975 = {}
        v1975.def = 1
        v4(p445, p446, p447, 100, v1975)
    end
    v4906.BattleFunc = BattleFunc_118
    v4663.Harden = v4906
    local v4907 = {}
    BattleFunc_118 = "Basic"
    v4907.Type = BattleFunc_118
    BattleFunc_118 = "Passive"
    v4907.Category = BattleFunc_118
    BattleFunc_118 = "The user conceals its weakspots, boosting its defense."
    v4907.Desc = BattleFunc_118
    BattleFunc_118 = 100
    v4907.Accuracy = BattleFunc_118
    BattleFunc_118 = 40
    v4907.Uses = BattleFunc_118
    BattleFunc_118 = nil
    v4907.Power = BattleFunc_118
    BattleFunc_118 = "Self"
    v4907.Target = BattleFunc_118
    local function BattleFunc_119(p448, p449, p450)
        local v1983 = {}
        v1983.def = 1
        v4(p448, p449, p450, 100, v1983)
    end
    v4907.BattleFunc = BattleFunc_119
    v4663["Armor Up"] = v4907
    local v4908 = {}
    BattleFunc_119 = "Insect"
    v4908.Type = BattleFunc_119
    BattleFunc_119 = "The user skitters on its many legs to boost its speed and accuracy."
    v4908.Desc = BattleFunc_119
    BattleFunc_119 = "Passive"
    v4908.Category = BattleFunc_119
    BattleFunc_119 = 100
    v4908.Accuracy = BattleFunc_119
    BattleFunc_119 = 30
    v4908.Uses = BattleFunc_119
    BattleFunc_119 = nil
    v4908.Power = BattleFunc_119
    BattleFunc_119 = "Self"
    v4908.Target = BattleFunc_119
    local function BattleFunc_120(p451, p452, p453)
        local v1991 = {}
        v1991.acc = 1
        v1991.spe = 1
        v4(p451, p452, p453, 100, v1991)
    end
    v4908.BattleFunc = BattleFunc_120
    v4663.Skitter = v4908
    local v4909 = {}
    BattleFunc_120 = "Basic"
    v4909.Type = BattleFunc_120
    BattleFunc_120 = "The user howls, boosting its attack."
    v4909.Desc = BattleFunc_120
    BattleFunc_120 = "Passive"
    v4909.Category = BattleFunc_120
    BattleFunc_120 = true
    v4909.Sound = BattleFunc_120
    BattleFunc_120 = 100
    v4909.Accuracy = BattleFunc_120
    BattleFunc_120 = 40
    v4909.Uses = BattleFunc_120
    BattleFunc_120 = nil
    v4909.Power = BattleFunc_120
    BattleFunc_120 = "Self"
    v4909.Target = BattleFunc_120
    local function BattleFunc_121(p454, p455, p456)
        local v2000 = {}
        v2000.atk = 1
        v4(p454, p455, p456, 100, v2000)
    end
    v4909.BattleFunc = BattleFunc_121
    v4663.Howl = v4909
    local v4910 = {}
    BattleFunc_121 = "Food"
    v4910.Type = BattleFunc_121
    BattleFunc_121 = "The user sends out a sweet aroma, lowering the opposing team's evasiveness."
    v4910.Desc = BattleFunc_121
    BattleFunc_121 = "Passive"
    v4910.Category = BattleFunc_121
    BattleFunc_121 = 100
    v4910.Accuracy = BattleFunc_121
    BattleFunc_121 = 40
    v4910.Uses = BattleFunc_121
    BattleFunc_121 = nil
    v4910.Power = BattleFunc_121
    BattleFunc_121 = "AllFoes"
    v4910.Target = BattleFunc_121
    local function BattleFunc_122(p457, p458, p459)
        local v2008 = {}
        v2008.eva = -1
        v4(p457, p458, p459, 100, v2008)
    end
    v4910.BattleFunc = BattleFunc_122
    v4663["Sweet Aroma"] = v4910
    local v4911 = {}
    BattleFunc_122 = "Spirit"
    v4911.Type = BattleFunc_122
    BattleFunc_122 = "User wallows in its own misery, greatly boosting its magic attack."
    v4911.Desc = BattleFunc_122
    BattleFunc_122 = "Passive"
    v4911.Category = BattleFunc_122
    BattleFunc_122 = 100
    v4911.Accuracy = BattleFunc_122
    BattleFunc_122 = 20
    v4911.Uses = BattleFunc_122
    BattleFunc_122 = nil
    v4911.Power = BattleFunc_122
    BattleFunc_122 = "Self"
    v4911.Target = BattleFunc_122
    local function BattleFunc_123(p460, p461, p462)
        local v2016 = {}
        v2016.matk = 2
        v4(p460, p461, p462, 100, v2016)
    end
    v4911.BattleFunc = BattleFunc_123
    v4663.Misery = v4911
    local v4912 = {}
    BattleFunc_123 = "Light"
    v4912.Type = BattleFunc_123
    BattleFunc_123 = "The user glows up, greatly boosting its magic attack."
    v4912.Desc = BattleFunc_123
    BattleFunc_123 = "Passive"
    v4912.Category = BattleFunc_123
    BattleFunc_123 = 100
    v4912.Accuracy = BattleFunc_123
    BattleFunc_123 = 20
    v4912.Uses = BattleFunc_123
    BattleFunc_123 = nil
    v4912.Power = BattleFunc_123
    BattleFunc_123 = "Self"
    v4912.Target = BattleFunc_123
    local function BattleFunc_124(p463, p464, p465)
        local v2024 = {}
        v2024.matk = 2
        v4(p463, p464, p465, 100, v2024)
    end
    v4912.BattleFunc = BattleFunc_124
    v4663["Glow Up"] = v4912
    local v4913 = {}
    BattleFunc_124 = "Spirit"
    v4913.Type = BattleFunc_124
    BattleFunc_124 = "The user reminiscences how it became a spirit and starts sobbing. This move lowers all the stats of the target."
    v4913.Desc = BattleFunc_124
    BattleFunc_124 = "Passive"
    v4913.Category = BattleFunc_124
    BattleFunc_124 = true
    v4913.Sound = BattleFunc_124
    BattleFunc_124 = 60
    v4913.Accuracy = BattleFunc_124
    BattleFunc_124 = 5
    v4913.Uses = BattleFunc_124
    BattleFunc_124 = nil
    v4913.Power = BattleFunc_124
    BattleFunc_124 = "Single"
    v4913.Target = BattleFunc_124
    local function BattleFunc_125(p466, p467, p468)
        local v2032 = {}
        v2032.atk = -1
        v2032.spe = -1
        v2032.def = -1
        v2032.mdef = -1
        v2032.matk = -1
        v4(p466, p467, p468, 100, v2032)
    end
    v4913.BattleFunc = BattleFunc_125
    v4663.Sob = v4913
    local v4914 = {}
    BattleFunc_125 = "Basic"
    v4914.Type = BattleFunc_125
    BattleFunc_125 = "The user uses thread to tie up the foe and trip them, drastically lowering their speed."
    v4914.Desc = BattleFunc_125
    BattleFunc_125 = "Passive"
    v4914.Category = BattleFunc_125
    BattleFunc_125 = 100
    v4914.Accuracy = BattleFunc_125
    BattleFunc_125 = 5
    v4914.Uses = BattleFunc_125
    BattleFunc_125 = nil
    v4914.Power = BattleFunc_125
    BattleFunc_125 = "Single"
    v4914.Target = BattleFunc_125
    local function BattleFunc_126(p469, p470, p471)
        local v2044 = {}
        v2044.spe = -3
        v4(p469, p470, p471, 100, v2044)
    end
    v4914.BattleFunc = BattleFunc_126
    v4663.Patchwork = v4914
    local v4915 = {}
    BattleFunc_126 = "Mind"
    v4915.Type = BattleFunc_126
    BattleFunc_126 = "The user enters in a state of deep focus, greatly boosting its magic defense."
    v4915.Desc = BattleFunc_126
    BattleFunc_126 = "Passive"
    v4915.Category = BattleFunc_126
    BattleFunc_126 = 100
    v4915.Accuracy = BattleFunc_126
    BattleFunc_126 = 20
    v4915.Uses = BattleFunc_126
    BattleFunc_126 = nil
    v4915.Power = BattleFunc_126
    BattleFunc_126 = "Self"
    v4915.Target = BattleFunc_126
    local function BattleFunc_127(p472, p473, p474)
        local v2052 = {}
        v2052.mdef = 2
        v4(p472, p473, p474, 100, v2052)
    end
    v4915.BattleFunc = BattleFunc_127
    v4663.Meditation = v4915
    local v4916 = {}
    BattleFunc_127 = "Mind"
    v4916.Type = BattleFunc_127
    BattleFunc_127 = "The user empowers its mind, greatly boosting its magical attack."
    v4916.Desc = BattleFunc_127
    BattleFunc_127 = "Passive"
    v4916.Category = BattleFunc_127
    BattleFunc_127 = 100
    v4916.Accuracy = BattleFunc_127
    BattleFunc_127 = 20
    v4916.Uses = BattleFunc_127
    BattleFunc_127 = nil
    v4916.Power = BattleFunc_127
    BattleFunc_127 = "Self"
    v4916.Target = BattleFunc_127
    local function BattleFunc_128(p475, p476, p477)
        local v2060 = {}
        v2060.matk = 2
        v4(p475, p476, p477, 100, v2060)
    end
    v4916.BattleFunc = BattleFunc_128
    v4663["Mind Empowerment"] = v4916
    local v4917 = {}
    BattleFunc_128 = "Insect"
    v4917.Type = BattleFunc_128
    BattleFunc_128 = "It may also make the target flinch or leave it with paralysis."
    v4917.Desc = BattleFunc_128
    BattleFunc_128 = "Physical"
    v4917.Category = BattleFunc_128
    BattleFunc_128 = 95
    v4917.Accuracy = BattleFunc_128
    BattleFunc_128 = 15
    v4917.Uses = BattleFunc_128
    BattleFunc_128 = true
    v4917.Contact = BattleFunc_128
    BattleFunc_128 = true
    v4917.Biting = BattleFunc_128
    BattleFunc_128 = {}
    local v4918 = {}
    local v4919 = {}
    v4919.AnimType = "Bite"
    v4919.Color = Color3.fromRGB(160, 206, 131)
    v4919.Size = 0.5
    v4919.Times = 1
    v4919.Wait = 0.1
    v4919.Pitch = 0.8
    v4918[1] = v4919
    BattleFunc_128.Order = v4918
    v4917.MoveAnim = BattleFunc_128
    local function BattleFunc_129(p478, p479, p480)
        v3(p478, p479, p480, 10, "Paralysis")
        v3(p478, p479, p480, 10, "Flinch")
    end
    v4917.BattleFunc = BattleFunc_129
    BattleFunc_129 = 60
    v4917.Power = BattleFunc_129
    BattleFunc_129 = "Single"
    v4917.Target = BattleFunc_129
    v4663["Itchy Bite"] = v4917
    local v4928 = {}
    BattleFunc_129 = "Insect"
    v4928.Type = BattleFunc_129
    BattleFunc_129 = "The user chews at the opponent with its mandibles or teeth."
    v4928.Desc = BattleFunc_129
    BattleFunc_129 = "Physical"
    v4928.Category = BattleFunc_129
    BattleFunc_129 = 100
    v4928.Accuracy = BattleFunc_129
    BattleFunc_129 = 30
    v4928.Uses = BattleFunc_129
    BattleFunc_129 = true
    v4928.Contact = BattleFunc_129
    BattleFunc_129 = true
    v4928.Biting = BattleFunc_129
    BattleFunc_129 = {}
    local v4929 = {}
    local v4930 = {}
    v4930.AnimType = "Bite"
    v4930.Color = Color3.fromRGB(160, 206, 131)
    v4930.Size = 0.5
    v4930.Times = 1
    v4930.Wait = 0.1
    v4930.Pitch = 0.8
    v4929[1] = v4930
    BattleFunc_129.Order = v4929
    v4928.MoveAnim = BattleFunc_129
    BattleFunc_129 = 40
    v4928.Power = BattleFunc_129
    BattleFunc_129 = "Single"
    v4928.Target = BattleFunc_129
    v4663.Nibble = v4928
    local v4937 = {}
    BattleFunc_129 = "Basic"
    v4937.Type = BattleFunc_129
    BattleFunc_129 = "The user attacks using its shell. Has a chance to paralyze."
    v4937.Desc = BattleFunc_129
    BattleFunc_129 = "Magical"
    v4937.Category = BattleFunc_129
    BattleFunc_129 = 100
    v4937.Accuracy = BattleFunc_129
    BattleFunc_129 = 15
    v4937.Uses = BattleFunc_129
    BattleFunc_129 = 60
    v4937.Power = BattleFunc_129
    BattleFunc_129 = true
    v4937.Contact = BattleFunc_129
    BattleFunc_129 = "Single"
    v4937.Target = BattleFunc_129
    local function BattleFunc_130(p481, p482, p483)
        v3(p481, p482, p483, 10, "Paralysis")
    end
    v4937.BattleFunc = BattleFunc_130
    v4663.Shellshock = v4937
    local v4938 = {}
    BattleFunc_130 = "Water"
    v4938.Type = BattleFunc_130
    BattleFunc_130 = "Shoots a weak water bolt at the enemy."
    v4938.Desc = BattleFunc_130
    BattleFunc_130 = "Magical"
    v4938.Category = BattleFunc_130
    BattleFunc_130 = 100
    v4938.Accuracy = BattleFunc_130
    BattleFunc_130 = 25
    v4938.Uses = BattleFunc_130
    BattleFunc_130 = 50
    v4938.Power = BattleFunc_130
    BattleFunc_130 = "Single"
    v4938.Target = BattleFunc_130
    v4663.Waterbolt = v4938
    local v4939 = {}
    BattleFunc_130 = "Crystal"
    v4939.Type = BattleFunc_130
    BattleFunc_130 = "The user conjures geodes to send at the target."
    v4939.Desc = BattleFunc_130
    BattleFunc_130 = "Magical"
    v4939.Category = BattleFunc_130
    BattleFunc_130 = 100
    v4939.Accuracy = BattleFunc_130
    BattleFunc_130 = 25
    v4939.Uses = BattleFunc_130
    BattleFunc_130 = 50
    v4939.Power = BattleFunc_130
    BattleFunc_130 = "Single"
    v4939.Target = BattleFunc_130
    v4663["Geode Smash"] = v4939
    local v4940 = {}
    BattleFunc_130 = "Crystal"
    v4940.Type = BattleFunc_130
    BattleFunc_130 = "The user takes time to polish away any dirt and feel good, boosting speed and accuracy."
    v4940.Desc = BattleFunc_130
    BattleFunc_130 = "Passive"
    v4940.Category = BattleFunc_130
    BattleFunc_130 = true
    v4940.Accuracy = BattleFunc_130
    BattleFunc_130 = 15
    v4940.Uses = BattleFunc_130
    BattleFunc_130 = nil
    v4940.Power = BattleFunc_130
    BattleFunc_130 = "Self"
    v4940.Target = BattleFunc_130
    local function BattleFunc_131(p484, p485, p486)
        local v2094 = {}
        v2094.spe = 1
        v2094.acc = 1
        v4(p484, p485, p486, 100, v2094)
    end
    v4940.BattleFunc = BattleFunc_131
    v4663["Sparkling Finish"] = v4940
    local v4941 = {}
    BattleFunc_131 = "Water"
    v4941.Type = BattleFunc_131
    BattleFunc_131 = "Summons a tsunami, sending it at all other doodles."
    v4941.Desc = BattleFunc_131
    BattleFunc_131 = "Magical"
    v4941.Category = BattleFunc_131
    BattleFunc_131 = 100
    v4941.Accuracy = BattleFunc_131
    BattleFunc_131 = 10
    v4941.Uses = BattleFunc_131
    BattleFunc_131 = 80
    v4941.Power = BattleFunc_131
    BattleFunc_131 = "AllOthers"
    v4941.Target = BattleFunc_131
    v4663.Tsunami = v4941
    local v4942 = {}
    BattleFunc_131 = "Mind"
    v4942.Type = BattleFunc_131
    BattleFunc_131 = "The user, using its mind, launches objects at the target. This move does physical damage."
    v4942.Desc = BattleFunc_131
    BattleFunc_131 = "Physical"
    v4942.DamageType = BattleFunc_131
    BattleFunc_131 = "Magical"
    v4942.Category = BattleFunc_131
    BattleFunc_131 = 100
    v4942.Accuracy = BattleFunc_131
    BattleFunc_131 = 10
    v4942.Uses = BattleFunc_131
    BattleFunc_131 = 85
    v4942.Power = BattleFunc_131
    BattleFunc_131 = "Single"
    v4942.Target = BattleFunc_131
    v4663["Psychokinetic Launch"] = v4942
    local v4943 = {}
    BattleFunc_131 = "Basic"
    v4943.Type = BattleFunc_131
    BattleFunc_131 = "User bashes the target with its shield or armor. This attack uses the user's defense stat to calculate damage."
    v4943.Desc = BattleFunc_131
    BattleFunc_131 = "def"
    v4943.DamageStat = BattleFunc_131
    BattleFunc_131 = "Physical"
    v4943.Category = BattleFunc_131
    BattleFunc_131 = true
    v4943.Contact = BattleFunc_131
    BattleFunc_131 = 100
    v4943.Accuracy = BattleFunc_131
    BattleFunc_131 = 10
    v4943.Uses = BattleFunc_131
    BattleFunc_131 = 75
    v4943.Power = BattleFunc_131
    BattleFunc_131 = "Single"
    v4943.Target = BattleFunc_131
    v4663["Shield Bash"] = v4943
    local v4944 = {}
    BattleFunc_131 = "Melee"
    v4944.Type = BattleFunc_131
    BattleFunc_131 = "User assumes a defensive stance and then charges at the opponent. This attack uses the user's defense stat to calculate damage."
    v4944.Desc = BattleFunc_131
    BattleFunc_131 = "def"
    v4944.DamageStat = BattleFunc_131
    BattleFunc_131 = "Physical"
    v4944.Category = BattleFunc_131
    BattleFunc_131 = true
    v4944.Contact = BattleFunc_131
    BattleFunc_131 = 100
    v4944.Accuracy = BattleFunc_131
    BattleFunc_131 = 10
    v4944.Uses = BattleFunc_131
    BattleFunc_131 = 80
    v4944.Power = BattleFunc_131
    BattleFunc_131 = "Single"
    v4944.Target = BattleFunc_131
    v4663["Solid Charge"] = v4944
    local v4945 = {}
    BattleFunc_131 = "Mind"
    v4945.Type = BattleFunc_131
    BattleFunc_131 = "The user releases a shockwave of psychic power. This move has a chance to lower the target's magic defense."
    v4945.Desc = BattleFunc_131
    BattleFunc_131 = "Magical"
    v4945.Category = BattleFunc_131
    BattleFunc_131 = 100
    v4945.Accuracy = BattleFunc_131
    BattleFunc_131 = 10
    v4945.Uses = BattleFunc_131
    BattleFunc_131 = 90
    v4945.Power = BattleFunc_131
    BattleFunc_131 = "Single"
    v4945.Target = BattleFunc_131
    local function BattleFunc_132(p487, p488, p489)
        local v2103 = {}
        v2103.mdef = -1
        v4(p487, p488, p489, 15, v2103)
    end
    v4945.BattleFunc = BattleFunc_132
    v4663.Psychoforce = v4945
    local v4946 = {}
    BattleFunc_132 = "Food"
    v4946.Type = BattleFunc_132
    BattleFunc_132 = "The user charges, amped up on sugar, intending to take the target down. This may make the target flinch."
    v4946.Desc = BattleFunc_132
    BattleFunc_132 = "Physical"
    v4946.Category = BattleFunc_132
    BattleFunc_132 = 100
    v4946.Accuracy = BattleFunc_132
    BattleFunc_132 = true
    v4946.Contact = BattleFunc_132
    BattleFunc_132 = 10
    v4946.Uses = BattleFunc_132
    BattleFunc_132 = 85
    v4946.Power = BattleFunc_132
    BattleFunc_132 = "Single"
    v4946.Target = BattleFunc_132
    local function BattleFunc_133(p490, p491, p492)
        v3(p490, p491, p492, 20, "Flinch")
    end
    v4946.BattleFunc = BattleFunc_133
    v4663["Sugar Rush"] = v4946
    local v4947 = {}
    BattleFunc_133 = "Water"
    v4947.Type = BattleFunc_133
    BattleFunc_133 = "Rides a tidal wave to slam into the target. Has a chance to flinch."
    v4947.Desc = BattleFunc_133
    BattleFunc_133 = "Physical"
    v4947.Category = BattleFunc_133
    BattleFunc_133 = 85
    v4947.Accuracy = BattleFunc_133
    BattleFunc_133 = 10
    v4947.Uses = BattleFunc_133
    BattleFunc_133 = 100
    v4947.Power = BattleFunc_133
    BattleFunc_133 = "Single"
    v4947.Target = BattleFunc_133
    local function BattleFunc_134(p493, p494, p495)
        v3(p493, p494, p495, 15, "Flinch")
    end
    v4947.BattleFunc = BattleFunc_134
    v4663["Tidal Slam"] = v4947
    local v4948 = {}
    BattleFunc_134 = "Basic"
    v4948.Type = BattleFunc_134
    BattleFunc_134 = "This move does more damage the less stars the user has."
    v4948.Desc = BattleFunc_134
    BattleFunc_134 = "Physical"
    v4948.Category = BattleFunc_134
    BattleFunc_134 = 100
    v4948.Accuracy = BattleFunc_134
    BattleFunc_134 = 10
    v4948.Uses = BattleFunc_134
    BattleFunc_134 = "Varies"
    v4948.Power = BattleFunc_134
    BattleFunc_134 = "Single"
    v4948.Target = BattleFunc_134
    BattleFunc_134 = true
    v4948.Contact = BattleFunc_134
    local function PowerCalc_1(p496, p497, p498)
        return 140 - p497.Star * 20
    end
    v4948.PowerCalc = PowerCalc_1
    v4663.Starbreaker = v4948
    local v4949 = {}
    PowerCalc_1 = "Water"
    v4949.Type = PowerCalc_1
    PowerCalc_1 = "The user picks up the target with a tsunami and then slams them into the ground. This attack does more damage the heavier the opponent."
    v4949.Desc = PowerCalc_1
    PowerCalc_1 = "Magical"
    v4949.Category = PowerCalc_1
    PowerCalc_1 = 100
    v4949.Accuracy = PowerCalc_1
    PowerCalc_1 = 20
    v4949.Uses = PowerCalc_1
    PowerCalc_1 = "Varies"
    v4949.Power = PowerCalc_1
    PowerCalc_1 = "Single"
    v4949.Target = PowerCalc_1
    local function PowerCalc_2(p499, p500, p501)
        local v2127 = p1.Database.DoodleInfo
        local v2140 = v2127[v2.GetRealName(p501)].Weight
        local v2131, v2132, v2133 = pairs(v5)
        for v2136, v2135 in v2131, v2132, v2133 do
            local v2134 = v2135.Min
            if v2127 >= v2134 then
                v2134 = v2135.Max
                if v2134 >= v2127 then
                    v2134 = v2135.Power
                    return v2134
                end
            end
        end
        v2131 = 50
        return v2131
    end
    v4949.PowerCalc = PowerCalc_2
    v4663["Tsunami Drop"] = v4949
    local v4950 = {}
    PowerCalc_2 = "Melee"
    v4950.Type = PowerCalc_2
    PowerCalc_2 = "The user picks up the target and throws it. This attack inflicts damage identical to the user's level."
    v4950.Desc = PowerCalc_2
    PowerCalc_2 = "Physical"
    v4950.Category = PowerCalc_2
    PowerCalc_2 = 100
    v4950.Accuracy = PowerCalc_2
    PowerCalc_2 = 15
    v4950.Uses = PowerCalc_2
    PowerCalc_2 = true
    v4950.Contact = PowerCalc_2
    local function SetDamage_1(p502, p503)
        return p503.Level
    end
    v4950.SetDamage = SetDamage_1
    SetDamage_1 = true
    v4950.Power = SetDamage_1
    SetDamage_1 = "Single"
    v4950.Target = SetDamage_1
    v4663["Body Throw"] = v4950
    local v4951 = {}
    SetDamage_1 = "Basic"
    v4951.Type = SetDamage_1
    SetDamage_1 = "This attack move cuts down the target's health to equal the user's health."
    v4951.Desc = SetDamage_1
    SetDamage_1 = "Magical"
    v4951.Category = SetDamage_1
    SetDamage_1 = 100
    v4951.Accuracy = SetDamage_1
    SetDamage_1 = 5
    v4951.Uses = SetDamage_1
    local function SetDamage_2(p504, p505, p506)
        local v2147 = p506.currenthp - p505.currenthp
        if v2147 > 0 then
            return v2147
        end
        p504:AddDialogue(p504.ActionList, "The move failed!")
        return 0
    end
    v4951.SetDamage = SetDamage_2
    SetDamage_2 = true
    v4951.Power = SetDamage_2
    SetDamage_2 = "Single"
    v4951.Target = SetDamage_2
    v4663.Equality = v4951
    local v4952 = {}
    SetDamage_2 = "Spirit"
    v4952.Type = SetDamage_2
    SetDamage_2 = "The user attempts to scare the target. This attack inflicts damage identical to the user's level."
    v4952.Desc = SetDamage_2
    SetDamage_2 = "Magical"
    v4952.Category = SetDamage_2
    SetDamage_2 = 100
    v4952.Accuracy = SetDamage_2
    SetDamage_2 = true
    v4952.Sound = SetDamage_2
    SetDamage_2 = 15
    v4952.Uses = SetDamage_2
    local function SetDamage_3(p507, p508)
        return p508.Level
    end
    v4952.SetDamage = SetDamage_3
    SetDamage_3 = true
    v4952.Power = SetDamage_3
    SetDamage_3 = "Single"
    v4952.Target = SetDamage_3
    v4663["Boo!"] = v4952
    local v4953 = {}
    SetDamage_3 = "Basic"
    v4953.Type = SetDamage_3
    SetDamage_3 = "The user spins and attacks. This attack always does 40 damage."
    v4953.Desc = SetDamage_3
    SetDamage_3 = "Magical"
    v4953.Category = SetDamage_3
    SetDamage_3 = 100
    v4953.Accuracy = SetDamage_3
    SetDamage_3 = 15
    v4953.Uses = SetDamage_3
    local function SetDamage_4(p509, p510)
        return 40
    end
    v4953.SetDamage = SetDamage_4
    SetDamage_4 = true
    v4953.Power = SetDamage_4
    SetDamage_4 = "Single"
    v4953.Target = SetDamage_4
    v4663.Pirouette = v4953
    local v4954 = {}
    SetDamage_4 = "Spirit"
    v4954.Type = SetDamage_4
    SetDamage_4 = "The user disappears using its spiritual form, and then reappears near the target, scaring them. Has a chance to curse the target."
    v4954.Desc = SetDamage_4
    SetDamage_4 = "Magical"
    v4954.Category = SetDamage_4
    SetDamage_4 = 90
    v4954.Accuracy = SetDamage_4
    SetDamage_4 = 15
    v4954.Uses = SetDamage_4
    SetDamage_4 = 75
    v4954.Power = SetDamage_4
    SetDamage_4 = "Single"
    v4954.Target = SetDamage_4
    local function BattleFunc_135(p511, p512, p513)
        v3(p511, p512, p513, 20, "Cursed")
    end
    v4954.BattleFunc = BattleFunc_135
    v4663.Haunt = v4954
    local v4955 = {}
    BattleFunc_135 = "Basic"
    v4955.Type = BattleFunc_135
    BattleFunc_135 = "Cures all your party's status effects."
    v4955.Desc = BattleFunc_135
    BattleFunc_135 = "Passive"
    v4955.Category = BattleFunc_135
    BattleFunc_135 = true
    v4955.Accuracy = BattleFunc_135
    BattleFunc_135 = 5
    v4955.Uses = BattleFunc_135
    BattleFunc_135 = nil
    v4955.Power = BattleFunc_135
    BattleFunc_135 = "Self"
    v4955.Target = BattleFunc_135
    local function ModifyDamage_4(p514, p515, p516, p517, p518, p519, p520)
        if p520 then
            local v2164
            local v2165 = p515.Status
            local v2168, v2169, v2170 = pairs(p518)
            for v2173, v2172 in v2168, v2169, v2170 do
                local v2171 = v2172.Status
                if not v2171 then
                    v2171 = v2172.Status
                    v2164 = true
                    v2171 = nil
                    v2172.Status = v2171
                end
            end
            if not v2164 then
                v2170 = p514.ActionList
                v2172 = "All of "
                v2171 = "&DOODLENAME,"
                v2173 = v2172 .. v2171 .. p515.ID .. "&" .. "'s party's statuses has been cured!"
                p514:AddDialogue(v2170, v2173)
                local v2178 = {}
                v2172 = p515.Owner
                v2178.Player = v2172
                v2178.Doodle = p515
                v2172 = "StatusAnim"
                v2178.Action = v2172
                v2172 = ""
                v2178.Status = v2172
                p514:AddAction(p514.ActionList, v2178)
            else
                p514:AddDialogue(p514.ActionList, "It had no effect!")
            end
        end
        v2164 = 1
        return v2164
    end
    v4955.ModifyDamage = ModifyDamage_4
    v4663.Tourniquet = v4955
    local v4956 = {}
    ModifyDamage_4 = "Fire"
    v4956.Type = ModifyDamage_4
    ModifyDamage_4 = "After damaging the opponent, cures a random party member's status effects."
    v4956.Desc = ModifyDamage_4
    ModifyDamage_4 = "Magical"
    v4956.Category = ModifyDamage_4
    ModifyDamage_4 = 100
    v4956.Accuracy = ModifyDamage_4
    ModifyDamage_4 = 5
    v4956.Uses = ModifyDamage_4
    ModifyDamage_4 = 65
    v4956.Power = ModifyDamage_4
    ModifyDamage_4 = "Single"
    v4956.Target = ModifyDamage_4
    local function ModifyDamage_5(p521, p522, p523, p524, p525, p526, p527)
        if p527 then
            local v2184
            local v2185 = p522.Status
            local v2186
            local v2189, v2190, v2191 = pairs(p525)
            for v2194, v2193 in v2189, v2190, v2191 do
                local v2192 = v2193.Status
                if not v2192 then
                    v2192 = v2193.Status
                    if v2184 then
                        v2184 = true
                        v2186 = v2193
                        v2192 = nil
                        v2193.Status = v2192
                    end
                end
            end
            if not v2184 then
                v2191 = p521.ActionList
                v2193 = "&DOODLENAME,"
                v2192 = v2186.ID
                v2194 = v2193 .. v2192 .. "&" .. "'s' status has been cured!"
                p521:AddDialogue(v2191, v2194)
                local v2198 = {}
                v2193 = p522.Owner
                v2198.Player = v2193
                v2198.Doodle = p522
                v2193 = "StatusAnim"
                v2198.Action = v2193
                v2193 = ""
                v2198.Status = v2193
                p521:AddAction(p521.ActionList, v2198)
            else
                p521:AddDialogue(p521.ActionList, "It had no effect!")
            end
        end
        v2184 = 1
        return v2184
    end
    v4956.ModifyDamage = ModifyDamage_5
    v4663.Foxfire = v4956
    local v4957 = {}
    ModifyDamage_5 = "Plant"
    v4957.Type = ModifyDamage_5
    ModifyDamage_5 = "Cures all your party's status effects."
    v4957.Desc = ModifyDamage_5
    ModifyDamage_5 = "Passive"
    v4957.Category = ModifyDamage_5
    ModifyDamage_5 = true
    v4957.Accuracy = ModifyDamage_5
    ModifyDamage_5 = 5
    v4957.Uses = ModifyDamage_5
    ModifyDamage_5 = nil
    v4957.Power = ModifyDamage_5
    ModifyDamage_5 = "Self"
    v4957.Target = ModifyDamage_5
    local function ModifyDamage_6(p528, p529, p530, p531, p532, p533, p534)
        if p534 then
            local v2204
            local v2205 = p529.Status
            local v2208, v2209, v2210 = pairs(p532)
            for v2213, v2212 in v2208, v2209, v2210 do
                local v2211 = v2212.Status
                if not v2211 then
                    v2211 = v2212.Status
                    v2204 = true
                    v2211 = nil
                    v2212.Status = v2211
                end
            end
            if not v2204 then
                v2210 = p528.ActionList
                v2212 = "All of "
                v2211 = "&DOODLENAME,"
                v2213 = v2212 .. v2211 .. p529.ID .. "&" .. "'s party's statuses has been cured!"
                p528:AddDialogue(v2210, v2213)
                local v2218 = {}
                v2212 = p529.Owner
                v2218.Player = v2212
                v2218.Doodle = p529
                v2212 = "StatusAnim"
                v2218.Action = v2212
                v2212 = ""
                v2218.Status = v2212
                p528:AddAction(p528.ActionList, v2218)
            else
                p528:AddDialogue(p528.ActionList, "It had no effect!")
            end
        end
        v2204 = 1
        return v2204
    end
    v4957.ModifyDamage = ModifyDamage_6
    v4663.Compost = v4957
    local v4958 = {}
    ModifyDamage_6 = "Spark"
    v4958.Type = ModifyDamage_6
    ModifyDamage_6 = "Heals the user and cures any statuses it has."
    v4958.Desc = ModifyDamage_6
    ModifyDamage_6 = "Passive"
    v4958.Category = ModifyDamage_6
    ModifyDamage_6 = true
    v4958.Accuracy = ModifyDamage_6
    ModifyDamage_6 = 5
    v4958.Uses = ModifyDamage_6
    ModifyDamage_6 = nil
    v4958.Power = ModifyDamage_6
    ModifyDamage_6 = "Self"
    v4958.Target = ModifyDamage_6
    local function BattleFunc_136(p535, p536, p537, p538, p539)
        local v2224 = p537.Stats
        local v2225 = v2224.hp
        local v2228 = math.floor(v2225 / 2)
        local v2229 = 0
        if v2228 > v2229 then
            v2225 = p537.Stats
            v2229 = v2225.hp
            v2225 = p537.currenthp
            if v2229 > v2225 then
                v2224 = p535.ActionList
                p535:AddDialogue(v2224, "&DOODLENAME," .. p536.ID .. "&" .. " restored health!")
                p535:TakeDamage(p537, -v2228)
            end
        end
        local v2238 = p537.Status
        if not v2238 then
            v2238 = p537.Status
            v2230 = "&DOODLENAME,"
            v2231 = p537.ID
            v2232 = "&"
            v2233 = "'s "
            p535:AddDialogue(p535.ActionList, v2230 .. v2231 .. v2232 .. v2233 .. p537.Status .. " has been cured!")
            p537.Status = nil
            local v2245 = {}
            v2230 = p536.Owner
            v2245.Player = v2230
            v2245.Doodle = p536
            v2230 = "StatusAnim"
            v2245.Action = v2230
            v2230 = ""
            v2245.Status = v2230
            p535:AddAction(p535.ActionList, v2245)
        end
    end
    v4958.BattleFunc = BattleFunc_136
    v4663["Shock Therapy"] = v4958
    local v4959 = {}
    BattleFunc_136 = "Dark"
    v4959.Type = BattleFunc_136
    BattleFunc_136 = " The power of this attack move is doubled if the user has been hurt by the target in the same turn. This move tends to go last."
    v4959.Desc = BattleFunc_136
    BattleFunc_136 = "Physical"
    v4959.Category = BattleFunc_136
    BattleFunc_136 = 100
    v4959.Accuracy = BattleFunc_136
    BattleFunc_136 = 10
    v4959.Uses = BattleFunc_136
    BattleFunc_136 = -4
    v4959.Priority = BattleFunc_136
    BattleFunc_136 = 45
    v4959.Power = BattleFunc_136
    BattleFunc_136 = true
    v4959.Contact = BattleFunc_136
    BattleFunc_136 = "Single"
    v4959.Target = BattleFunc_136
    local function ModifyDamage_7(p540, p541, p542, p543, p544)
        local v2250 = table.find(p541.Revenge, p542.ID)
        if not v2250 then
            v2250 = 2
            return v2250
        end
        return 1
    end
    v4959.ModifyDamage = ModifyDamage_7
    v4663.Retribution = v4959
    local v4960 = {}
    ModifyDamage_7 = "Melee"
    v4960.Type = ModifyDamage_7
    ModifyDamage_7 = " This move bypasses moves such as Protect. If the target is using a move such as Protect, this move does double damage and also lifts the effect of Protect. "
    v4960.Desc = ModifyDamage_7
    ModifyDamage_7 = "Physical"
    v4960.Category = ModifyDamage_7
    ModifyDamage_7 = 100
    v4960.Accuracy = ModifyDamage_7
    ModifyDamage_7 = 10
    v4960.Uses = ModifyDamage_7
    ModifyDamage_7 = 50
    v4960.Power = ModifyDamage_7
    ModifyDamage_7 = true
    v4960.Piercing = ModifyDamage_7
    ModifyDamage_7 = true
    v4960.Contact = ModifyDamage_7
    ModifyDamage_7 = "Single"
    v4960.Target = ModifyDamage_7
    local function ModifyDamage_8(p545, p546, p547, p548, p549)
        if not p547.Protect then
            p545:AddDialogue(p545.ActionList, "&DOODLENAME," .. p546.ID .. "&" .. " pierced " .. "&DOODLENAME," .. p547.ID .. "&" .. "'s Protect!")
            p547.Protect = nil
            return 2
        end
        return 1
    end
    v4960.ModifyDamage = ModifyDamage_8
    v4663["Piercing Poke"] = v4960
    local v4961 = {}
    ModifyDamage_8 = "Melee"
    v4961.Type = ModifyDamage_8
    ModifyDamage_8 = " The power of this attack move is doubled if the user has been hurt by the target in the same turn. This move tends to go last."
    v4961.Desc = ModifyDamage_8
    ModifyDamage_8 = "Physical"
    v4961.Category = ModifyDamage_8
    ModifyDamage_8 = 100
    v4961.Accuracy = ModifyDamage_8
    ModifyDamage_8 = 10
    v4961.Uses = ModifyDamage_8
    ModifyDamage_8 = -4
    v4961.Priority = ModifyDamage_8
    ModifyDamage_8 = 70
    v4961.Power = ModifyDamage_8
    ModifyDamage_8 = true
    v4961.Contact = ModifyDamage_8
    ModifyDamage_8 = "Single"
    v4961.Target = ModifyDamage_8
    local function ModifyDamage_9(p550, p551, p552, p553, p554)
        local v2271 = table.find(p551.Revenge, p552.ID)
        if not v2271 then
            v2271 = 2
            return v2271
        end
        return 1
    end
    v4961.ModifyDamage = ModifyDamage_9
    v4663["Counter Punch"] = v4961
    local v4962 = {}
    ModifyDamage_9 = "Air"
    v4962.Type = ModifyDamage_9
    ModifyDamage_9 = "The user whips up a storm intended to clear the skies of all weather."
    v4962.Desc = ModifyDamage_9
    ModifyDamage_9 = "Magical"
    v4962.Category = ModifyDamage_9
    ModifyDamage_9 = 100
    v4962.Accuracy = ModifyDamage_9
    ModifyDamage_9 = 10
    v4962.Uses = ModifyDamage_9
    ModifyDamage_9 = 40
    v4962.Power = ModifyDamage_9
    ModifyDamage_9 = "Single"
    v4962.Target = ModifyDamage_9
    local function BattleFunc_137(p555, p556, p557)
        local v2274 = p555.Weather
        p555:AddDialogue(p555.ActionList, "&DOODLENAME," .. p556.ID .. "&" .. " cleared the skies.")
        p555.Weather = nil
        p555.WeatherTurns = 0
        local v2283 = {}
        v2283.Action = "StopWeather"
        p555:AddAction(p555.ActionList, v2283)
    end
    v4962.BattleFunc = BattleFunc_137
    v4663.Tempest = v4962
    local v4963 = {}
    BattleFunc_137 = "Air"
    v4963.Type = BattleFunc_137
    BattleFunc_137 = "The user beats its wings at a blinding winds, creating a damaging surge of wind. The power of this attack move is doubled if the target hasn't attacked yet this turn."
    v4963.Desc = BattleFunc_137
    BattleFunc_137 = "Magical"
    v4963.Category = BattleFunc_137
    BattleFunc_137 = 100
    v4963.Accuracy = BattleFunc_137
    BattleFunc_137 = 15
    v4963.Uses = BattleFunc_137
    BattleFunc_137 = 60
    v4963.Power = BattleFunc_137
    BattleFunc_137 = "Single"
    v4963.Target = BattleFunc_137
    local function ModifyDamage_10(p558, p559, p560, p561, p562)
        local v2287 = p560.UsedMove
        v2287 = 2
        return v2287
        return 1
    end
    v4963.ModifyDamage = ModifyDamage_10
    v4663["Wind Shear"] = v4963
    local v4964 = {}
    ModifyDamage_10 = "Spirit"
    v4964.Type = ModifyDamage_10
    ModifyDamage_10 = "Does more damage the more fainted Doodles in your party. Hits all opposing doodles."
    v4964.Desc = ModifyDamage_10
    ModifyDamage_10 = "Magical"
    v4964.Category = ModifyDamage_10
    ModifyDamage_10 = 95
    v4964.Accuracy = ModifyDamage_10
    ModifyDamage_10 = 10
    v4964.Uses = ModifyDamage_10
    ModifyDamage_10 = 50
    v4964.Power = ModifyDamage_10
    ModifyDamage_10 = "AllFoes"
    v4964.Target = ModifyDamage_10
    local function ModifyDamage_11(p563, p564, p565, p566, p567)
        local v2290 = 1
        local v2293, v2294, v2295 = pairs(p567)
        for v2299, v2297 in v2293, v2294, v2295 do
            if 0 >= v2297.currenthp then
                v2290 = v2290 + 0.25
            else
            end
        end
        return v2290
    end
    v4964.ModifyDamage = ModifyDamage_11
    v4663.Necromancy = v4964
    local v4965 = {}
    ModifyDamage_11 = "Spark"
    v4965.Type = ModifyDamage_11
    ModifyDamage_11 = "The user rapidly kicks the target while infused with lighting. This move hits 2-5 times."
    v4965.Desc = ModifyDamage_11
    local function Times_10()
        local v2304 = math.random(1, 100)
        local v2305 = 40
        if v2305 >= v2304 then
            v2305 = 2
            return v2305
        end
        local v2306 = 40
        if v2304 >= v2306 then
            v2306 = 70
            if v2306 >= v2304 then
                v2306 = 3
                return v2306
            end
        end
        local v2307 = 70
        if v2304 >= v2307 then
            v2307 = 90
            if v2307 >= v2304 then
                v2307 = 4
                return v2307
            end
        end
        return 5
    end
    v4965.Times = Times_10
    Times_10 = 5
    v4965.MaxHit = Times_10
    Times_10 = "Physical"
    v4965.Category = Times_10
    Times_10 = 90
    v4965.Accuracy = Times_10
    Times_10 = 10
    v4965.Uses = Times_10
    Times_10 = true
    v4965.Contact = Times_10
    Times_10 = 20
    v4965.Power = Times_10
    Times_10 = "Single"
    v4965.Target = Times_10
    v4663["Lightning Kicks"] = v4965
    local v4966 = {}
    Times_10 = "Spark"
    v4966.Type = Times_10
    Times_10 = "OLDMOVE"
    v4966.Desc = Times_10
    local function Times_11()
        local v2313 = math.random(1, 100)
        local v2314 = 40
        if v2314 >= v2313 then
            v2314 = 2
            return v2314
        end
        local v2315 = 40
        if v2313 >= v2315 then
            v2315 = 70
            if v2315 >= v2313 then
                v2315 = 3
                return v2315
            end
        end
        local v2316 = 70
        if v2313 >= v2316 then
            v2316 = 90
            if v2316 >= v2313 then
                v2316 = 4
                return v2316
            end
        end
        return 5
    end
    v4966.Times = Times_11
    Times_11 = 5
    v4966.MaxHit = Times_11
    Times_11 = "Physical"
    v4966.Category = Times_11
    Times_11 = 90
    v4966.Accuracy = Times_11
    Times_11 = 10
    v4966.Uses = Times_11
    Times_11 = 25
    v4966.Power = Times_11
    Times_11 = "Single"
    v4966.Target = Times_11
    v4663["Thunder Raid"] = v4966
    local v4967 = {}
    Times_11 = "Insect"
    v4967.Type = Times_11
    Times_11 = "Does more damage the more insect Doodles in your party. Hits all opposing doodles."
    v4967.Desc = Times_11
    Times_11 = "Physical"
    v4967.Category = Times_11
    Times_11 = 95
    v4967.Accuracy = Times_11
    Times_11 = 10
    v4967.Uses = Times_11
    Times_11 = 50
    v4967.Power = Times_11
    Times_11 = "AllFoes"
    v4967.Target = Times_11
    local function ModifyDamage_12(p568, p569, p570, p571, p572)
        local v2319 = 1
        local v2322, v2323, v2324 = pairs(p572)
        for v2330, v2327 in v2322, v2323, v2324 do
            if not v2.IsType(v2327, "Insect") then
                v2319 = v2319 + 0.25
            end
        end
        return v2319
    end
    v4967.ModifyDamage = ModifyDamage_12
    v4663.Swarm = v4967
    local v4968 = {}
    ModifyDamage_12 = "Crystal"
    v4968.Type = ModifyDamage_12
    ModifyDamage_12 = "The user blasts the target with an assortment of gems. Has a very high chance to raise the user's magical attack."
    v4968.Desc = ModifyDamage_12
    ModifyDamage_12 = "Magical"
    v4968.Category = ModifyDamage_12
    ModifyDamage_12 = 90
    v4968.Accuracy = ModifyDamage_12
    ModifyDamage_12 = 10
    v4968.Uses = ModifyDamage_12
    ModifyDamage_12 = 55
    v4968.Power = ModifyDamage_12
    ModifyDamage_12 = "Single"
    v4968.Target = ModifyDamage_12
    local function BattleFunc_138(p573, p574, p575)
        local v2338 = {}
        v2338.matk = 1
        v4(p573, p574, p574, 75, v2338)
    end
    v4968.BattleFunc = BattleFunc_138
    v4663["Gem Blast"] = v4968
    local v4969 = {}
    BattleFunc_138 = "Light"
    v4969.Type = BattleFunc_138
    BattleFunc_138 = "The user sends out a hypnotizing ray of light. Has a chance to confuse the target."
    v4969.Desc = BattleFunc_138
    BattleFunc_138 = "Magical"
    v4969.Category = BattleFunc_138
    BattleFunc_138 = 100
    v4969.Accuracy = BattleFunc_138
    BattleFunc_138 = 10
    v4969.Uses = BattleFunc_138
    BattleFunc_138 = 70
    v4969.Power = BattleFunc_138
    BattleFunc_138 = "Single"
    v4969.Target = BattleFunc_138
    local function BattleFunc_139(p576, p577, p578)
        v3(p576, p577, p578, 20, "Confuse")
    end
    v4969.BattleFunc = BattleFunc_139
    v4663["Aurora Flash"] = v4969
    local v4970 = {}
    BattleFunc_139 = "Water"
    v4970.Type = BattleFunc_139
    BattleFunc_139 = "The user sings an old sailor-tune with malicious intent, doing damage and having a chance to put the target to sleep."
    v4970.Desc = BattleFunc_139
    BattleFunc_139 = "Magical"
    v4970.Category = BattleFunc_139
    BattleFunc_139 = 100
    v4970.Accuracy = BattleFunc_139
    BattleFunc_139 = true
    v4970.Sound = BattleFunc_139
    BattleFunc_139 = 10
    v4970.Uses = BattleFunc_139
    BattleFunc_139 = 70
    v4970.Power = BattleFunc_139
    BattleFunc_139 = "Single"
    v4970.Target = BattleFunc_139
    local function BattleFunc_140(p579, p580, p581)
        v3(p579, p580, p581, 15, "Sleep")
    end
    v4970.BattleFunc = BattleFunc_140
    v4663["Siren Song"] = v4970
    local v4971 = {}
    BattleFunc_140 = "Basic"
    v4971.Type = BattleFunc_140
    BattleFunc_140 = "The user sends soundwaves at the opposing team."
    v4971.Desc = BattleFunc_140
    BattleFunc_140 = "Magical"
    v4971.Category = BattleFunc_140
    BattleFunc_140 = 100
    v4971.Accuracy = BattleFunc_140
    BattleFunc_140 = true
    v4971.Sound = BattleFunc_140
    BattleFunc_140 = 10
    v4971.Uses = BattleFunc_140
    BattleFunc_140 = 90
    v4971.Power = BattleFunc_140
    BattleFunc_140 = "AllFoes"
    v4971.Target = BattleFunc_140
    v4663["Hyper Voice"] = v4971
    local v4972 = {}
    BattleFunc_140 = "Spirit"
    v4972.Type = BattleFunc_140
    BattleFunc_140 = "A ghastly glare to scare the target. Has a chance to flinch."
    v4972.Desc = BattleFunc_140
    BattleFunc_140 = "Magical"
    v4972.Category = BattleFunc_140
    BattleFunc_140 = 100
    v4972.Accuracy = BattleFunc_140
    BattleFunc_140 = 20
    v4972.Uses = BattleFunc_140
    BattleFunc_140 = 30
    v4972.Power = BattleFunc_140
    BattleFunc_140 = "Single"
    v4972.Target = BattleFunc_140
    local function BattleFunc_141(p582, p583, p584)
        v3(p582, p583, p584, 30, "Flinch")
    end
    v4972.BattleFunc = BattleFunc_141
    v4663["Shadowy Eyes"] = v4972
    local v4973 = {}
    BattleFunc_141 = "Basic"
    v4973.Type = BattleFunc_141
    BattleFunc_141 = "The user convinces the opposing team to party with it. This creates an opening, lowering their defense and magical defense."
    v4973.Desc = BattleFunc_141
    BattleFunc_141 = "Passive"
    v4973.Category = BattleFunc_141
    BattleFunc_141 = 100
    v4973.Accuracy = BattleFunc_141
    BattleFunc_141 = 20
    v4973.Uses = BattleFunc_141
    BattleFunc_141 = nil
    v4973.Power = BattleFunc_141
    BattleFunc_141 = "AllFoes"
    v4973.Target = BattleFunc_141
    local function BattleFunc_142(p585, p586, p587)
        local v2367 = {}
        v2367.def = -1
        v2367.mdef = -1
        v4(p585, p586, p587, 100, v2367)
    end
    v4973.BattleFunc = BattleFunc_142
    v4663["Party!"] = v4973
    local v4974 = {}
    BattleFunc_142 = "Mind"
    v4974.Type = BattleFunc_142
    BattleFunc_142 = "The user recombobulates both it and a target. Boosts a random stat of the user and lowers a random stat of the target."
    v4974.Desc = BattleFunc_142
    BattleFunc_142 = "Magical"
    v4974.Category = BattleFunc_142
    BattleFunc_142 = 100
    v4974.Accuracy = BattleFunc_142
    BattleFunc_142 = 10
    v4974.Uses = BattleFunc_142
    BattleFunc_142 = 60
    v4974.Power = BattleFunc_142
    BattleFunc_142 = "Single"
    v4974.Target = BattleFunc_142
    local function BattleFunc_143(p588, p589, p590)
        local v2371 = {}
        v2371[1] = "atk"
        v2371[2] = "def"
        v2371[3] = "matk"
        v2371[4] = "mdef"
        v2371[5] = "spe"
        v2371[6] = "acc"
        local v2383 = {}
        v2383[v2371[math.random(#v2371)]] = 1
        v4(p588, p589, p589, 100, v2383)
        local v2390 = {}
        v2390[v2371[math.random(#v2371)]] = -1
        v4(p588, p589, p590, 100, v2390)
    end
    v4974.BattleFunc = BattleFunc_143
    v4663.Recombobulate = v4974
    local v4975 = {}
    BattleFunc_143 = "Melee"
    v4975.Type = BattleFunc_143
    BattleFunc_143 = "Swings clumsily. Lowers the evasion of the user."
    v4975.Desc = BattleFunc_143
    BattleFunc_143 = "Physical"
    v4975.Category = BattleFunc_143
    BattleFunc_143 = 100
    v4975.Accuracy = BattleFunc_143
    BattleFunc_143 = 10
    v4975.Uses = BattleFunc_143
    BattleFunc_143 = true
    v4975.Contact = BattleFunc_143
    BattleFunc_143 = 85
    v4975.Power = BattleFunc_143
    BattleFunc_143 = "Single"
    v4975.Target = BattleFunc_143
    local function BattleFunc_144(p591, p592, p593)
        local v2406 = {}
        v2406.eva = -1
        v4(p591, p592, p592, 100, v2406)
    end
    v4975.BattleFunc = BattleFunc_144
    v4663["Clumsy Swing"] = v4975
    local v4976 = {}
    BattleFunc_144 = "Spirit"
    v4976.Type = BattleFunc_144
    BattleFunc_144 = "Draws foe in with spooky whispers. Lowers the evasion of the target."
    v4976.Desc = BattleFunc_144
    BattleFunc_144 = "Magical"
    v4976.Category = BattleFunc_144
    BattleFunc_144 = 100
    v4976.Accuracy = BattleFunc_144
    BattleFunc_144 = 25
    v4976.Uses = BattleFunc_144
    BattleFunc_144 = 20
    v4976.Power = BattleFunc_144
    BattleFunc_144 = "Single"
    v4976.Target = BattleFunc_144
    local function BattleFunc_145(p594, p595, p596)
        local v2414 = {}
        v2414.eva = -1
        v4(p594, p595, p596, 100, v2414)
    end
    v4976.BattleFunc = BattleFunc_145
    v4663.Whisper = v4976
    local v4977 = {}
    BattleFunc_145 = "Spirit"
    v4977.Type = BattleFunc_145
    BattleFunc_145 = "The user summons a vortex of an unknown origin. Has a chance to confuse."
    v4977.Desc = BattleFunc_145
    BattleFunc_145 = "Magical"
    v4977.Category = BattleFunc_145
    BattleFunc_145 = 100
    v4977.Accuracy = BattleFunc_145
    BattleFunc_145 = 10
    v4977.Uses = BattleFunc_145
    BattleFunc_145 = 90
    v4977.Power = BattleFunc_145
    BattleFunc_145 = "Single"
    v4977.Target = BattleFunc_145
    local function BattleFunc_146(p597, p598, p599)
        v3(p597, p598, p599, 20, "Confuse")
    end
    v4977.BattleFunc = BattleFunc_146
    v4663["Vague Vortex"] = v4977
    local v4978 = {}
    BattleFunc_146 = "Basic"
    v4978.Type = BattleFunc_146
    BattleFunc_146 = "The user screams at the top of its lungs, doing massive damage. Has a chance to cause flinch."
    v4978.Desc = BattleFunc_146
    BattleFunc_146 = "Magical"
    v4978.Category = BattleFunc_146
    BattleFunc_146 = 80
    v4978.Accuracy = BattleFunc_146
    BattleFunc_146 = true
    v4978.Sound = BattleFunc_146
    BattleFunc_146 = 5
    v4978.Uses = BattleFunc_146
    BattleFunc_146 = 110
    v4978.Power = BattleFunc_146
    BattleFunc_146 = "Single"
    v4978.Target = BattleFunc_146
    local function BattleFunc_147(p600, p601, p602)
        v3(p600, p601, p602, 15, "Flinch")
    end
    v4978.BattleFunc = BattleFunc_147
    v4663["Hyper Scream"] = v4978
    local v4979 = {}
    BattleFunc_147 = "Mythic"
    v4979.Type = BattleFunc_147
    BattleFunc_147 = "An ancient attack from long ago."
    v4979.Desc = BattleFunc_147
    BattleFunc_147 = "Magical"
    v4979.Category = BattleFunc_147
    BattleFunc_147 = 100
    v4979.Accuracy = BattleFunc_147
    BattleFunc_147 = 10
    v4979.Uses = BattleFunc_147
    BattleFunc_147 = 100
    v4979.Power = BattleFunc_147
    BattleFunc_147 = "Single"
    v4979.Target = BattleFunc_147
    v4663["Mythic Blast"] = v4979
    local v4980 = {}
    BattleFunc_147 = "Earth"
    v4980.Type = BattleFunc_147
    BattleFunc_147 = "The user crashes it shell into the target. Has a chance to lower the target's attack."
    v4980.Desc = BattleFunc_147
    BattleFunc_147 = "Physical"
    v4980.Category = BattleFunc_147
    BattleFunc_147 = 95
    v4980.Accuracy = BattleFunc_147
    BattleFunc_147 = 10
    v4980.Uses = BattleFunc_147
    BattleFunc_147 = true
    v4980.Contact = BattleFunc_147
    BattleFunc_147 = 70
    v4980.Power = BattleFunc_147
    BattleFunc_147 = "Single"
    v4980.Target = BattleFunc_147
    local function BattleFunc_148(p603, p604, p605)
        local v2436 = {}
        v2436.atk = -1
        v4(p603, p604, p605, 30, v2436)
    end
    v4980.BattleFunc = BattleFunc_148
    v4663["Shell Crash"] = v4980
    local v4981 = {}
    BattleFunc_148 = "Water"
    v4981.Type = BattleFunc_148
    BattleFunc_148 = "The user launches its most powerful Water attack. Has a chance to lower the target's magic defense."
    v4981.Desc = BattleFunc_148
    BattleFunc_148 = "Magical"
    v4981.Category = BattleFunc_148
    BattleFunc_148 = 80
    v4981.Accuracy = BattleFunc_148
    BattleFunc_148 = 10
    v4981.Uses = BattleFunc_148
    BattleFunc_148 = 120
    v4981.Power = BattleFunc_148
    BattleFunc_148 = "Single"
    v4981.Target = BattleFunc_148
    local function BattleFunc_149(p606, p607, p608)
        local v2444 = {}
        v2444.mdef = -1
        v4(p606, p607, p608, 20, v2444)
    end
    v4981.BattleFunc = BattleFunc_149
    v4663["Hydro Burst"] = v4981
    local v4982 = {}
    BattleFunc_149 = "Light"
    v4982.Type = BattleFunc_149
    BattleFunc_149 = "The user shines an extremely bright beam at the target. The target's accuracy also lowers."
    v4982.Desc = BattleFunc_149
    BattleFunc_149 = "Magical"
    v4982.Category = BattleFunc_149
    BattleFunc_149 = 90
    v4982.Accuracy = BattleFunc_149
    BattleFunc_149 = 10
    v4982.Uses = BattleFunc_149
    BattleFunc_149 = 100
    v4982.Power = BattleFunc_149
    BattleFunc_149 = "Single"
    v4982.Target = BattleFunc_149
    local function BattleFunc_150(p609, p610, p611)
        local v2452 = {}
        v2452.acc = -1
        v4(p609, p610, p611, 100, v2452)
    end
    v4982.BattleFunc = BattleFunc_150
    v4663["Radiant Beam"] = v4982
    local v4983 = {}
    BattleFunc_150 = "Poison"
    v4983.Type = BattleFunc_150
    BattleFunc_150 = "An eruption of toxic sulfur gas, decreasing the user's defense and magical defense after use. Has a high chance to poison the target."
    v4983.Desc = BattleFunc_150
    BattleFunc_150 = "Magical"
    v4983.Category = BattleFunc_150
    BattleFunc_150 = 80
    v4983.Accuracy = BattleFunc_150
    BattleFunc_150 = 5
    v4983.Uses = BattleFunc_150
    BattleFunc_150 = 120
    v4983.Power = BattleFunc_150
    BattleFunc_150 = "Single"
    v4983.Target = BattleFunc_150
    local function BattleFunc_151(p612, p613, p614)
        v3(p612, p613, p614, 50, "Poison")
        local v2466 = {}
        v2466.mdef = -1
        v2466.def = -1
        v4(p612, p613, p613, 100, v2466)
    end
    v4983.BattleFunc = BattleFunc_151
    v4663["Sulfur Plume"] = v4983
    local v4984 = {}
    BattleFunc_151 = "Light"
    v4984.Type = BattleFunc_151
    BattleFunc_151 = "The user uses divine light to burn the target."
    v4984.Desc = BattleFunc_151
    BattleFunc_151 = "Magical"
    v4984.Category = BattleFunc_151
    BattleFunc_151 = 100
    v4984.Accuracy = BattleFunc_151
    BattleFunc_151 = 5
    v4984.Uses = BattleFunc_151
    BattleFunc_151 = 120
    v4984.Power = BattleFunc_151
    BattleFunc_151 = "Single"
    v4984.Target = BattleFunc_151
    local function BattleFunc_152(p615, p616, p617)
        v3(p615, p616, p617, 20, "Burn")
    end
    v4984.BattleFunc = BattleFunc_152
    v4663["Divine Light"] = v4984
    local v4985 = {}
    BattleFunc_152 = "Light"
    v4985.Type = BattleFunc_152
    BattleFunc_152 = "An extremely bright flash of light that illuminates the entire abyss. Has a chance to boost the user's attack and magic attack."
    v4985.Desc = BattleFunc_152
    BattleFunc_152 = "Magical"
    v4985.Category = BattleFunc_152
    BattleFunc_152 = 100
    v4985.Accuracy = BattleFunc_152
    BattleFunc_152 = 10
    v4985.Uses = BattleFunc_152
    BattleFunc_152 = 100
    v4985.Power = BattleFunc_152
    BattleFunc_152 = "Single"
    v4985.Target = BattleFunc_152
    local function BattleFunc_153(p618, p619, p620)
        local v2482 = {}
        v2482.atk = 1
        v2482.matk = 1
        v4(p618, p619, p619, 10, v2482)
    end
    v4985.BattleFunc = BattleFunc_153
    v4663["Abyss Breaker"] = v4985
    local v4986 = {}
    BattleFunc_153 = "Melee"
    v4986.Type = BattleFunc_153
    BattleFunc_153 = "The user adapts a battle-ready stance and boosts their attack and defense."
    v4986.Desc = BattleFunc_153
    BattleFunc_153 = "Passive"
    v4986.Category = BattleFunc_153
    BattleFunc_153 = true
    v4986.Accuracy = BattleFunc_153
    BattleFunc_153 = 10
    v4986.Uses = BattleFunc_153
    BattleFunc_153 = nil
    v4986.Power = BattleFunc_153
    BattleFunc_153 = "Self"
    v4986.Target = BattleFunc_153
    local function BattleFunc_154(p621, p622, p623)
        local v2491 = {}
        v2491.atk = 1
        v2491.def = 1
        v4(p621, p622, p622, 100, v2491)
    end
    v4986.BattleFunc = BattleFunc_154
    v4663.Toughen = v4986
    local v4987 = {}
    BattleFunc_154 = "Plant"
    v4987.Type = BattleFunc_154
    BattleFunc_154 = "Summons plants to attack the target. May boost all of the user's stats."
    v4987.Desc = BattleFunc_154
    BattleFunc_154 = "Magical"
    v4987.Category = BattleFunc_154
    BattleFunc_154 = 100
    v4987.Accuracy = BattleFunc_154
    BattleFunc_154 = 10
    v4987.Uses = BattleFunc_154
    BattleFunc_154 = 60
    v4987.Power = BattleFunc_154
    BattleFunc_154 = "Single"
    v4987.Target = BattleFunc_154
    local function BattleFunc_155(p624, p625, p626)
        local v2500 = {}
        v2500.atk = 1
        v2500.def = 1
        v2500.matk = 1
        v2500.spe = 1
        v2500.mdef = 1
        v4(p624, p625, p625, 10, v2500)
    end
    v4987.BattleFunc = BattleFunc_155
    v4663["Wild Growth"] = v4987
    local v4988 = {}
    BattleFunc_155 = "Spark"
    v4988.Type = BattleFunc_155
    BattleFunc_155 = "The user gathers electricity and zaps the target. May boost the user's magical attack."
    v4988.Desc = BattleFunc_155
    BattleFunc_155 = "Magical"
    v4988.Category = BattleFunc_155
    BattleFunc_155 = 90
    v4988.Accuracy = BattleFunc_155
    BattleFunc_155 = 10
    v4988.Uses = BattleFunc_155
    BattleFunc_155 = 90
    v4988.Power = BattleFunc_155
    BattleFunc_155 = "Single"
    v4988.Target = BattleFunc_155
    local function BattleFunc_156(p627, p628, p629)
        local v2512 = {}
        v2512.matk = 1
        v4(p627, p628, p628, 30, v2512)
    end
    v4988.BattleFunc = BattleFunc_156
    v4663["Zeppelin Zap"] = v4988
    local v4989 = {}
    BattleFunc_156 = "Water"
    v4989.Type = BattleFunc_156
    BattleFunc_156 = "The user rams into the target, intending to capsize them."
    v4989.Desc = BattleFunc_156
    BattleFunc_156 = "Physical"
    v4989.Category = BattleFunc_156
    BattleFunc_156 = true
    v4989.Contact = BattleFunc_156
    BattleFunc_156 = 100
    v4989.Accuracy = BattleFunc_156
    BattleFunc_156 = 20
    v4989.Uses = BattleFunc_156
    BattleFunc_156 = 60
    v4989.Power = BattleFunc_156
    BattleFunc_156 = "Single"
    v4989.Target = BattleFunc_156
    v4663.Capsize = v4989
    local v4990 = {}
    BattleFunc_156 = "Fire"
    v4990.Type = BattleFunc_156
    BattleFunc_156 = "This attack has a chance to burn. If the target is Food-type, this attack has a 100% chance to burn."
    v4990.Desc = BattleFunc_156
    BattleFunc_156 = "Magical"
    v4990.Category = BattleFunc_156
    BattleFunc_156 = 100
    v4990.Accuracy = BattleFunc_156
    BattleFunc_156 = 10
    v4990.Uses = BattleFunc_156
    BattleFunc_156 = 60
    v4990.Power = BattleFunc_156
    BattleFunc_156 = "Single"
    v4990.Target = BattleFunc_156
    local function BattleFunc_157(p630, p631, p632)
        local v2515 = 20
        local v2519 = v2.IsType(p632, "Food")
        if not v2519 then
            v2515 = 100
        end
        v2519 = v3
        v2519(p630, p631, p632, v2515, "Burn")
    end
    v4990.BattleFunc = BattleFunc_157
    v4663.Sizzle = v4990
    local v4991 = {}
    BattleFunc_157 = "Fire"
    v4991.Type = BattleFunc_157
    BattleFunc_157 = "This move does double damage to Plant types."
    v4991.Desc = BattleFunc_157
    BattleFunc_157 = "Magical"
    v4991.Category = BattleFunc_157
    BattleFunc_157 = 100
    v4991.Accuracy = BattleFunc_157
    BattleFunc_157 = 15
    v4991.Uses = BattleFunc_157
    BattleFunc_157 = 70
    v4991.Power = BattleFunc_157
    BattleFunc_157 = "Single"
    v4991.Target = BattleFunc_157
    local function ModifyDamage_13(p633, p634, p635, p636, p637, p638, p639)
        if not table.find(p1.Database.DoodleInfo[v2.GetRealName(p635)].Type, "Plant") then
            if p639 then
                p633:AddDialogue(p633.ActionList, "&DOODLENAME," .. p634.ID .. "&" .. " does extra damage!")
            end
            return 2
        end
        return 1
    end
    v4991.ModifyDamage = ModifyDamage_13
    v4663["Forest Fire"] = v4991
    local v4992 = {}
    ModifyDamage_13 = "Water"
    v4992.Type = ModifyDamage_13
    ModifyDamage_13 = "Water is sprayed at the target. If the target is Metal-type, it does extra damage."
    v4992.Desc = ModifyDamage_13
    ModifyDamage_13 = "Magical"
    v4992.Category = ModifyDamage_13
    ModifyDamage_13 = 100
    v4992.Accuracy = ModifyDamage_13
    ModifyDamage_13 = 15
    v4992.Uses = ModifyDamage_13
    ModifyDamage_13 = 60
    v4992.Power = ModifyDamage_13
    ModifyDamage_13 = "Single"
    v4992.Target = ModifyDamage_13
    local function ModifyDamage_14(p640, p641, p642, p643, p644, p645, p646)
        if not table.find(p1.Database.DoodleInfo[v2.GetRealName(p642)].Type, "Metal") then
            if p646 then
                p640:AddDialogue(p640.ActionList, "&DOODLENAME," .. p641.ID .. "&" .. " does extra damage!")
            end
            return 2
        end
        return 1
    end
    v4992.ModifyDamage = ModifyDamage_14
    v4663.Rust = v4992
    local v4993 = {}
    ModifyDamage_14 = "Basic"
    v4993.Type = ModifyDamage_14
    ModifyDamage_14 = "The target is hit with a blast of chemical breath. This move's type and effect changes depending on what Doodle is using it."
    v4993.Desc = ModifyDamage_14
    ModifyDamage_14 = "Magical"
    v4993.Category = ModifyDamage_14
    ModifyDamage_14 = 100
    v4993.Accuracy = ModifyDamage_14
    ModifyDamage_14 = 10
    v4993.Uses = ModifyDamage_14
    ModifyDamage_14 = 80
    v4993.Power = ModifyDamage_14
    ModifyDamage_14 = "Single"
    v4993.Target = ModifyDamage_14
    v4993.MoveChangeType = function(p647, p648, p649, p650)
        local v2569 = "Basic"
        local v2570 = {}
        v2570.Vuliable = "Basic"
        v2570.Endovul = "Ice"
        v2570.Exovul = "Fire"
        v2570.Noxvul = "Poison"
        local v2574 = v2.GetRealName(p648)
        local v2580 = v2570[v2574]
        if not v2580 then
            v2574 = v2
            v2580 = v2574.GetRealName
            v2574 = p648
            v2569 = v2570[v2580(v2574)]
        end
        p650.Type = v2569
    end
    local function BattleFunc_158(p651, p652, p653)
        local v2582 = {}
        v2582.Endovul = "Frozen"
        v2582.Exovul = "Burn"
        v2582.Noxvul = "Poison"
        local v2596 = "Vulnerable"
        local v2586 = v2.GetRealName(p652)
        local v2587 = v2582[v2586]
        if not v2587 then
            v2586 = v2
            v2587 = v2586.GetRealName
            v2586 = p652
            v2596 = v2582[v2587(v2586)]
        end
        v2588 = v3
        v2588(p651, p652, p653, 20, v2596)
    end
    v4993.BattleFunc = BattleFunc_158
    v4663["Chemical Breath"] = v4993
    local v4994 = {}
    BattleFunc_158 = "Crystal"
    v4994.Type = BattleFunc_158
    BattleFunc_158 = "The user sends a wave of water, charged with crystals, at the target. This attack can be either Water or Crystal-type, whichever does more damage."
    v4994.Desc = BattleFunc_158
    BattleFunc_158 = "Magical"
    v4994.Category = BattleFunc_158
    BattleFunc_158 = 100
    v4994.Accuracy = BattleFunc_158
    BattleFunc_158 = 10
    v4994.Uses = BattleFunc_158
    BattleFunc_158 = 80
    v4994.Power = BattleFunc_158
    BattleFunc_158 = "Single"
    v4994.Target = BattleFunc_158
    local function MoveChangeType_3(p654, p655, p656, p657)
        local v2599 = {}
        local v2600 = "Crystal"
        v2599[1] = v2600
        local v2606 = p1.Database.Typings:GetEffectiveness(p655, p656, "Water")
        local v2608, v2609, v2610 = pairs(v2599)
        for v2618, v2616 in v2608, v2609, v2610 do
            local v2617 = p1.Database.Typings:GetEffectiveness(p655, p656, v2616)
            if v2617 > v2606 then
                v2606 = v2617
                v2600 = v2616
            end
        end
        p657.Type = "Water"
    end
    v4994.MoveChangeType = MoveChangeType_3
    v4663["Shard Surge"] = v4994
    local v4995 = {}
    MoveChangeType_3 = "Crystal"
    v4995.Type = MoveChangeType_3
    MoveChangeType_3 = "The user sends a wave of water, charged with crystals, at the target. This attack can be either Water or Crystal-type, whichever does more damage."
    v4995.Desc = MoveChangeType_3
    MoveChangeType_3 = "Magical"
    v4995.Category = MoveChangeType_3
    MoveChangeType_3 = 100
    v4995.Accuracy = MoveChangeType_3
    MoveChangeType_3 = 15
    v4995.Uses = MoveChangeType_3
    MoveChangeType_3 = 80
    v4995.Power = MoveChangeType_3
    MoveChangeType_3 = "Single"
    v4995.Target = MoveChangeType_3
    local function MoveChangeType_4(p658, p659, p660, p661)
        local v2624 = {}
        local v2625 = "Crystal"
        v2624[1] = v2625
        local v2631 = p1.Database.Typings:GetEffectiveness(p659, p660, "Water")
        local v2633, v2634, v2635 = pairs(v2624)
        for v2643, v2641 in v2633, v2634, v2635 do
            local v2642 = p1.Database.Typings:GetEffectiveness(p659, p660, v2641)
            if v2642 > v2631 then
                v2631 = v2642
                v2625 = v2641
            end
        end
        p661.Type = "Water"
    end
    v4995.MoveChangeType = MoveChangeType_4
    v4663["Crystalized Wave"] = v4995
    local v4996 = {}
    MoveChangeType_4 = "Light"
    v4996.Type = MoveChangeType_4
    MoveChangeType_4 = "A weak laser attacks the target."
    v4996.Desc = MoveChangeType_4
    MoveChangeType_4 = "Magical"
    v4996.Category = MoveChangeType_4
    MoveChangeType_4 = 100
    v4996.Accuracy = MoveChangeType_4
    MoveChangeType_4 = 25
    v4996.Uses = MoveChangeType_4
    MoveChangeType_4 = 50
    v4996.Power = MoveChangeType_4
    MoveChangeType_4 = "Single"
    v4996.Target = MoveChangeType_4
    v4663.Laser = v4996
    local v4997 = {}
    MoveChangeType_4 = "Water"
    v4997.Type = MoveChangeType_4
    MoveChangeType_4 = "Summons a wave of dirty water at the opposing team that can poison. If it's raining, this attack always poisons."
    v4997.Desc = MoveChangeType_4
    MoveChangeType_4 = "Magical"
    v4997.Category = MoveChangeType_4
    MoveChangeType_4 = 75
    v4997.Accuracy = MoveChangeType_4
    MoveChangeType_4 = 10
    v4997.Uses = MoveChangeType_4
    MoveChangeType_4 = 90
    v4997.Power = MoveChangeType_4
    MoveChangeType_4 = "AllFoes"
    v4997.Target = MoveChangeType_4
    local function BattleFunc_159(p662, p663, p664)
        local v2649 = p662.Weather
        v2649 = v3
        v2649(p662, p663, p664, 100, "Poison")
        return 
        v3(p662, p663, p664, 20, "Poison")
    end
    v4997.BattleFunc = BattleFunc_159
    v4663["Tainted Water"] = v4997
    local v4998 = {}
    BattleFunc_159 = "Spark"
    v4998.Type = BattleFunc_159
    BattleFunc_159 = "Summons a lightning bolt to strike the target. Has a chance to paralyze."
    v4998.Desc = BattleFunc_159
    BattleFunc_159 = "Magical"
    v4998.Category = BattleFunc_159
    BattleFunc_159 = 100
    v4998.Accuracy = BattleFunc_159
    BattleFunc_159 = 10
    v4998.Uses = BattleFunc_159
    BattleFunc_159 = 90
    v4998.Power = BattleFunc_159
    BattleFunc_159 = "Single"
    v4998.Target = BattleFunc_159
    local function BattleFunc_160(p665, p666, p667)
        v3(p665, p666, p667, 20, "Paralysis")
    end
    v4998.BattleFunc = BattleFunc_160
    v4663["Thunder Strike"] = v4998
    local v4999 = {}
    BattleFunc_160 = "Spark"
    v4999.Type = BattleFunc_160
    BattleFunc_160 = "Summons a giant lightning bolt to strike the foe. Has a high chance to paralyze."
    v4999.Desc = BattleFunc_160
    BattleFunc_160 = "Magical"
    v4999.Category = BattleFunc_160
    BattleFunc_160 = 70
    v4999.Accuracy = BattleFunc_160
    BattleFunc_160 = 5
    v4999.Uses = BattleFunc_160
    BattleFunc_160 = 120
    v4999.Power = BattleFunc_160
    BattleFunc_160 = "Single"
    v4999.Target = BattleFunc_160
    local function BattleFunc_161(p668, p669, p670)
        v3(p668, p669, p670, 40, "Paralysis")
    end
    v4999.BattleFunc = BattleFunc_161
    v4663.Thunderstorm = v4999
    local v5000 = {}
    BattleFunc_161 = "Spark"
    v5000.Type = BattleFunc_161
    BattleFunc_161 = "Strikes the target with multiple lightning bolts. This attack hits 4 times."
    v5000.Desc = BattleFunc_161
    BattleFunc_161 = "Magical"
    v5000.Category = BattleFunc_161
    BattleFunc_161 = 80
    v5000.Accuracy = BattleFunc_161
    local function Times_12()
        return 4
    end
    v5000.Times = Times_12
    Times_12 = 4
    v5000.MaxHit = Times_12
    Times_12 = 10
    v5000.Uses = Times_12
    Times_12 = 25
    v5000.Power = Times_12
    Times_12 = "Single"
    v5000.Target = Times_12
    local function BattleFunc_162(p671, p672, p673)
        v3(p671, p672, p673, 5, "Paralysis")
    end
    v5000.BattleFunc = BattleFunc_162
    v4663["Quad Strike"] = v5000
    local v5001 = {}
    BattleFunc_162 = "Spark"
    v5001.Type = BattleFunc_162
    BattleFunc_162 = "Zip zaps the target. The next time the user uses a Spark-type attack, it becomes stronger."
    v5001.Desc = BattleFunc_162
    BattleFunc_162 = "Magical"
    v5001.Category = BattleFunc_162
    BattleFunc_162 = 100
    v5001.Accuracy = BattleFunc_162
    BattleFunc_162 = 30
    v5001.Uses = BattleFunc_162
    BattleFunc_162 = 30
    v5001.Power = BattleFunc_162
    BattleFunc_162 = "Single"
    v5001.Target = BattleFunc_162
    local function BattleFunc_163(p674, p675, p676)
        p675.BuffNextDamage = "Spark"
    end
    v5001.BattleFunc = BattleFunc_163
    v4663.Electrify = v5001
    local v5002 = {}
    BattleFunc_163 = "Spark"
    v5002.Type = BattleFunc_163
    BattleFunc_163 = "Shocks the target. Has a chance to paralyze."
    v5002.Desc = BattleFunc_163
    BattleFunc_163 = "Magical"
    v5002.Category = BattleFunc_163
    BattleFunc_163 = 100
    v5002.Accuracy = BattleFunc_163
    BattleFunc_163 = 25
    v5002.Uses = BattleFunc_163
    BattleFunc_163 = 50
    v5002.Power = BattleFunc_163
    BattleFunc_163 = "Single"
    v5002.Target = BattleFunc_163
    local function BattleFunc_164(p677, p678, p679)
        v3(p677, p678, p679, 10, "Paralysis")
    end
    v5002.BattleFunc = BattleFunc_164
    v4663.Shock = v5002
    local v5003 = {}
    BattleFunc_164 = "Crystal"
    v5003.Type = BattleFunc_164
    BattleFunc_164 = "Splatters crystal dust at the target. Has a small chance to lower the accuracy of the target."
    v5003.Desc = BattleFunc_164
    BattleFunc_164 = "Magical"
    v5003.Category = BattleFunc_164
    BattleFunc_164 = 100
    v5003.Accuracy = BattleFunc_164
    BattleFunc_164 = 25
    v5003.Uses = BattleFunc_164
    BattleFunc_164 = 40
    v5003.Power = BattleFunc_164
    BattleFunc_164 = "Single"
    v5003.Target = BattleFunc_164
    local function BattleFunc_165(p680, p681, p682)
        local v2699 = {}
        v2699.acc = -1
        v4(p680, p681, p682, 20, v2699)
    end
    v5003.BattleFunc = BattleFunc_165
    v4663["Crystal Dust"] = v5003
    local v5004 = {}
    BattleFunc_165 = "Crystal"
    v5004.Type = BattleFunc_165
    BattleFunc_165 = "Summons a flurry of crystals at the target. This has a chance to lower the accuracy of the target."
    v5004.Desc = BattleFunc_165
    BattleFunc_165 = "Magical"
    v5004.Category = BattleFunc_165
    BattleFunc_165 = 85
    v5004.Accuracy = BattleFunc_165
    BattleFunc_165 = 5
    v5004.Uses = BattleFunc_165
    BattleFunc_165 = 100
    v5004.Power = BattleFunc_165
    BattleFunc_165 = "Single"
    v5004.Target = BattleFunc_165
    local function BattleFunc_166(p683, p684, p685)
        local v2707 = {}
        v2707.acc = -1
        v4(p683, p684, p685, 20, v2707)
    end
    v5004.BattleFunc = BattleFunc_166
    v4663["Crystal Storm"] = v5004
    local v5005 = {}
    BattleFunc_166 = "Mind"
    v5005.Type = BattleFunc_166
    BattleFunc_166 = "Attacks using weak telekinesis. Has a small chance to confuse."
    v5005.Desc = BattleFunc_166
    BattleFunc_166 = "Magical"
    v5005.Category = BattleFunc_166
    BattleFunc_166 = 100
    v5005.Accuracy = BattleFunc_166
    BattleFunc_166 = 25
    v5005.Uses = BattleFunc_166
    BattleFunc_166 = 50
    v5005.Power = BattleFunc_166
    BattleFunc_166 = "Single"
    v5005.Target = BattleFunc_166
    local function BattleFunc_167(p686, p687, p688)
        v3(p686, p687, p688, 10, "Confuse")
    end
    v5005.BattleFunc = BattleFunc_167
    v4663["Mind Power"] = v5005
    local v5006 = {}
    BattleFunc_167 = "Spirit"
    v5006.Type = BattleFunc_167
    BattleFunc_167 = "This attack confuses the target."
    v5006.Desc = BattleFunc_167
    BattleFunc_167 = "Passive"
    v5006.Category = BattleFunc_167
    BattleFunc_167 = 100
    v5006.Accuracy = BattleFunc_167
    BattleFunc_167 = 20
    v5006.Uses = BattleFunc_167
    BattleFunc_167 = nil
    v5006.Power = BattleFunc_167
    BattleFunc_167 = "Single"
    v5006.Target = BattleFunc_167
    BattleFunc_167 = "Confusion"
    v5006.AIStatus = BattleFunc_167
    local function BattleFunc_168(p689, p690, p691)
        v3(p689, p690, p691, 100, "Confuse")
    end
    v5006.BattleFunc = BattleFunc_168
    v4663.Befuddlement = v5006
    local v5007 = {}
    BattleFunc_168 = "Fire"
    v5007.Type = BattleFunc_168
    BattleFunc_168 = "The user sends a small burning orb at the target with intention to cause a burn. If it hits, cause a burn."
    v5007.Desc = BattleFunc_168
    BattleFunc_168 = "Passive"
    v5007.Category = BattleFunc_168
    BattleFunc_168 = 75
    v5007.Accuracy = BattleFunc_168
    BattleFunc_168 = 10
    v5007.Uses = BattleFunc_168
    BattleFunc_168 = nil
    v5007.Power = BattleFunc_168
    BattleFunc_168 = "Single"
    v5007.Target = BattleFunc_168
    BattleFunc_168 = "Burn"
    v5007.Status = BattleFunc_168
    local function BattleFunc_169(p692, p693, p694)
        v3(p692, p693, p694, 100, "Burn")
    end
    v5007.BattleFunc = BattleFunc_169
    v4663["Burning Orb"] = v5007
    local v5008 = {}
    BattleFunc_169 = "Basic"
    v5008.Type = BattleFunc_169
    BattleFunc_169 = "The user rolls into the enemy, doing damage."
    v5008.Desc = BattleFunc_169
    BattleFunc_169 = "Physical"
    v5008.Category = BattleFunc_169
    BattleFunc_169 = 100
    v5008.Accuracy = BattleFunc_169
    BattleFunc_169 = 15
    v5008.Uses = BattleFunc_169
    BattleFunc_169 = 55
    v5008.Power = BattleFunc_169
    BattleFunc_169 = "Single"
    v5008.Target = BattleFunc_169
    local function BattleFunc_170(p695, p696, p697)
    end
    v5008.BattleFunc = BattleFunc_170
    v4663.Roll = v5008
    local v5009 = {}
    BattleFunc_170 = "Air"
    v5009.Type = BattleFunc_170
    BattleFunc_170 = "Pecks the enemy with a beak."
    v5009.Desc = BattleFunc_170
    BattleFunc_170 = "Physical"
    v5009.Category = BattleFunc_170
    BattleFunc_170 = 100
    v5009.Accuracy = BattleFunc_170
    BattleFunc_170 = 30
    v5009.Uses = BattleFunc_170
    BattleFunc_170 = 40
    v5009.Power = BattleFunc_170
    BattleFunc_170 = "Single"
    v5009.Target = BattleFunc_170
    local function BattleFunc_171(p698, p699, p700)
    end
    v5009.BattleFunc = BattleFunc_171
    v4663.Peck = v5009
    local v5010 = {}
    BattleFunc_171 = "Fire"
    v5010.Type = BattleFunc_171
    BattleFunc_171 = "Shoots a weak fire bolt at the enemy. Has a chance to burn."
    v5010.Desc = BattleFunc_171
    BattleFunc_171 = "Magical"
    v5010.Category = BattleFunc_171
    BattleFunc_171 = 100
    v5010.Accuracy = BattleFunc_171
    BattleFunc_171 = 25
    v5010.Uses = BattleFunc_171
    BattleFunc_171 = 40
    v5010.Power = BattleFunc_171
    BattleFunc_171 = true
    v5010.NoFirewall = BattleFunc_171
    BattleFunc_171 = "Single"
    v5010.Target = BattleFunc_171
    local function BattleFunc_172(p701, p702, p703)
        v3(p701, p702, p703, 10, "Burn")
    end
    v5010.BattleFunc = BattleFunc_172
    v4663.FirewallFirebolt = v5010
    local v5011 = {}
    BattleFunc_172 = "Fire"
    v5011.Type = BattleFunc_172
    BattleFunc_172 = "Shoots a weak fire bolt at the enemy. Has a chance to burn."
    v5011.Desc = BattleFunc_172
    BattleFunc_172 = "Magical"
    v5011.Category = BattleFunc_172
    BattleFunc_172 = 100
    v5011.Accuracy = BattleFunc_172
    BattleFunc_172 = 25
    v5011.Uses = BattleFunc_172
    BattleFunc_172 = 40
    v5011.Power = BattleFunc_172
    BattleFunc_172 = "Single"
    v5011.Target = BattleFunc_172
    local function BattleFunc_173(p704, p705, p706)
        v3(p704, p705, p706, 10, "Burn")
    end
    v5011.BattleFunc = BattleFunc_173
    v4663.Firebolt = v5011
    local v5012 = {}
    BattleFunc_173 = "Fire"
    v5012.Type = BattleFunc_173
    BattleFunc_173 = "Shoots a fire ball at the enemy. Has a chance to burn."
    v5012.Desc = BattleFunc_173
    BattleFunc_173 = "Magical"
    v5012.Category = BattleFunc_173
    BattleFunc_173 = 100
    v5012.Accuracy = BattleFunc_173
    BattleFunc_173 = 10
    v5012.Uses = BattleFunc_173
    BattleFunc_173 = 85
    v5012.Power = BattleFunc_173
    BattleFunc_173 = "Single"
    v5012.Target = BattleFunc_173
    local function BattleFunc_174(p707, p708, p709)
        v3(p707, p708, p709, 10, "Burn")
    end
    v5012.BattleFunc = BattleFunc_174
    v4663.Fireball = v5012
    local v5013 = {}
    BattleFunc_174 = "Dark"
    v5013.Type = BattleFunc_174
    BattleFunc_174 = "The user sacrifices themselves to greatly lower the attack and magical attack of the target. "
    v5013.Desc = BattleFunc_174
    BattleFunc_174 = "Passive"
    v5013.Category = BattleFunc_174
    BattleFunc_174 = 100
    v5013.Accuracy = BattleFunc_174
    BattleFunc_174 = 5
    v5013.Uses = BattleFunc_174
    BattleFunc_174 = nil
    v5013.Power = BattleFunc_174
    BattleFunc_174 = "Single"
    v5013.Target = BattleFunc_174
    BattleFunc_174 = true
    v5013.AttackAlways = BattleFunc_174
    v5013.BeforeFunc = function(p710, p711, p712)
        local v2754 = p711.currenthp
        if v2754 > 0 then
            p710:TakeDamage(p711, v2754, nil, nil, true)
        end
    end
    local function BattleFunc_175(p713, p714, p715)
        local v2767 = {}
        v2767.atk = -2
        v2767.matk = -2
        v4(p713, p714, p715, 100, v2767)
    end
    v5013.BattleFunc = BattleFunc_175
    v4663["Worthwhile Sacrifice"] = v5013
    local v5014 = {}
    BattleFunc_175 = "Basic"
    v5014.Type = BattleFunc_175
    BattleFunc_175 = "User sacrifices themselves to do a lot of damage to everyone. "
    v5014.Desc = BattleFunc_175
    BattleFunc_175 = "Physical"
    v5014.Category = BattleFunc_175
    BattleFunc_175 = 100
    v5014.Accuracy = BattleFunc_175
    BattleFunc_175 = 5
    v5014.Uses = BattleFunc_175
    BattleFunc_175 = 200
    v5014.Power = BattleFunc_175
    BattleFunc_175 = "AllOthers"
    v5014.Target = BattleFunc_175
    BattleFunc_175 = true
    v5014.AttackAlways = BattleFunc_175
    local function BeforeFunc_3(p716, p717, p718)
        local v2771 = p717.currenthp
        if v2771 > 0 then
            p716:TakeDamage(p717, v2771, nil, nil, true)
        end
    end
    v5014.BeforeFunc = BeforeFunc_3
    v4663["Blowup Blast"] = v5014
    local v5015 = {}
    BeforeFunc_3 = "Fire"
    v5015.Type = BeforeFunc_3
    BeforeFunc_3 = "User sacrifices themselves to do a lot of damage to everyone. "
    v5015.Desc = BeforeFunc_3
    BeforeFunc_3 = "Physical"
    v5015.Category = BeforeFunc_3
    BeforeFunc_3 = 100
    v5015.Accuracy = BeforeFunc_3
    BeforeFunc_3 = 5
    v5015.Uses = BeforeFunc_3
    BeforeFunc_3 = 250
    v5015.Power = BeforeFunc_3
    BeforeFunc_3 = "AllOthers"
    v5015.Target = BeforeFunc_3
    BeforeFunc_3 = true
    v5015.AttackAlways = BeforeFunc_3
    local function BeforeFunc_4(p719, p720, p721)
        local v2779 = p720.currenthp
        if v2779 > 0 then
            p719:TakeDamage(p720, v2779, nil, nil, true)
        end
    end
    v5015.BeforeFunc = BeforeFunc_4
    v4663["Boom Boom"] = v5015
    local v5016 = {}
    BeforeFunc_4 = "Insect"
    v5016.Type = BeforeFunc_4
    BeforeFunc_4 = "User injects their stinger into the opponent. User faints on hit."
    v5016.Desc = BeforeFunc_4
    BeforeFunc_4 = "Physical"
    v5016.Category = BeforeFunc_4
    BeforeFunc_4 = 100
    v5016.Accuracy = BeforeFunc_4
    BeforeFunc_4 = 5
    v5016.Uses = BeforeFunc_4
    BeforeFunc_4 = 150
    v5016.Power = BeforeFunc_4
    BeforeFunc_4 = true
    v5016.Contact = BeforeFunc_4
    BeforeFunc_4 = "Single"
    v5016.Target = BeforeFunc_4
    local function BattleFunc_176(p722, p723, p724, p725)
        local v2787 = p723.currenthp
        if v2787 > 0 then
            p722:TakeDamage(p723, v2787, nil, nil, true)
        end
    end
    v5016.BattleFunc = BattleFunc_176
    v4663["Fatal Sting"] = v5016
    local v5017 = {}
    BattleFunc_176 = "Fire"
    v5017.Type = BattleFunc_176
    BattleFunc_176 = "A rampaging bonfire attack. It hurts the user a little bit."
    v5017.Desc = BattleFunc_176
    BattleFunc_176 = "Physical"
    v5017.Category = BattleFunc_176
    BattleFunc_176 = 100
    v5017.Accuracy = BattleFunc_176
    BattleFunc_176 = 10
    v5017.Uses = BattleFunc_176
    BattleFunc_176 = 120
    v5017.Power = BattleFunc_176
    BattleFunc_176 = "Single"
    v5017.Target = BattleFunc_176
    BattleFunc_176 = true
    v5017.Contact = BattleFunc_176
    local function BattleFunc_177(p726, p727, p728, p729)
        local v2797 = math.floor(p729 * 0.25)
        if v2797 > 0 then
            local v2801 = {}
            v2801[1] = "&DOODLENAME," .. p727.ID .. "&" .. " lost health from recoil!"
            p726:TakeDamage(p727, v2797, v2801)
        end
    end
    v5017.BattleFunc = BattleFunc_177
    v4663["Raging Bonfire"] = v5017
    local v5018 = {}
    BattleFunc_177 = "Fire"
    v5018.Type = BattleFunc_177
    BattleFunc_177 = "The user shoots a flame from its rattle, doing damage. Does even more damage if the target is frozen or burned."
    v5018.Desc = BattleFunc_177
    BattleFunc_177 = "Magical"
    v5018.Category = BattleFunc_177
    BattleFunc_177 = 100
    v5018.Accuracy = BattleFunc_177
    BattleFunc_177 = 10
    v5018.Uses = BattleFunc_177
    BattleFunc_177 = 50
    v5018.Power = BattleFunc_177
    BattleFunc_177 = "Single"
    v5018.Target = BattleFunc_177
    local function ModifyDamage_15(p730, p731, p732, p733)
        local v2808 = p732.Status
        v2808 = p732.Status
        v2808 = 2
        return v2808
        return 1
    end
    v5018.ModifyDamage = ModifyDamage_15
    v4663["Flame Rattle"] = v5018
    local v5019 = {}
    ModifyDamage_15 = "Fire"
    v5019.Type = ModifyDamage_15
    ModifyDamage_15 = "Burn the target's soul. If the target is cursed, do double damage."
    v5019.Desc = ModifyDamage_15
    ModifyDamage_15 = "Magical"
    v5019.Category = ModifyDamage_15
    ModifyDamage_15 = 100
    v5019.Accuracy = ModifyDamage_15
    ModifyDamage_15 = 10
    v5019.Uses = ModifyDamage_15
    ModifyDamage_15 = 70
    v5019.Power = ModifyDamage_15
    ModifyDamage_15 = "Single"
    v5019.Target = ModifyDamage_15
    local function ModifyDamage_16(p734, p735, p736, p737)
        local v2811 = p736.Status
        v2811 = 2
        return v2811
        return 1
    end
    v5019.ModifyDamage = ModifyDamage_16
    v4663.Soulfire = v5019
    local v5020 = {}
    ModifyDamage_16 = "Spirit"
    v5020.Type = ModifyDamage_16
    ModifyDamage_16 = "Casts a spell on the target that does more damage if the target has a status effect."
    v5020.Desc = ModifyDamage_16
    ModifyDamage_16 = "Magical"
    v5020.Category = ModifyDamage_16
    ModifyDamage_16 = 100
    v5020.Accuracy = ModifyDamage_16
    ModifyDamage_16 = 10
    v5020.Uses = ModifyDamage_16
    ModifyDamage_16 = 60
    v5020.Power = ModifyDamage_16
    ModifyDamage_16 = "Single"
    v5020.Target = ModifyDamage_16
    local function ModifyDamage_17(p738, p739, p740, p741)
        local v2814 = p740.Status
        if not v2814 then
            v2814 = 2
            return v2814
        end
        return 1
    end
    v5020.ModifyDamage = ModifyDamage_17
    v4663.Hex = v5020
    local v5021 = {}
    ModifyDamage_17 = "Spirit"
    v5021.Type = ModifyDamage_17
    ModifyDamage_17 = "A strike that does more damage if the target has a status effect."
    v5021.Desc = ModifyDamage_17
    ModifyDamage_17 = "Physical"
    v5021.Category = ModifyDamage_17
    ModifyDamage_17 = 95
    v5021.Accuracy = ModifyDamage_17
    ModifyDamage_17 = 10
    v5021.Uses = ModifyDamage_17
    ModifyDamage_17 = 65
    v5021.Power = ModifyDamage_17
    ModifyDamage_17 = true
    v5021.Contact = ModifyDamage_17
    ModifyDamage_17 = "Single"
    v5021.Target = ModifyDamage_17
    local function ModifyDamage_18(p742, p743, p744, p745)
        local v2817 = p744.Status
        if not v2817 then
            v2817 = 2
            return v2817
        end
        return 1
    end
    v5021.ModifyDamage = ModifyDamage_18
    v4663.Hexblade = v5021
    local v5022 = {}
    ModifyDamage_18 = "Dark"
    v5022.Type = ModifyDamage_18
    ModifyDamage_18 = "The user gathers chaotic energy and launches at the target. This move's effect is determined by the target's status effect."
    v5022.Desc = ModifyDamage_18
    ModifyDamage_18 = "Magical"
    v5022.Category = ModifyDamage_18
    ModifyDamage_18 = 100
    v5022.Accuracy = ModifyDamage_18
    ModifyDamage_18 = 5
    v5022.Uses = ModifyDamage_18
    ModifyDamage_18 = 75
    v5022.Power = ModifyDamage_18
    ModifyDamage_18 = "Single"
    v5022.Target = ModifyDamage_18
    ModifyDamage_18 = true
    v5022.Drain = ModifyDamage_18
    v5022.ModifyDamage = function(p746, p747, p748, p749, p750, p751, p752)
        local v2820 = p748.Status
        v2820 = p748.Status
        v2820 = p748.Status
        v2820 = 1.25
        return v2820
        local v2821 = p748.Status
        if p752 then
            p746:AddDialogue(p746.ActionList, "&DOODLENAME," .. p747.ID .. "&" .. "'s attack became Spark type!")
        end
        p749.Type = "Spark"
        local v2833 = p748.Status
        if not p746 then
            if p752 then
                v2833 = nil
                p748.Status = v2833
                v2823 = "&DOODLENAME,"
                v2824 = p748.ID
                v2825 = "&"
                v2826 = " is no longer raging!"
                p746:AddDialogue(p746.ActionList, v2823 .. v2824 .. v2825 .. v2826)
            end
            return 1.5
            return 1
        end
    end
    local function BattleFunc_178(p753, p754, p755, p756)
        local v2835 = p755.Status
        v2835 = math.floor
        local v2837 = v2835(p756 * 0.5)
        local v2840 = p753:GetTraitInfo(p755)
        local v2841 = v2840.Tainted
        if not v2841 then
            v2837 = -v2837
        end
        v2841 = 0
        if v2837 > v2841 then
            v2841 = p754.Stats.hp
            local v2876 = p754.currenthp
            if v2841 > v2876 then
                local v2844 = {}
                v2844.Player = p755.Owner
                v2844.User = p754
                v2844.Doodle = p755
                v2844.Action = "PlayAnim"
                v2844.Move = "Siphon Soul"
                p753:AddAction(p753.ActionList, v2844)
                p753:AddDialogue(p753.ActionList, "&DOODLENAME," .. p754.ID .. "&" .. " restored health!")
                p753:TakeDamage(p754, -v2837)
                return 
                v2837 = p755.Status
                p753 = #p753
                v2837 = v4
                v2840 = p753
                v2876 = p754
                local v2857 = {}
                v2857.spe = 1
                v2837(v2840, p754, v2876, 100, v2857)
                return 
                local v2858 = p755.Status
                v2858 = v4
                local v2863 = {}
                v2863.spe = -1
                v2863.matk = 1
                v2858(p753, p754, p754, 100, v2863)
                return 
                local v2864 = p755.Status
                v2864 = v4
                local v2869 = {}
                v2869.atk = -1
                v2869.matk = -1
                v2864(p753, p754, p755, 100, v2869)
                return 
                local v2870 = p755.Status
                v2870 = v4
                local v2875 = {}
                v2875.def = -1
                v2875.mdef = -1
                v2870(p753, p754, p755, 100, v2875)
            end
        end
    end
    v5022.BattleFunc = BattleFunc_178
    v4663["Chaotic Bolt"] = v5022
    local v5023 = {}
    BattleFunc_178 = "Dark"
    v5023.Type = BattleFunc_178
    BattleFunc_178 = "This attack does double damage if the target is asleep."
    v5023.Desc = BattleFunc_178
    BattleFunc_178 = "Magical"
    v5023.Category = BattleFunc_178
    BattleFunc_178 = 100
    v5023.Accuracy = BattleFunc_178
    BattleFunc_178 = 10
    v5023.Uses = BattleFunc_178
    BattleFunc_178 = 70
    v5023.Power = BattleFunc_178
    BattleFunc_178 = "Single"
    v5023.Target = BattleFunc_178
    local function ModifyDamage_20(p757, p758, p759, p760, p761, p762, p763)
        local v2888 = p759.Status
        v2888 = 2
        return v2888
        return 1
    end
    v5023.ModifyDamage = ModifyDamage_20
    v4663["Night Night"] = v5023
    local v5024 = {}
    ModifyDamage_20 = "Basic"
    v5024.Type = ModifyDamage_20
    ModifyDamage_20 = "The user becomes intangible. It dodges every other attack. This move always goes last."
    v5024.Desc = ModifyDamage_20
    ModifyDamage_20 = "Passive"
    v5024.Category = ModifyDamage_20
    ModifyDamage_20 = true
    v5024.Accuracy = ModifyDamage_20
    ModifyDamage_20 = 5
    v5024.Uses = ModifyDamage_20
    ModifyDamage_20 = nil
    v5024.Power = ModifyDamage_20
    ModifyDamage_20 = -6
    v5024.Priority = ModifyDamage_20
    ModifyDamage_20 = "Self"
    v5024.Target = ModifyDamage_20
    local function BattleFunc_179(p764, p765, p766)
        local v2891 = p765.Intangible
        p764:AddDialogue(p764.ActionList, "&DOODLENAME," .. p765.ID .. "&" .. " is already intangible!")
        return 
        p764:AddDialogue(p764.ActionList, "&DOODLENAME," .. p765.ID .. "&" .. " is now intangible!")
        p765.Intangible = "NoHit"
    end
    v5024.BattleFunc = BattleFunc_179
    v4663.Intangible = v5024
    local v5025 = {}
    BattleFunc_179 = "Mythic"
    v5025.Type = BattleFunc_179
    BattleFunc_179 = "The other side can't attack next turn. This move only works once per battle, and always goes last."
    v5025.Desc = BattleFunc_179
    BattleFunc_179 = "Passive"
    v5025.Category = BattleFunc_179
    BattleFunc_179 = true
    v5025.Accuracy = BattleFunc_179
    BattleFunc_179 = 5
    v5025.Uses = BattleFunc_179
    BattleFunc_179 = -10
    v5025.Priority = BattleFunc_179
    BattleFunc_179 = nil
    v5025.Power = BattleFunc_179
    BattleFunc_179 = "Self"
    v5025.Target = BattleFunc_179
    local function BattleFunc_180(p767, p768, p769)
        local v2909 = p767:GetOppositeSideFromDoodle(p769)
        local v2910 = p768.UsedWorld
        if v2910 then
            v2910 = true
            p768.Focused = v2910
            v2910 = true
            v2909.Skip = v2910
            v2910 = true
            p768.UsedWorld = v2910
            p767:AddDialogue(p767.ActionList, v2909.Name .. "'s next turn will be skipped!")
            return 
        end
        p767:AddDialogue(p767.ActionList, "But it failed!")
    end
    v5025.BattleFunc = BattleFunc_180
    v4663["The World"] = v5025
    local v5026 = {}
    BattleFunc_180 = "Mythic"
    v5026.Type = BattleFunc_180
    BattleFunc_180 = "The user changes the laws of physics, causing slower Doodles to go first for 5 turns."
    v5026.Desc = BattleFunc_180
    BattleFunc_180 = "Passive"
    v5026.Category = BattleFunc_180
    BattleFunc_180 = true
    v5026.Accuracy = BattleFunc_180
    BattleFunc_180 = 5
    v5026.Uses = BattleFunc_180
    BattleFunc_180 = -7
    v5026.Priority = BattleFunc_180
    BattleFunc_180 = nil
    v5026.Power = BattleFunc_180
    BattleFunc_180 = "Self"
    v5026.Target = BattleFunc_180
    local function BattleFunc_181(p770, p771, p772)
        if not p770.ReverseSingularity then
            p770:AddDialogue(p770.ActionList, "The Reverse Singularity has ended.")
            p770.ReverseSingularity = nil
            local v2924 = {}
            v2924.Action = "StopEffect"
            p770:AddAction(p770.ActionList, v2924)
            return 
        end
        local v2926 = p770.ReverseSingularity
        v2926 = 5
        p770.ReverseSingularity = v2926
        v2925 = "&DOODLENAME,"
        p770:AddDialogue(p770.ActionList, v2925 .. p771.ID .. "&" .. " created a Reverse Singularity! Slower Doodles now go first.")
        local v2933 = {}
        v2925 = p771.Owner
        v2933.Player = v2925
        v2933.Doodle = p771
        v2925 = "StartEffect"
        v2933.Action = v2925
        v2925 = "ReverseSingularity"
        v2933.Effect = v2925
        p770:AddAction(p770.ActionList, v2933)
    end
    v5026.BattleFunc = BattleFunc_181
    v4663["Reverse Singularity"] = v5026
    local v5027 = {}
    BattleFunc_181 = "Dark"
    v5027.Type = BattleFunc_181
    BattleFunc_181 = "The user aims at the target's neck. This move always does half of the target's current health."
    v5027.Desc = BattleFunc_181
    BattleFunc_181 = "Physical"
    v5027.Category = BattleFunc_181
    BattleFunc_181 = 100
    v5027.Accuracy = BattleFunc_181
    BattleFunc_181 = 10
    v5027.Uses = BattleFunc_181
    BattleFunc_181 = true
    v5027.Power = BattleFunc_181
    BattleFunc_181 = "Single"
    v5027.Target = BattleFunc_181
    BattleFunc_181 = true
    v5027.Contact = BattleFunc_181
    local function DuringDamageCalc_1(p773, p774, p775, p776, p777)
        local v2936 = p775.Ability
        v2936 = math.ceil
        p777 = v2936(p775.currenthp / 2)
        return p777
        p773:AddDialogue(p773.ActionList, "It had no effect!")
        return 0
    end
    v5027.DuringDamageCalc = DuringDamageCalc_1
    v4663.Choke = v5027
    local v5028 = {}
    DuringDamageCalc_1 = "Basic"
    v5028.Type = DuringDamageCalc_1
    DuringDamageCalc_1 = "The user does a non-lethal strike at the target. The target is left with at least 1 health."
    v5028.Desc = DuringDamageCalc_1
    DuringDamageCalc_1 = "Physical"
    v5028.Category = DuringDamageCalc_1
    DuringDamageCalc_1 = 100
    v5028.Accuracy = DuringDamageCalc_1
    DuringDamageCalc_1 = 40
    v5028.Uses = DuringDamageCalc_1
    DuringDamageCalc_1 = 40
    v5028.Power = DuringDamageCalc_1
    DuringDamageCalc_1 = true
    v5028.Contact = DuringDamageCalc_1
    DuringDamageCalc_1 = "Single"
    v5028.Target = DuringDamageCalc_1
    local function DuringDamageCalc_2(p778, p779, p780, p781, p782)
        local v2944 = p780.currenthp
        v2944 = 0
        if p782 > v2944 then
            v2944 = 2
            p780.currenthp = v2944
        end
        return math.min(p782, p780.currenthp - 1)
    end
    v5028.DuringDamageCalc = DuringDamageCalc_2
    v4663["Glancing Blow"] = v5028
    local v5029 = {}
    DuringDamageCalc_2 = "Poison"
    v5029.Type = DuringDamageCalc_2
    DuringDamageCalc_2 = "Stings the target with a poisonous barb. Has a high chance to poison."
    v5029.Desc = DuringDamageCalc_2
    DuringDamageCalc_2 = "Physical"
    v5029.Category = DuringDamageCalc_2
    DuringDamageCalc_2 = 100
    v5029.Accuracy = DuringDamageCalc_2
    DuringDamageCalc_2 = 30
    v5029.Uses = DuringDamageCalc_2
    DuringDamageCalc_2 = true
    v5029.Contact = DuringDamageCalc_2
    DuringDamageCalc_2 = 40
    v5029.Power = DuringDamageCalc_2
    DuringDamageCalc_2 = "Single"
    v5029.Target = DuringDamageCalc_2
    local function BattleFunc_182(p783, p784, p785)
        v3(p783, p784, p785, 30, "Poison")
    end
    v5029.BattleFunc = BattleFunc_182
    v4663["Venomous Sting"] = v5029
    local v5030 = {}
    BattleFunc_182 = "Poison"
    v5030.Type = BattleFunc_182
    BattleFunc_182 = "The user sends a deadly poison orb at the opposing team. This attack does double damage on poisoned or diseased targets."
    v5030.Desc = BattleFunc_182
    BattleFunc_182 = "Magical"
    v5030.Category = BattleFunc_182
    BattleFunc_182 = 100
    v5030.Accuracy = BattleFunc_182
    BattleFunc_182 = 10
    v5030.Uses = BattleFunc_182
    BattleFunc_182 = 55
    v5030.Power = BattleFunc_182
    BattleFunc_182 = "AllFoes"
    v5030.Target = BattleFunc_182
    local function ModifyDamage_21(p786, p787, p788, p789, p790, p791, p792)
        local v2958 = p788.Status
        v2958 = p788.Status
        v2958 = 2
        return v2958
        return 1
    end
    v5030.ModifyDamage = ModifyDamage_21
    v4663["Toxic Bomb"] = v5030
    local v5031 = {}
    ModifyDamage_21 = "Poison"
    v5031.Type = ModifyDamage_21
    ModifyDamage_21 = "The user attempts to infect the opposing team with a deadly disease. If the target is poisoned, replace the Poison with Diseased."
    v5031.Desc = ModifyDamage_21
    ModifyDamage_21 = "Magical"
    v5031.Category = ModifyDamage_21
    ModifyDamage_21 = 100
    v5031.Accuracy = ModifyDamage_21
    ModifyDamage_21 = 10
    v5031.Uses = ModifyDamage_21
    ModifyDamage_21 = 95
    v5031.Power = ModifyDamage_21
    ModifyDamage_21 = "AllFoes"
    v5031.Target = ModifyDamage_21
    local function BattleFunc_183(p793, p794, p795)
        local v2961 = p795.Status
        v2961 = nil
        p795.Status = v2961
        p793:AddDialogue(p793.ActionList, "&DOODLENAME," .. p794.ID .. "&" .. " infected " .. "&DOODLENAME," .. p795.ID .. "&" .. "!")
        v3(p793, p794, p795, 100, "Diseased")
        p793:StatusDisplay(p795, p795.Status)
    end
    v5031.BattleFunc = BattleFunc_183
    v4663.Infection = v5031
    local v5032 = {}
    BattleFunc_183 = "Ice"
    v5032.Type = BattleFunc_183
    BattleFunc_183 = "Hurls a snowball."
    v5032.Desc = BattleFunc_183
    BattleFunc_183 = "Magical"
    v5032.Category = BattleFunc_183
    BattleFunc_183 = 100
    v5032.Accuracy = BattleFunc_183
    BattleFunc_183 = 20
    v5032.Uses = BattleFunc_183
    BattleFunc_183 = 50
    v5032.Power = BattleFunc_183
    BattleFunc_183 = "Single"
    v5032.Target = BattleFunc_183
    local function BattleFunc_184(p796, p797, p798)
    end
    v5032.BattleFunc = BattleFunc_184
    v4663.Snowball = v5032
    local v5033 = {}
    BattleFunc_184 = "Food"
    v5033.Type = BattleFunc_184
    BattleFunc_184 = "Hurls food at the target. Has a chance to lower the defense of the target."
    v5033.Desc = BattleFunc_184
    BattleFunc_184 = "Physical"
    v5033.Category = BattleFunc_184
    BattleFunc_184 = 90
    v5033.Accuracy = BattleFunc_184
    BattleFunc_184 = 20
    v5033.Uses = BattleFunc_184
    BattleFunc_184 = 50
    v5033.Power = BattleFunc_184
    BattleFunc_184 = "Single"
    v5033.Target = BattleFunc_184
    local function BattleFunc_185(p799, p800, p801)
        local v2988 = {}
        v2988.def = -1
        v4(p799, p800, p801, 20, v2988)
    end
    v5033.BattleFunc = BattleFunc_185
    v4663.Heckle = v5033
    local v5034 = {}
    BattleFunc_185 = "Spirit"
    v5034.Type = BattleFunc_185
    BattleFunc_185 = "Gathers spiritual energy to attack the target. Has a chance to lower the magic defense of the target."
    v5034.Desc = BattleFunc_185
    BattleFunc_185 = "Magical"
    v5034.Category = BattleFunc_185
    BattleFunc_185 = 95
    v5034.Accuracy = BattleFunc_185
    BattleFunc_185 = 20
    v5034.Uses = BattleFunc_185
    BattleFunc_185 = 50
    v5034.Power = BattleFunc_185
    BattleFunc_185 = "Single"
    v5034.Target = BattleFunc_185
    local function BattleFunc_186(p802, p803, p804)
        local v2996 = {}
        v2996.mdef = -1
        v4(p802, p803, p804, 20, v2996)
    end
    v5034.BattleFunc = BattleFunc_186
    v4663["Spirit Orb"] = v5034
    local v5035 = {}
    BattleFunc_186 = "Basic"
    v5035.Type = BattleFunc_186
    BattleFunc_186 = "The user, not caring about defense, charges into the target. This causes the user's defense and magical defense to lower."
    v5035.Desc = BattleFunc_186
    BattleFunc_186 = "Physical"
    v5035.Category = BattleFunc_186
    BattleFunc_186 = 100
    v5035.Accuracy = BattleFunc_186
    BattleFunc_186 = 10
    v5035.Uses = BattleFunc_186
    BattleFunc_186 = 120
    v5035.Power = BattleFunc_186
    BattleFunc_186 = "Single"
    v5035.Target = BattleFunc_186
    local function BattleFunc_187(p805, p806, p807)
        local v3004 = {}
        v3004.def = -1
        v3004.mdef = -1
        v4(p805, p806, p806, 100, v3004)
    end
    v5035.BattleFunc = BattleFunc_187
    v4663["Careless Assault"] = v5035
    local v5036 = {}
    BattleFunc_187 = "Basic"
    v5036.Type = BattleFunc_187
    BattleFunc_187 = "The user attacks quickly. This move always goes first."
    v5036.Desc = BattleFunc_187
    BattleFunc_187 = 1
    v5036.Priority = BattleFunc_187
    BattleFunc_187 = "Physical"
    v5036.Category = BattleFunc_187
    BattleFunc_187 = {}
    local v5037 = {}
    v5037.AnimType = "Slash"
    v5037.Color = Color3.fromRGB(204, 204, 204)
    v5037.Size = 2
    v5037.Times = 1
    v5037.Wait = 0.05
    v5037.Pitch = 1.3
    BattleFunc_187[1] = v5037
    v5036.Order = BattleFunc_187
    BattleFunc_187 = true
    v5036.Contact = BattleFunc_187
    BattleFunc_187 = 100
    v5036.Accuracy = BattleFunc_187
    BattleFunc_187 = 15
    v5036.Uses = BattleFunc_187
    BattleFunc_187 = 50
    v5036.Power = BattleFunc_187
    BattleFunc_187 = "Single"
    v5036.Target = BattleFunc_187
    local function BattleFunc_188(p808, p809, p810)
    end
    v5036.BattleFunc = BattleFunc_188
    v4663["Quick Strike"] = v5036
    local v5045 = {}
    BattleFunc_188 = "Air"
    v5045.Type = BattleFunc_188
    BattleFunc_188 = "The user unexpectedly soars through the sky, causing damage. This move is certain to strike first.  "
    v5045.Desc = BattleFunc_188
    BattleFunc_188 = 1
    v5045.Priority = BattleFunc_188
    BattleFunc_188 = "Physical"
    v5045.Category = BattleFunc_188
    BattleFunc_188 = true
    v5045.Contact = BattleFunc_188
    BattleFunc_188 = 100
    v5045.Accuracy = BattleFunc_188
    BattleFunc_188 = 15
    v5045.Uses = BattleFunc_188
    BattleFunc_188 = 50
    v5045.Power = BattleFunc_188
    BattleFunc_188 = "Single"
    v5045.Target = BattleFunc_188
    local function BattleFunc_189(p811, p812, p813)
    end
    v5045.BattleFunc = BattleFunc_189
    v4663["Jet Strike"] = v5045
    local v5046 = {}
    BattleFunc_189 = "Water"
    v5046.Type = BattleFunc_189
    BattleFunc_189 = "The user unexpectedly rips the current, causing damage. This move is certain to strike first.  "
    v5046.Desc = BattleFunc_189
    BattleFunc_189 = 1
    v5046.Priority = BattleFunc_189
    BattleFunc_189 = "Physical"
    v5046.Category = BattleFunc_189
    BattleFunc_189 = true
    v5046.Contact = BattleFunc_189
    BattleFunc_189 = 100
    v5046.Accuracy = BattleFunc_189
    BattleFunc_189 = 15
    v5046.Uses = BattleFunc_189
    BattleFunc_189 = 40
    v5046.Power = BattleFunc_189
    BattleFunc_189 = "Single"
    v5046.Target = BattleFunc_189
    local function BattleFunc_190(p814, p815, p816)
    end
    v5046.BattleFunc = BattleFunc_190
    v4663["Rip Current"] = v5046
    local v5047 = {}
    BattleFunc_190 = "Insect"
    v5047.Type = BattleFunc_190
    BattleFunc_190 = "The user haphazardly rushes toward the target with its stinger. This move is certain to strike first."
    v5047.Desc = BattleFunc_190
    BattleFunc_190 = 1
    v5047.Priority = BattleFunc_190
    BattleFunc_190 = "Physical"
    v5047.Category = BattleFunc_190
    BattleFunc_190 = 100
    v5047.Accuracy = BattleFunc_190
    BattleFunc_190 = true
    v5047.Contact = BattleFunc_190
    BattleFunc_190 = 15
    v5047.Uses = BattleFunc_190
    BattleFunc_190 = 40
    v5047.Power = BattleFunc_190
    BattleFunc_190 = "Single"
    v5047.Target = BattleFunc_190
    local function BattleFunc_191(p817, p818, p819)
    end
    v5047.BattleFunc = BattleFunc_191
    v4663["Quick Sting"] = v5047
    local v5048 = {}
    BattleFunc_191 = "Food"
    v5048.Type = BattleFunc_191
    BattleFunc_191 = "Fast food. This move is certain to strike first. "
    v5048.Desc = BattleFunc_191
    BattleFunc_191 = 1
    v5048.Priority = BattleFunc_191
    BattleFunc_191 = "Physical"
    v5048.Category = BattleFunc_191
    BattleFunc_191 = 100
    v5048.Accuracy = BattleFunc_191
    BattleFunc_191 = 15
    v5048.Uses = BattleFunc_191
    BattleFunc_191 = 40
    v5048.Power = BattleFunc_191
    BattleFunc_191 = "Single"
    v5048.Target = BattleFunc_191
    local function BattleFunc_192(p820, p821, p822)
    end
    v5048.BattleFunc = BattleFunc_192
    v4663["Fast Food"] = v5048
    local v5049 = {}
    BattleFunc_192 = "Melee"
    v5049.Type = BattleFunc_192
    BattleFunc_192 = "The user attacks with a swift jab. This move is certain to strike first. "
    v5049.Desc = BattleFunc_192
    BattleFunc_192 = 1
    v5049.Priority = BattleFunc_192
    BattleFunc_192 = "Physical"
    v5049.Category = BattleFunc_192
    BattleFunc_192 = true
    v5049.Contact = BattleFunc_192
    BattleFunc_192 = 100
    v5049.Accuracy = BattleFunc_192
    BattleFunc_192 = 15
    v5049.Uses = BattleFunc_192
    BattleFunc_192 = 40
    v5049.Power = BattleFunc_192
    BattleFunc_192 = "Single"
    v5049.Target = BattleFunc_192
    local function BattleFunc_193(p823, p824, p825)
    end
    v5049.BattleFunc = BattleFunc_193
    v4663["Swift Hook"] = v5049
    local v5050 = {}
    BattleFunc_193 = "Light"
    v5050.Type = BattleFunc_193
    BattleFunc_193 = "The user jabs a bunch of times at lightspeed. This move is certain to strike first. "
    v5050.Desc = BattleFunc_193
    BattleFunc_193 = 2
    v5050.Priority = BattleFunc_193
    BattleFunc_193 = "Physical"
    v5050.Category = BattleFunc_193
    BattleFunc_193 = 100
    v5050.Accuracy = BattleFunc_193
    BattleFunc_193 = true
    v5050.Contact = BattleFunc_193
    BattleFunc_193 = 5
    v5050.Uses = BattleFunc_193
    BattleFunc_193 = 75
    v5050.Power = BattleFunc_193
    BattleFunc_193 = "Single"
    v5050.Target = BattleFunc_193
    local function BattleFunc_194(p826, p827, p828)
    end
    v5050.BattleFunc = BattleFunc_194
    v4663["Lightspeed Flurry"] = v5050
    local v5051 = {}
    BattleFunc_194 = "Ice"
    v5051.Type = BattleFunc_194
    BattleFunc_194 = "The user shoots chunks of ice at the target. This move is certain to strike first. "
    v5051.Desc = BattleFunc_194
    BattleFunc_194 = 1
    v5051.Priority = BattleFunc_194
    BattleFunc_194 = "Physical"
    v5051.Category = BattleFunc_194
    BattleFunc_194 = 100
    v5051.Accuracy = BattleFunc_194
    BattleFunc_194 = 15
    v5051.Uses = BattleFunc_194
    BattleFunc_194 = 40
    v5051.Power = BattleFunc_194
    BattleFunc_194 = "Single"
    v5051.Target = BattleFunc_194
    local function BattleFunc_195(p829, p830, p831)
    end
    v5051.BattleFunc = BattleFunc_195
    v4663["Quick Ice"] = v5051
    local v5052 = {}
    BattleFunc_195 = "Basic"
    v5052.Type = BattleFunc_195
    BattleFunc_195 = "The user licks the target with its tongue, having a chance to lower the target's attack."
    v5052.Desc = BattleFunc_195
    BattleFunc_195 = "Physical"
    v5052.Category = BattleFunc_195
    BattleFunc_195 = 100
    v5052.Accuracy = BattleFunc_195
    BattleFunc_195 = 30
    v5052.Uses = BattleFunc_195
    BattleFunc_195 = 30
    v5052.Power = BattleFunc_195
    BattleFunc_195 = true
    v5052.Contact = BattleFunc_195
    BattleFunc_195 = "Single"
    v5052.Target = BattleFunc_195
    local function BattleFunc_196(p832, p833, p834)
        local v3024 = {}
        v3024.atk = -1
        v4(p832, p833, p834, 20, v3024)
    end
    v5052.BattleFunc = BattleFunc_196
    v4663.Lick = v5052
    local v5053 = {}
    BattleFunc_196 = "Dark"
    v5053.Type = BattleFunc_196
    BattleFunc_196 = "An attack move that inflicts double damage if used on a foe that is switching out of battle or running away."
    v5053.Desc = BattleFunc_196
    BattleFunc_196 = "Physical"
    v5053.Category = BattleFunc_196
    BattleFunc_196 = 100
    v5053.Accuracy = BattleFunc_196
    BattleFunc_196 = 20
    v5053.Uses = BattleFunc_196
    BattleFunc_196 = 40
    v5053.Power = BattleFunc_196
    BattleFunc_196 = true
    v5053.Contact = BattleFunc_196
    BattleFunc_196 = "Single"
    v5053.Target = BattleFunc_196
    local function ModifyDamage_22(p835, p836, p837, p838)
        local v3027 = p837.Switching
        if not v3027 then
            v3027 = true
            p837.Pursuited = v3027
            v3027 = 2
            return v3027
        end
        return 1
    end
    v5053.ModifyDamage = ModifyDamage_22
    v4663.Pursuit = v5053
    local v5054 = {}
    ModifyDamage_22 = "Ice"
    v5054.Type = ModifyDamage_22
    ModifyDamage_22 = "The user cloaks itself in freezing ice and charges at the target. This hurts the user a little bit."
    v5054.Desc = ModifyDamage_22
    ModifyDamage_22 = "Physical"
    v5054.Category = ModifyDamage_22
    ModifyDamage_22 = 100
    v5054.Accuracy = ModifyDamage_22
    ModifyDamage_22 = 5
    v5054.Uses = ModifyDamage_22
    ModifyDamage_22 = 100
    v5054.Power = ModifyDamage_22
    ModifyDamage_22 = true
    v5054.Contact = ModifyDamage_22
    ModifyDamage_22 = "Single"
    v5054.Target = ModifyDamage_22
    local function BattleFunc_197(p839, p840, p841, p842)
        local v3032 = math.floor(p842 * 0.33)
        if v3032 > 0 then
            local v3036 = {}
            v3036[1] = "&DOODLENAME," .. p840.ID .. "&" .. " lost health from recoil!"
            p839:TakeDamage(p840, v3032, v3036)
        end
    end
    v5054.BattleFunc = BattleFunc_197
    v4663["Arctic Blitz"] = v5054
    local v5055 = {}
    BattleFunc_197 = "Melee"
    v5055.Type = BattleFunc_197
    BattleFunc_197 = "A high-powered move that fails if it isn't used by Kowosu."
    v5055.Desc = BattleFunc_197
    BattleFunc_197 = "Physical"
    v5055.Category = BattleFunc_197
    BattleFunc_197 = true
    v5055.Accuracy = BattleFunc_197
    BattleFunc_197 = 5
    v5055.Uses = BattleFunc_197
    BattleFunc_197 = 150
    v5055.Power = BattleFunc_197
    BattleFunc_197 = true
    v5055.Contact = BattleFunc_197
    BattleFunc_197 = "Single"
    v5055.Target = BattleFunc_197
    local function ModifyDamage_23(p843, p844, p845, p846)
        local v3045 = v2.GetRealName(p844)
        p843:AddDialogue(p843.ActionList, "But it failed!")
        return 0
        return 1
    end
    v5055.ModifyDamage = ModifyDamage_23
    v4663["Life-Ender"] = v5055
    local v5056 = {}
    ModifyDamage_23 = "Melee"
    v5056.Type = ModifyDamage_23
    ModifyDamage_23 = "The user foregoes defense to attack the opponent. This move lowers the defenses of the user."
    v5056.Desc = ModifyDamage_23
    ModifyDamage_23 = "Physical"
    v5056.Category = ModifyDamage_23
    ModifyDamage_23 = 100
    v5056.Accuracy = ModifyDamage_23
    ModifyDamage_23 = 5
    v5056.Uses = ModifyDamage_23
    ModifyDamage_23 = 100
    v5056.Power = ModifyDamage_23
    ModifyDamage_23 = true
    v5056.Contact = ModifyDamage_23
    ModifyDamage_23 = "Single"
    v5056.Target = ModifyDamage_23
    local function BattleFunc_198(p847, p848, p849, p850)
        local v3057 = {}
        v3057.def = -1
        v3057.mdef = -1
        v4(p847, p848, p848, 100, v3057)
    end
    v5056.BattleFunc = BattleFunc_198
    v4663["Unguarded Strike"] = v5056
    local v5057 = {}
    BattleFunc_198 = "Melee"
    v5057.Type = BattleFunc_198
    BattleFunc_198 = "The user charges head-first into the target. It hurts the user a little bit."
    v5057.Desc = BattleFunc_198
    BattleFunc_198 = "Physical"
    v5057.Category = BattleFunc_198
    BattleFunc_198 = 100
    v5057.Accuracy = BattleFunc_198
    BattleFunc_198 = 15
    v5057.Uses = BattleFunc_198
    BattleFunc_198 = 80
    v5057.Power = BattleFunc_198
    BattleFunc_198 = true
    v5057.Contact = BattleFunc_198
    BattleFunc_198 = "Single"
    v5057.Target = BattleFunc_198
    local function BattleFunc_199(p851, p852, p853, p854)
        local v3063 = math.floor(p854 * 0.33)
        if v3063 > 0 then
            local v3067 = {}
            v3067[1] = "&DOODLENAME," .. p852.ID .. "&" .. " lost health from recoil!"
            p851:TakeDamage(p852, v3063, v3067)
        end
    end
    v5057.BattleFunc = BattleFunc_199
    v4663["Reckless Charge"] = v5057
    local v5058 = {}
    BattleFunc_199 = "Metal"
    v5058.Type = BattleFunc_199
    BattleFunc_199 = "The user optimizes themself using binary, and then blitzes the target. It hurts the user a little bit."
    v5058.Desc = BattleFunc_199
    BattleFunc_199 = "Physical"
    v5058.Category = BattleFunc_199
    BattleFunc_199 = 100
    v5058.Accuracy = BattleFunc_199
    BattleFunc_199 = 5
    v5058.Uses = BattleFunc_199
    BattleFunc_199 = 120
    v5058.Power = BattleFunc_199
    BattleFunc_199 = true
    v5058.Contact = BattleFunc_199
    BattleFunc_199 = "Single"
    v5058.Target = BattleFunc_199
    local function BattleFunc_200(p855, p856, p857, p858)
        local v3076 = math.floor(p858 * 0.33)
        if v3076 > 0 then
            local v3080 = {}
            v3080[1] = "&DOODLENAME," .. p856.ID .. "&" .. " lost health from recoil!"
            p855:TakeDamage(p856, v3076, v3080)
        end
    end
    v5058.BattleFunc = BattleFunc_200
    v4663["Binary Blitz"] = v5058
    local v5059 = {}
    BattleFunc_200 = "Fire"
    v5059.Type = BattleFunc_200
    BattleFunc_200 = "The user turns its body into a literal firework. It hurts the user for the same amount of damage that it does."
    v5059.Desc = BattleFunc_200
    BattleFunc_200 = "Physical"
    v5059.Category = BattleFunc_200
    BattleFunc_200 = 100
    v5059.Accuracy = BattleFunc_200
    BattleFunc_200 = 15
    v5059.Uses = BattleFunc_200
    BattleFunc_200 = 85
    v5059.Power = BattleFunc_200
    BattleFunc_200 = true
    v5059.Recoil = BattleFunc_200
    BattleFunc_200 = true
    v5059.Contact = BattleFunc_200
    BattleFunc_200 = "Single"
    v5059.Target = BattleFunc_200
    local function BattleFunc_201(p859, p860, p861, p862)
        local v3089 = math.floor(p862)
        if v3089 > 0 then
            local v3093 = {}
            v3093[1] = "&DOODLENAME," .. p860.ID .. "&" .. " lost health from recoil!"
            p859:TakeDamage(p860, v3089, v3093)
        end
    end
    v5059.BattleFunc = BattleFunc_201
    v4663.Firecracker = v5059
    local v5060 = {}
    BattleFunc_201 = "Dark"
    v5060.Type = BattleFunc_201
    BattleFunc_201 = "The target is provoked into only using attack moves for three turns."
    v5060.Desc = BattleFunc_201
    BattleFunc_201 = "Passive"
    v5060.Category = BattleFunc_201
    BattleFunc_201 = 100
    v5060.Accuracy = BattleFunc_201
    BattleFunc_201 = 20
    v5060.Uses = BattleFunc_201
    BattleFunc_201 = nil
    v5060.Power = BattleFunc_201
    BattleFunc_201 = {}
    local v5061 = {}
    local v5062 = {}
    v5062.AnimType = "RageTiny"
    v5061[1] = v5062
    BattleFunc_201.Order = v5061
    v5060.MoveAnim = BattleFunc_201
    BattleFunc_201 = "Single"
    v5060.Target = BattleFunc_201
    local function BattleFunc_202(p863, p864, p865)
        local v3103 = v2.GetTrait(p865)
        local v3104 = p865.Taunt
        local v3106 = "&DOODLENAME,"
        local v3107 = p865.ID
        local v3108 = "&"
        local v3109 = " is already taunted!"
        p863:AddDialogue(p863.ActionList, v3106 .. v3107 .. v3108 .. v3109)
        return 
        if not v3103 then
            if not v3103.ImmuneTaunt then
                v3106 = "&DOODLENAME,"
                v3107 = p865.ID
                v3108 = "&"
                v3109 = " doesn't care about the taunt!"
                p863:AddDialogue(p863.ActionList, v3106 .. v3107 .. v3108 .. v3109)
                return 
            end
        end
        p865.Taunt = 3
        local v3116 = {}
        v3116.Player = p865.Owner
        v3116.User = p864
        v3116.Doodle = p865
        v3116.Action = "PlayAnim"
        v3116.Move = "Taunt"
        p863:AddAction(p863.ActionList, v3116)
        p863:AddDialogue(p863.ActionList, "&DOODLENAME," .. p865.ID .. "&" .. " is provoked by the taunt!")
        local v3122, v3123, v3124 = pairs(p865.Moves)
        for v3127, v3106 in v3122, v3123, v3124 do
            v3107 = v3106.Name
            v3109 = p1.Moves
            v3108 = v3109[v3107]
            v3109 = v3108.Category
            v3109 = table.insert
            v3109(p865.DisabledMoves, v3107)
        end
        v3122 = p865.UsingMove
        if v3122 then
            v3122 = {}
        end
        p865.UsingMove = v3122
        v3122 = p865.UsingMove
        v3123 = function(p866, p867, p868, p869)
            local v3128 = p867.Taunt
            if not v3128 then
                v3128 = p867.Taunt
                local v3129 = 0
                if v3128 > v3129 then
                    v3128 = {}
                    p867.DisabledMoves = v3128
                    v3128 = pairs
                    v3129 = p867.Moves
                    local v3130, v3131, v3132 = v3128(v3129)
                    for v3139, v3134 in v3130, v3131, v3132 do
                        local v3133 = v3134.Name
                        local v3149 = p1.Moves[v3133].Category
                        table.insert(p867.DisabledMoves, v3133)
                    end
                    v3130 = table.find
                    v3131 = p867.DisabledMoves
                    v3132 = p869
                    if not v3130(v3131, v3132) then
                        v3134 = "&DOODLENAME,"
                        v3133 = p867.ID
                        v3137 = "&"
                        v3139 = v3134 .. v3133 .. v3137 .. " couldn't use " .. p869 .. " because of the taunt!"
                        p866:AddDialogue(p866.ActionList, v3139)
                        return "Fail"
                    end
                    return "Success"
                end
            end
            p867.UsingMove.Taunt = nil
            return "Success"
        end
        v3122.Taunt = v3123
        v3122 = p865.EndFuncs
        if v3122 then
            v3122 = {}
        end
        p865.EndFuncs = v3122
        v3122 = p865.EndFuncs
        v3123 = function(p870, p871, p872)
            local v3153 = p871.Taunt
            if not v3153 then
                v3153 = p871.currenthp
                local v3154 = 0
                if v3153 > v3154 then
                    v3154 = p871.Taunt
                    v3153 = v3154 - 1
                    p871.Taunt = v3153
                    v3153 = p871.Taunt
                    v3154 = 0
                    if v3154 >= v3153 then
                        p870:AddDialogue(p870.ActionList, "&DOODLENAME," .. p871.ID .. "&" .. " is no longer provoked by the taunt!")
                        v3154 = nil
                        p871.EndFuncs.Taunt = v3154
                        v3154 = nil
                        p871.UsingMove.Taunt = v3154
                        p871.Taunt = nil
                        p871.DisabledMoves = {}
                        return 
                        v3154 = nil
                        p871.EndFuncs.Taunt = v3154
                    end
                    return 
                end
            end
        end
        v3122.Taunt = v3123
    end
    v5060.BattleFunc = BattleFunc_202
    v4663.Taunt = v5060
    local v5063 = {}
    BattleFunc_202 = "Dark"
    v5063.Type = BattleFunc_202
    BattleFunc_202 = "The user convinces the target to mutiny its tamer with it. If it hits, both the user and the target become enraged (curing any other status effects), and the user greatly gains speed."
    v5063.Desc = BattleFunc_202
    BattleFunc_202 = "Passive"
    v5063.Category = BattleFunc_202
    BattleFunc_202 = 75
    v5063.Accuracy = BattleFunc_202
    BattleFunc_202 = 10
    v5063.Uses = BattleFunc_202
    BattleFunc_202 = nil
    v5063.Power = BattleFunc_202
    BattleFunc_202 = "Single"
    v5063.Target = BattleFunc_202
    BattleFunc_202 = "Rage"
    v5063.Status = BattleFunc_202
    local function BattleFunc_203(p873, p874, p875)
        local v3176 = p874.Status
        p873:AddDialogue(p873.ActionList, "But it failed!")
        return 
        p874.Status = nil
        p875.Status = nil
        v3(p873, p874, p875, 100, "Rage", true)
        v3(p873, p874, p874, 100, "Rage", true)
        local v3198 = {}
        v3198.spe = 2
        v4(p873, p874, p874, 100, v3198)
    end
    v5063.BattleFunc = BattleFunc_203
    v4663.Mutiny = v5063
    local v5064 = {}
    BattleFunc_203 = "Spirit"
    v5064.Type = BattleFunc_203
    BattleFunc_203 = "The user inflicts a curse on the target."
    v5064.Desc = BattleFunc_203
    BattleFunc_203 = "Passive"
    v5064.Category = BattleFunc_203
    BattleFunc_203 = 75
    v5064.Accuracy = BattleFunc_203
    BattleFunc_203 = 15
    v5064.Uses = BattleFunc_203
    BattleFunc_203 = nil
    v5064.Power = BattleFunc_203
    BattleFunc_203 = "Cursed"
    v5064.Status = BattleFunc_203
    BattleFunc_203 = "Single"
    v5064.Target = BattleFunc_203
    local function BattleFunc_204(p876, p877, p878)
        v3(p876, p877, p878, 100, "Cursed", true)
    end
    v5064.BattleFunc = BattleFunc_204
    v4663.Curse = v5064
    local v5065 = {}
    BattleFunc_204 = "Spark"
    v5065.Type = BattleFunc_204
    BattleFunc_204 = "The user shoots a low amperage bolt at the target. If it hits the target, it paralyzes them."
    v5065.Desc = BattleFunc_204
    BattleFunc_204 = "Passive"
    v5065.Category = BattleFunc_204
    BattleFunc_204 = 80
    v5065.Accuracy = BattleFunc_204
    BattleFunc_204 = 15
    v5065.Uses = BattleFunc_204
    BattleFunc_204 = nil
    v5065.Power = BattleFunc_204
    BattleFunc_204 = "Single"
    v5065.Target = BattleFunc_204
    BattleFunc_204 = "Paralysis"
    v5065.Status = BattleFunc_204
    local function BattleFunc_205(p879, p880, p881)
        if not v2.IsType(p881, "Earth") then
            p879:AddDialogue(p879.ActionList, "It had no effect!")
            return 
        end
        local v3217 = p881.Ability
        v3217 = v3
        v3217(p879, p880, p881, 100, "Paralysis", true)
    end
    v5065.BattleFunc = BattleFunc_205
    v4663.Taser = v5065
    local v5066 = {}
    BattleFunc_205 = "Spirit"
    v5066.Type = BattleFunc_205
    BattleFunc_205 = "Inflicts a random status effect on the target."
    v5066.Desc = BattleFunc_205
    BattleFunc_205 = "Passive"
    v5066.Category = BattleFunc_205
    BattleFunc_205 = 85
    v5066.Accuracy = BattleFunc_205
    BattleFunc_205 = 5
    v5066.Uses = BattleFunc_205
    BattleFunc_205 = nil
    v5066.Power = BattleFunc_205
    BattleFunc_205 = "Single"
    v5066.Target = BattleFunc_205
    BattleFunc_205 = "All"
    v5066.Status = BattleFunc_205
    local function BattleFunc_206(p882, p883, p884)
        local v3226 = {}
        v3226[1] = "Marked"
        v3226[2] = "Cursed"
        v3226[3] = "Burn"
        v3226[4] = "Poison"
        v3226[5] = "Paralysis"
        v3226[6] = "Vulnerable"
        v3(p882, p883, p884, 100, v3226[math.random(#v3226)], true)
    end
    v5066.BattleFunc = BattleFunc_206
    v4663.Murmur = v5066
    local v5067 = {}
    BattleFunc_206 = "Basic"
    v5067.Type = BattleFunc_206
    BattleFunc_206 = "The user insults the target, causing them to rage."
    v5067.Desc = BattleFunc_206
    BattleFunc_206 = "Passive"
    v5067.Category = BattleFunc_206
    BattleFunc_206 = 100
    v5067.Accuracy = BattleFunc_206
    BattleFunc_206 = true
    v5067.Sound = BattleFunc_206
    BattleFunc_206 = 15
    v5067.Uses = BattleFunc_206
    BattleFunc_206 = nil
    v5067.Power = BattleFunc_206
    BattleFunc_206 = "Single"
    v5067.Target = BattleFunc_206
    BattleFunc_206 = "Rage"
    v5067.Status = BattleFunc_206
    local function BattleFunc_207(p885, p886, p887)
        v3(p885, p886, p887, 100, "Rage", true)
    end
    v5067.BattleFunc = BattleFunc_207
    v4663.Insult = v5067
    local v5068 = {}
    BattleFunc_207 = "Mind"
    v5068.Type = BattleFunc_207
    BattleFunc_207 = "The user agitates the target, causing rage."
    v5068.Desc = BattleFunc_207
    BattleFunc_207 = "Passive"
    v5068.Category = BattleFunc_207
    BattleFunc_207 = 80
    v5068.Accuracy = BattleFunc_207
    BattleFunc_207 = 15
    v5068.Uses = BattleFunc_207
    BattleFunc_207 = nil
    v5068.Power = BattleFunc_207
    BattleFunc_207 = "Single"
    v5068.Target = BattleFunc_207
    BattleFunc_207 = "Rage"
    v5068.Status = BattleFunc_207
    local function BattleFunc_208(p888, p889, p890)
        v3(p888, p889, p890, 100, "Rage", true)
        local v3260 = p890.Status
        p888:AddDialogue(p888.ActionList, "But it failed!")
    end
    v5068.BattleFunc = BattleFunc_208
    v4663.Agitate = v5068
    local v5069 = {}
    BattleFunc_208 = "Plant"
    v5069.Type = BattleFunc_208
    BattleFunc_208 = "The user scatters spores that induces sleep."
    v5069.Desc = BattleFunc_208
    BattleFunc_208 = "Passive"
    v5069.Category = BattleFunc_208
    BattleFunc_208 = 75
    v5069.Accuracy = BattleFunc_208
    BattleFunc_208 = 15
    v5069.Uses = BattleFunc_208
    BattleFunc_208 = nil
    v5069.Power = BattleFunc_208
    BattleFunc_208 = "Single"
    v5069.Target = BattleFunc_208
    BattleFunc_208 = "Sleep"
    v5069.Status = BattleFunc_208
    local function BattleFunc_209(p891, p892, p893)
        local v3264 = p893.Ability
        return 
        v3264 = v2.IsType
        if not v3264(p893, "Plant") then
            p891:AddDialogue(p891.ActionList, "It had no effect!")
            return 
        end
        v3(p891, p892, p893, 100, "Sleep", true)
    end
    v5069.BattleFunc = BattleFunc_209
    v4663["Sleep Spores"] = v5069
    local v5070 = {}
    BattleFunc_209 = "Plant"
    v5070.Type = BattleFunc_209
    BattleFunc_209 = "The user scatters spores that paralyzes the target."
    v5070.Desc = BattleFunc_209
    BattleFunc_209 = "Passive"
    v5070.Category = BattleFunc_209
    BattleFunc_209 = 75
    v5070.Accuracy = BattleFunc_209
    BattleFunc_209 = 15
    v5070.Uses = BattleFunc_209
    BattleFunc_209 = nil
    v5070.Power = BattleFunc_209
    BattleFunc_209 = "Single"
    v5070.Target = BattleFunc_209
    BattleFunc_209 = "Paralysis"
    v5070.Status = BattleFunc_209
    local function BattleFunc_210(p894, p895, p896)
        local v3279 = p896.Ability
        return 
        v3279 = v2.IsType
        if not v3279(p896, "Plant") then
            p894:AddDialogue(p894.ActionList, "It had no effect!")
            return 
        end
        v3(p894, p895, p896, 100, "Paralysis", true)
    end
    v5070.BattleFunc = BattleFunc_210
    v4663["Paralysis Spores"] = v5070
    local v5071 = {}
    BattleFunc_210 = "Plant"
    v5071.Type = BattleFunc_210
    BattleFunc_210 = "The user scatters spores that causes the target to rage."
    v5071.Desc = BattleFunc_210
    BattleFunc_210 = "Passive"
    v5071.Category = BattleFunc_210
    BattleFunc_210 = 70
    v5071.Accuracy = BattleFunc_210
    BattleFunc_210 = 15
    v5071.Uses = BattleFunc_210
    BattleFunc_210 = nil
    v5071.Power = BattleFunc_210
    BattleFunc_210 = "Single"
    v5071.Target = BattleFunc_210
    BattleFunc_210 = "Rage"
    v5071.Status = BattleFunc_210
    local function BattleFunc_211(p897, p898, p899)
        local v3294 = p899.Ability
        return 
        v3294 = v2.IsType
        if not v3294(p899, "Plant") then
            p897:AddDialogue(p897.ActionList, "It had no effect!")
            return 
        end
        v3(p897, p898, p899, 100, "Rage", true)
    end
    v5071.BattleFunc = BattleFunc_211
    v4663["Rage Spores"] = v5071
    local v5072 = {}
    BattleFunc_211 = "Poison"
    v5072.Type = BattleFunc_211
    BattleFunc_211 = "The user scatters spores that causes poison."
    v5072.Desc = BattleFunc_211
    BattleFunc_211 = "Passive"
    v5072.Category = BattleFunc_211
    BattleFunc_211 = 75
    v5072.Accuracy = BattleFunc_211
    BattleFunc_211 = 35
    v5072.Uses = BattleFunc_211
    BattleFunc_211 = nil
    v5072.Power = BattleFunc_211
    BattleFunc_211 = "Single"
    v5072.Target = BattleFunc_211
    BattleFunc_211 = "Poison"
    v5072.Status = BattleFunc_211
    local function BattleFunc_212(p900, p901, p902)
        if not v2.IsType(p902, "Plant") then
            p900:AddDialogue(p900.ActionList, "It had no effect!")
            return 
        end
        v3(p900, p901, p902, 100, "Poison", true)
    end
    v5072.BattleFunc = BattleFunc_212
    v4663["Poison Spores"] = v5072
    local v5073 = {}
    BattleFunc_212 = "Basic"
    v5073.Type = BattleFunc_212
    BattleFunc_212 = "The user whistles a calming melody, putting the target to sleep if it hits."
    v5073.Desc = BattleFunc_212
    BattleFunc_212 = "Passive"
    v5073.Category = BattleFunc_212
    BattleFunc_212 = 60
    v5073.Accuracy = BattleFunc_212
    BattleFunc_212 = true
    v5073.Sound = BattleFunc_212
    BattleFunc_212 = 15
    v5073.Uses = BattleFunc_212
    BattleFunc_212 = nil
    v5073.Power = BattleFunc_212
    BattleFunc_212 = "Single"
    v5073.Target = BattleFunc_212
    BattleFunc_212 = "Sleep"
    v5073.Status = BattleFunc_212
    local function BattleFunc_213(p903, p904, p905)
        v3(p903, p904, p905, 100, "Sleep", true)
    end
    v5073.BattleFunc = BattleFunc_213
    v4663["Calming Melody"] = v5073
    local v5074 = {}
    BattleFunc_213 = "Mind"
    v5074.Type = BattleFunc_213
    BattleFunc_213 = "The user attempts to sing a harmonic song to put the target to sleep."
    v5074.Desc = BattleFunc_213
    BattleFunc_213 = "Passive"
    v5074.Category = BattleFunc_213
    BattleFunc_213 = 65
    v5074.Accuracy = BattleFunc_213
    BattleFunc_213 = true
    v5074.Sound = BattleFunc_213
    BattleFunc_213 = 10
    v5074.Uses = BattleFunc_213
    BattleFunc_213 = nil
    v5074.Power = BattleFunc_213
    BattleFunc_213 = "Single"
    v5074.Target = BattleFunc_213
    BattleFunc_213 = "Sleep"
    v5074.Status = BattleFunc_213
    local function BattleFunc_214(p906, p907, p908)
        v3(p906, p907, p908, 100, "Sleep", true)
    end
    v5074.BattleFunc = BattleFunc_214
    v4663.Harmony = v5074
    local v5075 = {}
    BattleFunc_214 = "Mythic"
    v5075.Type = BattleFunc_214
    BattleFunc_214 = "This attack does more damage the longer the user is in battle. After attacking, all stat changes are reset."
    v5075.Desc = BattleFunc_214
    BattleFunc_214 = "Physical"
    v5075.Category = BattleFunc_214
    BattleFunc_214 = 100
    v5075.Accuracy = BattleFunc_214
    BattleFunc_214 = 5
    v5075.Uses = BattleFunc_214
    BattleFunc_214 = 30
    v5075.Power = BattleFunc_214
    BattleFunc_214 = "Single"
    v5075.Target = BattleFunc_214
    v5075.ModifyDamage = function(p909, p910, p911, p912, p913)
        return math.max(1, 1 + p910.TurnsOut / 2)
    end
    local function BattleFunc_215(p914, p915, p916)
        local v3348 = {}
        v3348.atk = 0
        v3348.def = 0
        v3348.matk = 0
        v3348.mdef = 0
        v3348.spe = 0
        v3348.acc = 0
        v3348.eva = 0
        p915.Boosts = v3348
        local v3358 = {}
        v3358.atk = 0
        v3358.def = 0
        v3358.matk = 0
        v3358.mdef = 0
        v3358.spe = 0
        v3358.acc = 0
        v3358.eva = 0
        p916.Boosts = v3358
        p914:AddDialogue(p914.ActionList, "All Doodle stat changes have been reset!")
    end
    v5075.BattleFunc = BattleFunc_215
    v4663["Playtime's Over"] = v5075
    local v5076 = {}
    BattleFunc_215 = "Basic"
    v5076.Type = BattleFunc_215
    BattleFunc_215 = "The user focuses, enabling it to hit its next move regardless of the target's evasiveness. Also enables Basic and Melee-type moves to hit Spirit types."
    v5076.Desc = BattleFunc_215
    BattleFunc_215 = "Passive"
    v5076.Category = BattleFunc_215
    BattleFunc_215 = 100
    v5076.Accuracy = BattleFunc_215
    BattleFunc_215 = 15
    v5076.Uses = BattleFunc_215
    BattleFunc_215 = nil
    v5076.Power = BattleFunc_215
    BattleFunc_215 = "Self"
    v5076.Target = BattleFunc_215
    local function BattleFunc_216(p917, p918, p919)
        p917:AddDialogue(p917.ActionList, "&DOODLENAME," .. p918.ID .. "&" .. " is focusing for its next attack!")
        p919.Focused = true
    end
    v5076.BattleFunc = BattleFunc_216
    v4663.Focus = v5076
    local v5077 = {}
    BattleFunc_216 = "Plant"
    v5077.Type = BattleFunc_216
    BattleFunc_216 = "The user uses a leaf as a weapon, sets it on fire, and then attacks. Has a 30% chance to burn."
    v5077.Desc = BattleFunc_216
    BattleFunc_216 = {}
    local v5078 = {}
    local v5079 = {}
    v5079.AnimType = "Slash"
    v5079.Color = Color3.fromRGB(106, 171, 110)
    v5079.Size = 2
    v5079.Times = 1
    v5079.Wait = 0.05
    v5079.Pitch = 1.3
    v5078[1] = v5079
    BattleFunc_216.Order = v5078
    v5077.MoveAnim = BattleFunc_216
    BattleFunc_216 = "Physical"
    v5077.Category = BattleFunc_216
    BattleFunc_216 = 100
    v5077.Accuracy = BattleFunc_216
    BattleFunc_216 = true
    v5077.Slash = BattleFunc_216
    BattleFunc_216 = true
    v5077.Contact = BattleFunc_216
    BattleFunc_216 = 10
    v5077.Uses = BattleFunc_216
    BattleFunc_216 = 80
    v5077.Power = BattleFunc_216
    BattleFunc_216 = "Single"
    v5077.Target = BattleFunc_216
    local function BattleFunc_217(p920, p921, p922)
        v3(p920, p921, p922, 20, "Burn")
    end
    v5077.BattleFunc = BattleFunc_217
    v4663["Slash and Burn"] = v5077
    local v5086 = {}
    BattleFunc_217 = "Plant"
    v5086.Type = BattleFunc_217
    BattleFunc_217 = "The user uses a leaf as a weapon and attacks by slicing. High chance to crit."
    v5086.Desc = BattleFunc_217
    BattleFunc_217 = {}
    local v5087 = {}
    local v5088 = {}
    v5088.AnimType = "Slash"
    v5088.Color = Color3.fromRGB(106, 171, 110)
    v5088.Size = 2
    v5088.Times = 1
    v5088.Wait = 0.05
    v5088.Pitch = 1.3
    v5087[1] = v5088
    BattleFunc_217.Order = v5087
    v5086.MoveAnim = BattleFunc_217
    BattleFunc_217 = 6
    v5086.CritRatio = BattleFunc_217
    BattleFunc_217 = "Physical"
    v5086.Category = BattleFunc_217
    BattleFunc_217 = 100
    v5086.Accuracy = BattleFunc_217
    BattleFunc_217 = true
    v5086.Slash = BattleFunc_217
    BattleFunc_217 = true
    v5086.Contact = BattleFunc_217
    BattleFunc_217 = 10
    v5086.Uses = BattleFunc_217
    BattleFunc_217 = 90
    v5086.Power = BattleFunc_217
    BattleFunc_217 = "Single"
    v5086.Target = BattleFunc_217
    v4663["Leaf Blade"] = v5086
    local v5095 = {}
    BattleFunc_217 = "Beast"
    v5095.Type = BattleFunc_217
    BattleFunc_217 = "The user attacks the target with no regards to etiquette. This may lower the defense of the target."
    v5095.Desc = BattleFunc_217
    BattleFunc_217 = 6
    v5095.CritRatio = BattleFunc_217
    BattleFunc_217 = "Physical"
    v5095.Category = BattleFunc_217
    BattleFunc_217 = 100
    v5095.Accuracy = BattleFunc_217
    BattleFunc_217 = 10
    v5095.Uses = BattleFunc_217
    BattleFunc_217 = 80
    v5095.Power = BattleFunc_217
    BattleFunc_217 = "Single"
    v5095.Target = BattleFunc_217
    local function BattleFunc_218(p923, p924, p925)
        local v3396 = {}
        v3396.def = -1
        v4(p923, p924, p925, 20, v3396)
    end
    v5095.BattleFunc = BattleFunc_218
    v4663["Savage Blow"] = v5095
    local v5096 = {}
    BattleFunc_218 = "Crystal"
    v5096.Type = BattleFunc_218
    BattleFunc_218 = "The user gets a sharp crystal and cuts the target. High chance to crit."
    v5096.Desc = BattleFunc_218
    BattleFunc_218 = {}
    local v5097 = {}
    local v5098 = {}
    v5098.AnimType = "Slash"
    v5098.Color = Color3.fromRGB(90, 194, 200)
    v5098.Size = 2
    v5098.Times = 1
    v5098.Wait = 0.05
    v5098.Pitch = 1.3
    v5097[1] = v5098
    BattleFunc_218.Order = v5097
    v5096.MoveAnim = BattleFunc_218
    BattleFunc_218 = 6
    v5096.CritRatio = BattleFunc_218
    BattleFunc_218 = "Physical"
    v5096.Category = BattleFunc_218
    BattleFunc_218 = true
    v5096.Contact = BattleFunc_218
    BattleFunc_218 = 90
    v5096.Accuracy = BattleFunc_218
    BattleFunc_218 = 10
    v5096.Uses = BattleFunc_218
    BattleFunc_218 = 80
    v5096.Power = BattleFunc_218
    BattleFunc_218 = "Single"
    v5096.Target = BattleFunc_218
    v4663["Crystal Cut"] = v5096
    local v5105 = {}
    BattleFunc_218 = "Ice"
    v5105.Type = BattleFunc_218
    BattleFunc_218 = "Grips the foe with a chilling freeze and has a chance of lowering the target's defense."
    v5105.Desc = BattleFunc_218
    BattleFunc_218 = "Physical"
    v5105.Category = BattleFunc_218
    BattleFunc_218 = 100
    v5105.Accuracy = BattleFunc_218
    BattleFunc_218 = 10
    v5105.Uses = BattleFunc_218
    BattleFunc_218 = {}
    local v5106 = {}
    local v5107 = {}
    v5107.AnimType = "Slash"
    v5107.Color = Color3.fromRGB(90, 194, 200)
    v5107.Size = 2
    v5107.Times = 1
    v5107.Wait = 0.05
    v5107.Pitch = 1.3
    v5106[1] = v5107
    BattleFunc_218.Order = v5106
    v5105.MoveAnim = BattleFunc_218
    BattleFunc_218 = 55
    v5105.Power = BattleFunc_218
    BattleFunc_218 = "Single"
    v5105.Target = BattleFunc_218
    local function BattleFunc_219(p926, p927, p928)
        local v3412 = {}
        v3412.def = -1
        v4(p926, p927, p928, 10, v3412)
    end
    v5105.BattleFunc = BattleFunc_219
    v4663.Frostgrip = v5105
    local v5114 = {}
    BattleFunc_219 = "Ice"
    v5114.Type = BattleFunc_219
    BattleFunc_219 = "A freezing slash that cuts through the foe and has a high critical hit ratio.  "
    v5114.Desc = BattleFunc_219
    BattleFunc_219 = "Physical"
    v5114.Category = BattleFunc_219
    BattleFunc_219 = 100
    v5114.Accuracy = BattleFunc_219
    BattleFunc_219 = 10
    v5114.Uses = BattleFunc_219
    BattleFunc_219 = true
    v5114.Contact = BattleFunc_219
    BattleFunc_219 = true
    v5114.Slash = BattleFunc_219
    BattleFunc_219 = {}
    local v5115 = {}
    local v5116 = {}
    v5116.AnimType = "Slash"
    v5116.Color = Color3.fromRGB(90, 194, 200)
    v5116.Size = 2
    v5116.Times = 1
    v5116.Wait = 0.05
    v5116.Pitch = 1.3
    v5115[1] = v5116
    BattleFunc_219.Order = v5115
    v5114.MoveAnim = BattleFunc_219
    BattleFunc_219 = 6
    v5114.CritRatio = BattleFunc_219
    BattleFunc_219 = 70
    v5114.Power = BattleFunc_219
    BattleFunc_219 = "Single"
    v5114.Target = BattleFunc_219
    local function BattleFunc_220(p929, p930, p931)
        v3(p929, p930, p931, 10, "Frozen")
    end
    v5114.BattleFunc = BattleFunc_220
    v4663["Cold Snap"] = v5114
    local v5123 = {}
    BattleFunc_220 = "Ice"
    v5123.Type = BattleFunc_220
    BattleFunc_220 = "The user attacks the target with a blast of cold air. Has a chance to freeze. "
    v5123.Desc = BattleFunc_220
    BattleFunc_220 = "Magical"
    v5123.Category = BattleFunc_220
    BattleFunc_220 = 100
    v5123.Accuracy = BattleFunc_220
    BattleFunc_220 = 10
    v5123.Uses = BattleFunc_220
    BattleFunc_220 = 90
    v5123.Power = BattleFunc_220
    BattleFunc_220 = "Single"
    v5123.Target = BattleFunc_220
    local function BattleFunc_221(p932, p933, p934)
        v3(p932, p933, p934, 10, "Frozen")
    end
    v5123.BattleFunc = BattleFunc_221
    v4663["Cone of Cold"] = v5123
    local v5124 = {}
    BattleFunc_221 = "Basic"
    v5124.Type = BattleFunc_221
    BattleFunc_221 = "A basic slash attack."
    v5124.Desc = BattleFunc_221
    BattleFunc_221 = "Physical"
    v5124.Category = BattleFunc_221
    BattleFunc_221 = 90
    v5124.Accuracy = BattleFunc_221
    BattleFunc_221 = {}
    local v5125 = {}
    local v5126 = {}
    v5126.AnimType = "Slash"
    v5126.Color = Color3.fromRGB(255, 255, 255)
    v5126.Size = 2
    v5126.Times = 1
    v5126.Wait = 0.05
    v5126.Pitch = 1.3
    v5125[1] = v5126
    BattleFunc_221.Order = v5125
    v5124.MoveAnim = BattleFunc_221
    BattleFunc_221 = 10
    v5124.Uses = BattleFunc_221
    BattleFunc_221 = true
    v5124.Contact = BattleFunc_221
    BattleFunc_221 = true
    v5124.Slash = BattleFunc_221
    BattleFunc_221 = 70
    v5124.Power = BattleFunc_221
    BattleFunc_221 = "Single"
    v5124.Target = BattleFunc_221
    local function BattleFunc_222(p935, p936, p937)
    end
    v5124.BattleFunc = BattleFunc_222
    v4663.Slash = v5124
    local v5133 = {}
    BattleFunc_222 = "Ice"
    v5133.Type = BattleFunc_222
    BattleFunc_222 = "Imbues claws with ice and then slashes in a criss cross pattern. Small chance to freeze."
    v5133.Desc = BattleFunc_222
    BattleFunc_222 = "Physical"
    v5133.Category = BattleFunc_222
    BattleFunc_222 = 90
    v5133.Accuracy = BattleFunc_222
    BattleFunc_222 = {}
    local v5134 = {}
    local v5135 = {}
    v5135.AnimType = "Slash"
    v5135.Color = Color3.fromRGB(159, 197, 232)
    v5135.Size = 2
    v5135.Times = 1
    v5135.Wait = 0.05
    v5135.Pitch = 1.3
    local v5142 = {}
    v5142.AnimType = "Slash"
    v5142.Color = Color3.fromRGB(159, 197, 232)
    v5142.Size = 2
    v5142.Times = 1
    v5142.Flipped = true
    v5142.Pitch = 0.85
    v5134[1] = v5135
    v5134[2] = v5142
    BattleFunc_222.Order = v5134
    v5133.MoveAnim = BattleFunc_222
    BattleFunc_222 = 10
    v5133.Uses = BattleFunc_222
    BattleFunc_222 = true
    v5133.Contact = BattleFunc_222
    BattleFunc_222 = true
    v5133.Slash = BattleFunc_222
    BattleFunc_222 = 80
    v5133.Power = BattleFunc_222
    BattleFunc_222 = "Single"
    v5133.Target = BattleFunc_222
    local function BattleFunc_223(p938, p939, p940)
        v3(p938, p939, p940, 10, "Frozen")
    end
    v5133.BattleFunc = BattleFunc_223
    v4663["Icy Slash"] = v5133
    local v5148 = {}
    BattleFunc_223 = "Metal"
    v5148.Type = BattleFunc_223
    BattleFunc_223 = "The user slashes with its steel-hard claws in a criss cross pattern. Small chance to cause vulnerable."
    v5148.Desc = BattleFunc_223
    BattleFunc_223 = "Physical"
    v5148.Category = BattleFunc_223
    BattleFunc_223 = 90
    v5148.Accuracy = BattleFunc_223
    BattleFunc_223 = {}
    local v5149 = {}
    local v5150 = {}
    v5150.AnimType = "Slash"
    v5150.Color = Color3.fromRGB(230, 145, 56)
    v5150.Size = 2
    v5150.Times = 1
    v5150.Wait = 0.05
    v5150.Pitch = 1.3
    local v5158 = {}
    v5158.AnimType = "Slash"
    v5158.Color = Color3.fromRGB(230, 145, 56)
    v5158.Size = 2
    v5158.Times = 1
    v5158.Flipped = true
    v5158.Pitch = 0.85
    v5149[1] = v5150
    v5149[2] = v5158
    BattleFunc_223.Order = v5149
    v5148.MoveAnim = BattleFunc_223
    BattleFunc_223 = 10
    v5148.Uses = BattleFunc_223
    BattleFunc_223 = true
    v5148.Contact = BattleFunc_223
    BattleFunc_223 = true
    v5148.Slash = BattleFunc_223
    BattleFunc_223 = 80
    v5148.Power = BattleFunc_223
    BattleFunc_223 = "Single"
    v5148.Target = BattleFunc_223
    local function BattleFunc_224(p941, p942, p943)
        v3(p941, p942, p943, 10, "Vulnerable")
    end
    v5148.BattleFunc = BattleFunc_224
    v4663["Iron Slash"] = v5148
    local v5164 = {}
    BattleFunc_224 = "Fire"
    v5164.Type = BattleFunc_224
    BattleFunc_224 = "Imbues claws with fire and then slashes in a criss cross pattern. Small chance to burn."
    v5164.Desc = BattleFunc_224
    BattleFunc_224 = "Physical"
    v5164.Category = BattleFunc_224
    BattleFunc_224 = 90
    v5164.Accuracy = BattleFunc_224
    BattleFunc_224 = {}
    local v5165 = {}
    local v5166 = {}
    v5166.AnimType = "Slash"
    v5166.Color = Color3.fromRGB(230, 145, 56)
    v5166.Size = 2
    v5166.Times = 1
    v5166.Wait = 0.05
    v5166.Pitch = 1.3
    local v5174 = {}
    v5174.AnimType = "Slash"
    v5174.Color = Color3.fromRGB(230, 145, 56)
    v5174.Size = 2
    v5174.Times = 1
    v5174.Flipped = true
    v5174.Pitch = 0.85
    v5165[1] = v5166
    v5165[2] = v5174
    BattleFunc_224.Order = v5165
    v5164.MoveAnim = BattleFunc_224
    BattleFunc_224 = 10
    v5164.Uses = BattleFunc_224
    BattleFunc_224 = true
    v5164.Contact = BattleFunc_224
    BattleFunc_224 = true
    v5164.Slash = BattleFunc_224
    BattleFunc_224 = 80
    v5164.Power = BattleFunc_224
    BattleFunc_224 = "Single"
    v5164.Target = BattleFunc_224
    local function BattleFunc_225(p944, p945, p946)
        v3(p944, p945, p946, 10, "Burn")
    end
    v5164.BattleFunc = BattleFunc_225
    v4663["Fiery Slash"] = v5164
    local v5180 = {}
    BattleFunc_225 = "Poison"
    v5180.Type = BattleFunc_225
    BattleFunc_225 = "Imbues claws or a weapon with poison and then lacerates in a criss cross pattern. Small chance to poison."
    v5180.Desc = BattleFunc_225
    BattleFunc_225 = {}
    local v5181 = {}
    local v5182 = {}
    v5182.AnimType = "Slash"
    v5182.Color = Color3.fromRGB(180, 167, 214)
    v5182.Size = 2
    v5182.Times = 1
    v5182.Wait = 0.05
    v5182.Pitch = 1.3
    local v5190 = {}
    v5190.AnimType = "Slash"
    v5190.Color = Color3.fromRGB(180, 167, 214)
    v5190.Size = 2
    v5190.Times = 1
    v5190.Flipped = true
    v5190.Pitch = 0.85
    v5181[1] = v5182
    v5181[2] = v5190
    BattleFunc_225.Order = v5181
    v5180.MoveAnim = BattleFunc_225
    BattleFunc_225 = true
    v5180.Contact = BattleFunc_225
    BattleFunc_225 = "Physical"
    v5180.Category = BattleFunc_225
    BattleFunc_225 = 100
    v5180.Accuracy = BattleFunc_225
    BattleFunc_225 = true
    v5180.Slash = BattleFunc_225
    BattleFunc_225 = 10
    v5180.Uses = BattleFunc_225
    BattleFunc_225 = 85
    v5180.Power = BattleFunc_225
    BattleFunc_225 = "Single"
    v5180.Target = BattleFunc_225
    local function BattleFunc_226(p947, p948, p949)
        v3(p947, p948, p949, 10, "Poison")
    end
    v5180.BattleFunc = BattleFunc_226
    v4663["Venom Lacerate"] = v5180
    local v5196 = {}
    BattleFunc_226 = "Spark"
    v5196.Type = BattleFunc_226
    BattleFunc_226 = "Imbues claws with lightning and then slashes in a criss cross pattern. Small chance to paralyze."
    v5196.Desc = BattleFunc_226
    BattleFunc_226 = {}
    local v5197 = {}
    local v5198 = {}
    v5198.AnimType = "Slash"
    v5198.Color = Color3.fromRGB(255, 255, 0)
    v5198.Size = 2
    v5198.Times = 1
    v5198.Wait = 0.05
    v5198.Pitch = 1.3
    local v5206 = {}
    v5206.AnimType = "Slash"
    v5206.Color = Color3.fromRGB(255, 255, 0)
    v5206.Size = 2
    v5206.Times = 1
    v5206.Flipped = true
    v5206.Pitch = 0.85
    v5197[1] = v5198
    v5197[2] = v5206
    BattleFunc_226.Order = v5197
    v5196.MoveAnim = BattleFunc_226
    BattleFunc_226 = true
    v5196.Contact = BattleFunc_226
    BattleFunc_226 = "Physical"
    v5196.Category = BattleFunc_226
    BattleFunc_226 = 100
    v5196.Accuracy = BattleFunc_226
    BattleFunc_226 = true
    v5196.Slash = BattleFunc_226
    BattleFunc_226 = 10
    v5196.Uses = BattleFunc_226
    BattleFunc_226 = 75
    v5196.Power = BattleFunc_226
    BattleFunc_226 = "Single"
    v5196.Target = BattleFunc_226
    local function BattleFunc_227(p950, p951, p952)
        v3(p950, p951, p952, 10, "Paralysis")
    end
    v5196.BattleFunc = BattleFunc_227
    v4663["Electro Slash"] = v5196
    local v5212 = {}
    BattleFunc_227 = "Dark"
    v5212.Type = BattleFunc_227
    BattleFunc_227 = "Imbues claws with darkness and then slashes in a criss cross pattern. Small chance to lower the target's defense."
    v5212.Desc = BattleFunc_227
    BattleFunc_227 = {}
    local v5213 = {}
    local v5214 = {}
    v5214.AnimType = "Slash"
    v5214.Color = Color3.fromRGB(102, 102, 102)
    v5214.Size = 2
    v5214.Times = 1
    v5214.Wait = 0.05
    v5214.Pitch = 1.3
    local v5222 = {}
    v5222.AnimType = "Slash"
    v5222.Color = Color3.fromRGB(102, 102, 102)
    v5222.Size = 2
    v5222.Times = 1
    v5222.Flipped = true
    v5222.Pitch = 0.85
    v5213[1] = v5214
    v5213[2] = v5222
    BattleFunc_227.Order = v5213
    v5212.MoveAnim = BattleFunc_227
    BattleFunc_227 = true
    v5212.Contact = BattleFunc_227
    BattleFunc_227 = "Physical"
    v5212.Category = BattleFunc_227
    BattleFunc_227 = true
    v5212.Slash = BattleFunc_227
    BattleFunc_227 = 100
    v5212.Accuracy = BattleFunc_227
    BattleFunc_227 = 10
    v5212.Uses = BattleFunc_227
    BattleFunc_227 = 75
    v5212.Power = BattleFunc_227
    BattleFunc_227 = "Single"
    v5212.Target = BattleFunc_227
    local function BattleFunc_228(p953, p954, p955)
        local v3527 = {}
        v3527.def = -1
        v4(p953, p954, p955, 10, v3527)
    end
    v5212.BattleFunc = BattleFunc_228
    v4663["Dark Slash"] = v5212
    local v5228 = {}
    BattleFunc_228 = "Light"
    v5228.Type = BattleFunc_228
    BattleFunc_228 = "The user shines a light, and then strikes. This move never misses."
    v5228.Desc = BattleFunc_228
    BattleFunc_228 = {}
    local v5229 = {}
    local v5230 = {}
    v5230.AnimType = "Slash"
    v5230.Color = Color3.fromRGB(255, 229, 153)
    v5230.Size = 2
    v5230.Times = 1
    v5230.Wait = 0.05
    v5230.Pitch = 1.3
    v5229[1] = v5230
    BattleFunc_228.Order = v5229
    v5228.MoveAnim = BattleFunc_228
    BattleFunc_228 = true
    v5228.Contact = BattleFunc_228
    BattleFunc_228 = "Physical"
    v5228.Category = BattleFunc_228
    BattleFunc_228 = true
    v5228.Slash = BattleFunc_228
    BattleFunc_228 = true
    v5228.Accuracy = BattleFunc_228
    BattleFunc_228 = 10
    v5228.Uses = BattleFunc_228
    BattleFunc_228 = 75
    v5228.Power = BattleFunc_228
    BattleFunc_228 = "Single"
    v5228.Target = BattleFunc_228
    local function BattleFunc_229(p956, p957, p958)
    end
    v5228.BattleFunc = BattleFunc_229
    v4663["Flashing Strike"] = v5228
    local v5238 = {}
    BattleFunc_229 = "Dark"
    v5238.Type = BattleFunc_229
    BattleFunc_229 = "The user ambushes the target. This move never misses."
    v5238.Desc = BattleFunc_229
    BattleFunc_229 = true
    v5238.Contact = BattleFunc_229
    BattleFunc_229 = "Physical"
    v5238.Category = BattleFunc_229
    BattleFunc_229 = true
    v5238.Accuracy = BattleFunc_229
    BattleFunc_229 = 15
    v5238.Uses = BattleFunc_229
    BattleFunc_229 = 60
    v5238.Power = BattleFunc_229
    BattleFunc_229 = "Single"
    v5238.Target = BattleFunc_229
    local function BattleFunc_230(p959, p960, p961)
    end
    v5238.BattleFunc = BattleFunc_230
    v4663.Ambush = v5238
    local v5239 = {}
    BattleFunc_230 = "Spirit"
    v5239.Type = BattleFunc_230
    BattleFunc_230 = "The user lurks in the shadows, and then ambushes the target. This move always goes first."
    v5239.Desc = BattleFunc_230
    BattleFunc_230 = true
    v5239.Contact = BattleFunc_230
    BattleFunc_230 = "Physical"
    v5239.Category = BattleFunc_230
    BattleFunc_230 = 100
    v5239.Accuracy = BattleFunc_230
    BattleFunc_230 = 1
    v5239.Priority = BattleFunc_230
    BattleFunc_230 = 10
    v5239.Uses = BattleFunc_230
    BattleFunc_230 = 40
    v5239.Power = BattleFunc_230
    BattleFunc_230 = "Single"
    v5239.Target = BattleFunc_230
    local function BattleFunc_231(p962, p963, p964)
    end
    v5239.BattleFunc = BattleFunc_231
    v4663["Shadow Lurk"] = v5239
    local v5240 = {}
    BattleFunc_231 = "Insect"
    v5240.Type = BattleFunc_231
    BattleFunc_231 = "User shoots a beam from its antenna. This attack has a chance to lower the magical attack of the opponent.."
    v5240.Desc = BattleFunc_231
    BattleFunc_231 = "Magical"
    v5240.Category = BattleFunc_231
    BattleFunc_231 = 100
    v5240.Accuracy = BattleFunc_231
    BattleFunc_231 = 10
    v5240.Uses = BattleFunc_231
    BattleFunc_231 = 90
    v5240.Power = BattleFunc_231
    BattleFunc_231 = "Single"
    v5240.Target = BattleFunc_231
    local function BattleFunc_232(p965, p966, p967)
        local v3541 = {}
        v3541.matk = -1
        v4(p965, p966, p967, 10, v3541)
    end
    v5240.BattleFunc = BattleFunc_232
    v4663["Antenna Beam"] = v5240
    local v5241 = {}
    BattleFunc_232 = "Insect"
    v5241.Type = BattleFunc_232
    BattleFunc_232 = "User shoots a web ball at the target. This attack has a chance to lower the speed of the opponent."
    v5241.Desc = BattleFunc_232
    BattleFunc_232 = "Magical"
    v5241.Category = BattleFunc_232
    BattleFunc_232 = 100
    v5241.Accuracy = BattleFunc_232
    BattleFunc_232 = 10
    v5241.Uses = BattleFunc_232
    BattleFunc_232 = 75
    v5241.Power = BattleFunc_232
    BattleFunc_232 = "Single"
    v5241.Target = BattleFunc_232
    local function BattleFunc_233(p968, p969, p970)
        local v3549 = {}
        v3549.spe = -1
        v4(p968, p969, p970, 20, v3549)
    end
    v5241.BattleFunc = BattleFunc_233
    v4663["Web Ball"] = v5241
    local v5242 = {}
    BattleFunc_233 = "Air"
    v5242.Type = BattleFunc_233
    BattleFunc_233 = "The user whips up a tornado to attack all opposing Doodles. This attack has a chance to flinch. "
    v5242.Desc = BattleFunc_233
    BattleFunc_233 = "Magical"
    v5242.Category = BattleFunc_233
    BattleFunc_233 = 100
    v5242.Accuracy = BattleFunc_233
    BattleFunc_233 = 10
    v5242.Uses = BattleFunc_233
    BattleFunc_233 = 90
    v5242.Power = BattleFunc_233
    BattleFunc_233 = "AllFoes"
    v5242.Target = BattleFunc_233
    local function BattleFunc_234(p971, p972, p973)
        v3(p971, p972, p973, 20, "Flinch")
    end
    v5242.BattleFunc = BattleFunc_234
    v4663.Aerial = v5242
    local v5243 = {}
    BattleFunc_234 = "Air"
    v5243.Type = BattleFunc_234
    BattleFunc_234 = "Tears and shreds the enemy with compressed air. This attack has a chance to cause vulnerable."
    v5243.Desc = BattleFunc_234
    BattleFunc_234 = "Magical"
    v5243.Category = BattleFunc_234
    BattleFunc_234 = 100
    v5243.Accuracy = BattleFunc_234
    BattleFunc_234 = 20
    v5243.Uses = BattleFunc_234
    BattleFunc_234 = 60
    v5243.Power = BattleFunc_234
    BattleFunc_234 = "Single"
    v5243.Target = BattleFunc_234
    local function BattleFunc_235(p974, p975, p976)
        v3(p974, p975, p976, 20, "Vulnerable")
    end
    v5243.BattleFunc = BattleFunc_235
    v4663["Air Strike"] = v5243
    local v5244 = {}
    BattleFunc_235 = "Melee"
    v5244.Type = BattleFunc_235
    BattleFunc_235 = "The user attempts to crush down on the target. May cause vulnerability."
    v5244.Desc = BattleFunc_235
    BattleFunc_235 = "Physical"
    v5244.Category = BattleFunc_235
    BattleFunc_235 = 100
    v5244.Accuracy = BattleFunc_235
    BattleFunc_235 = 25
    v5244.Uses = BattleFunc_235
    BattleFunc_235 = true
    v5244.Contact = BattleFunc_235
    BattleFunc_235 = 60
    v5244.Power = BattleFunc_235
    BattleFunc_235 = "Single"
    v5244.Target = BattleFunc_235
    local function BattleFunc_236(p977, p978, p979)
        v3(p977, p978, p979, 20, "Vulnerable")
    end
    v5244.BattleFunc = BattleFunc_236
    v4663.Crush = v5244
    local v5245 = {}
    BattleFunc_236 = "Air"
    v5245.Type = BattleFunc_236
    BattleFunc_236 = "The user dive bombs the target. If it misses, the user is hurt instead."
    v5245.Desc = BattleFunc_236
    BattleFunc_236 = true
    v5245.Contact = BattleFunc_236
    BattleFunc_236 = "Physical"
    v5245.Category = BattleFunc_236
    BattleFunc_236 = 85
    v5245.Accuracy = BattleFunc_236
    BattleFunc_236 = 10
    v5245.Uses = BattleFunc_236
    BattleFunc_236 = 120
    v5245.Power = BattleFunc_236
    BattleFunc_236 = "Single"
    v5245.Target = BattleFunc_236
    local function OnMiss_1(p980, p981, p982)
        local v3573 = p981.Stats
        local v3577 = math.floor(v3573.hp * 0.5)
        if v3577 > 0 then
            v3573 = p981
            local v3580 = {}
            v3580[1] = "&DOODLENAME," .. p981.ID .. "&" .. " dove straight into the ground!"
            p980:TakeDamage(v3573, v3577, v3580)
        end
    end
    v5245.OnMiss = OnMiss_1
    v4663["Nose Dive"] = v5245
    local v5246 = {}
    OnMiss_1 = "Dark"
    v5246.Type = OnMiss_1
    OnMiss_1 = "The user steals the opponent's item."
    v5246.Desc = OnMiss_1
    OnMiss_1 = true
    v5246.Contact = OnMiss_1
    OnMiss_1 = "Physical"
    v5246.Category = OnMiss_1
    OnMiss_1 = 100
    v5246.Accuracy = OnMiss_1
    OnMiss_1 = 10
    v5246.Uses = OnMiss_1
    OnMiss_1 = 40
    v5246.Power = OnMiss_1
    OnMiss_1 = "Single"
    v5246.Target = OnMiss_1
    local function BattleFunc_237(p983, p984, p985)
        local v3589 = v2.GetTrait(p985)
        local v3590 = p985.HeldItem
        if not v3590 then
            v3590 = p984.HeldItem
            if not v3590 then
                p983:AddDialogue(p983.ActionList, "&DOODLENAME," .. p984.ID .. "&" .. " already has a held item!")
                return 
            end
            if not v3589 then
                if not v3589.NoItemSteal then
                    v3592 = "&DOODLENAME,"
                    v3593 = p985.ID
                    v3594 = "&"
                    v3595 = " is really protective of its held item!"
                    p983:AddDialogue(p983.ActionList, v3592 .. v3593 .. v3594 .. v3595)
                    return 
                end
            end
            v3592 = "&DOODLENAME,"
            v3593 = p984.ID
            v3594 = "&"
            v3595 = " stole "
            p983:AddDialogue(p983.ActionList, v3592 .. v3593 .. v3594 .. v3595 .. p985.HeldItem .. " from " .. "&DOODLENAME," .. p985.ID .. "&" .. "!")
            p984.HeldItem = p985.HeldItem
            p985.HeldItem = nil
            p984:NewHeldItem(p983)
            p985:NewHeldItem(p983)
            p985.NoRegen = true
            p985.NoUpdateItem = true
            p984.NoUpdateItem = true
        end
    end
    v5246.BattleFunc = BattleFunc_237
    v4663.Pickpocket = v5246
    local v5247 = {}
    BattleFunc_237 = "Mind"
    v5247.Type = BattleFunc_237
    BattleFunc_237 = "The user tries to puts the enemy to sleep, and if it does, removes their held item."
    v5247.Desc = BattleFunc_237
    BattleFunc_237 = "Passive"
    v5247.Category = BattleFunc_237
    BattleFunc_237 = 60
    v5247.Accuracy = BattleFunc_237
    BattleFunc_237 = 5
    v5247.Uses = BattleFunc_237
    BattleFunc_237 = nil
    v5247.Power = BattleFunc_237
    BattleFunc_237 = "Single"
    v5247.Target = BattleFunc_237
    local function BattleFunc_238(p986, p987, p988)
        local v3621 = v2.GetTrait(p988)
        if not v3621 then
            if not v3621.NoItemSteal then
                p986:AddDialogue(p986.ActionList, "&DOODLENAME," .. p988.ID .. "&" .. " is really protective of its held item!")
                return 
            end
        end
        local v3629 = p988.HeldItem
        v3629 = v3
        v3624 = 100
        v3625 = "Sleep"
        v3629(p986, p988, p988, v3624, v3625)
        local v3633 = p988.Status
        p986 = p986 * v3634
        v3626 = "&"
        v3627 = " removed "
        p986:AddDialogue(p986.ActionList, "&DOODLENAME," .. p987.ID .. v3626 .. v3627 .. p988.HeldItem .. " from " .. "&DOODLENAME," .. p988.ID .. "&" .. "!")
        p988.HeldItem = nil
        p988:NewHeldItem(p986)
        p988.NoRegen = true
        p988.NoUpdateItem = true
        return 
        p986:AddDialogue(p986.ActionList, "But it failed!")
    end
    v5247.BattleFunc = BattleFunc_238
    v4663["Sleep n' Steal"] = v5247
    local v5248 = {}
    BattleFunc_238 = "Fire"
    v5248.Type = BattleFunc_238
    BattleFunc_238 = "The user burns the target's held item, removing it. This attack does more damage if the target has an held item."
    v5248.Desc = BattleFunc_238
    BattleFunc_238 = true
    v5248.Contact = BattleFunc_238
    BattleFunc_238 = "Magical"
    v5248.Category = BattleFunc_238
    BattleFunc_238 = 100
    v5248.Accuracy = BattleFunc_238
    BattleFunc_238 = 10
    v5248.Uses = BattleFunc_238
    BattleFunc_238 = 30
    v5248.Power = BattleFunc_238
    BattleFunc_238 = "Single"
    v5248.Target = BattleFunc_238
    v5248.ModifyDamage = function(p989, p990, p991, p992, p993, p994, p995)
        local v3653 = p991.Decoy
        if v3653 then
            v3653 = p991.HeldItem
            if not v3653 then
                v3653 = 2
                return v3653
            end
        end
        return 1
    end
    local function BattleFunc_239(p996, p997, p998)
        local v3658 = v2.GetTrait(p998)
        local v3659 = p998.Decoy
        if not v3659 then
            return 
        end
        if not v3658 then
            v3659 = v3658.NoItemSteal
            if not v3659 then
                p996:AddDialogue(p996.ActionList, "&DOODLENAME," .. p998.ID .. "&" .. " is really protective of its held item!")
                return 
            end
        end
        local v3666 = p998.HeldItem
        v3661 = "&DOODLENAME,"
        v3662 = p997.ID
        v3663 = "&"
        v3664 = " incinerated "
        p996:AddDialogue(p996.ActionList, v3661 .. v3662 .. v3663 .. v3664 .. p998.HeldItem .. " from " .. "&DOODLENAME," .. p998.ID .. "&" .. "!")
        p998.HeldItem = nil
        p998:NewHeldItem(p996)
        p998.NoRegen = true
        p998.NoUpdateItem = true
    end
    v5248.BattleFunc = BattleFunc_239
    v4663.Incinerate = v5248
    local v5249 = {}
    BattleFunc_239 = "Basic"
    v5249.Type = BattleFunc_239
    BattleFunc_239 = "The user disarms the target, removing the target's held item. This attack does more damage if the target has an held item."
    v5249.Desc = BattleFunc_239
    BattleFunc_239 = true
    v5249.Contact = BattleFunc_239
    BattleFunc_239 = "Physical"
    v5249.Category = BattleFunc_239
    BattleFunc_239 = 100
    v5249.Accuracy = BattleFunc_239
    BattleFunc_239 = 10
    v5249.Uses = BattleFunc_239
    BattleFunc_239 = 40
    v5249.Power = BattleFunc_239
    BattleFunc_239 = "Single"
    v5249.Target = BattleFunc_239
    v5249.ModifyDamage = function(p999, p1000, p1001, p1002, p1003, p1004, p1005)
        local v3681 = p1001.Decoy
        if v3681 then
            v3681 = p1001.HeldItem
            if not v3681 then
                v3681 = 2
                return v3681
            end
        end
        return 1
    end
    local function BattleFunc_240(p1006, p1007, p1008)
        local v3686 = v2.GetTrait(p1008)
        local v3687 = p1008.Decoy
        if not v3687 then
            return 
        end
        if not v3686 then
            v3687 = v3686.NoItemSteal
            if not v3687 then
                p1006:AddDialogue(p1006.ActionList, "&DOODLENAME," .. p1008.ID .. "&" .. " is really protective of its held item!")
                return 
            end
        end
        local v3694 = p1008.HeldItem
        v3689 = "&DOODLENAME,"
        v3690 = p1007.ID
        v3691 = "&"
        v3692 = " disarmed "
        p1006:AddDialogue(p1006.ActionList, v3689 .. v3690 .. v3691 .. v3692 .. p1008.HeldItem .. " from " .. "&DOODLENAME," .. p1008.ID .. "&" .. "!")
        p1008.HeldItem = nil
        p1008:NewHeldItem(p1006)
        p1008.NoRegen = true
        p1008.NoUpdateItem = true
    end
    v5249.BattleFunc = BattleFunc_240
    v4663.Disarm = v5249
    local v5250 = {}
    BattleFunc_240 = "Spirit"
    v5250.Type = BattleFunc_240
    BattleFunc_240 = "The user attacks using its spiritual energy. This move has a higher chance to critical hit."
    v5250.Desc = BattleFunc_240
    BattleFunc_240 = {}
    local v5251 = {}
    local v5252 = {}
    v5252.AnimType = "Slash"
    v5252.Color = Color3.fromRGB(103, 78, 167)
    v5252.Size = 2
    v5252.Times = 1
    v5252.Wait = 0.05
    v5252.Pitch = 1.3
    v5251[1] = v5252
    BattleFunc_240.Order = v5251
    v5250.MoveAnim = BattleFunc_240
    BattleFunc_240 = true
    v5250.Contact = BattleFunc_240
    BattleFunc_240 = true
    v5250.Slash = BattleFunc_240
    BattleFunc_240 = 6
    v5250.CritChance = BattleFunc_240
    BattleFunc_240 = "Physical"
    v5250.Category = BattleFunc_240
    BattleFunc_240 = 90
    v5250.Accuracy = BattleFunc_240
    BattleFunc_240 = 10
    v5250.Uses = BattleFunc_240
    BattleFunc_240 = 80
    v5250.Power = BattleFunc_240
    BattleFunc_240 = "Single"
    v5250.Target = BattleFunc_240
    local function BattleFunc_241(p1009, p1010, p1011)
    end
    v5250.BattleFunc = BattleFunc_241
    v4663["Spirit Claws"] = v5250
    local v5259 = {}
    BattleFunc_241 = "Air"
    v5259.Type = BattleFunc_241
    BattleFunc_241 = "The user slashes using its wings. This move has a higher chance to critical hit."
    v5259.Desc = BattleFunc_241
    BattleFunc_241 = {}
    local v5260 = {}
    local v5261 = {}
    v5261.AnimType = "Slash"
    v5261.Color = Color3.fromRGB(109, 158, 235)
    v5261.Size = 2
    v5261.Times = 1
    v5261.Wait = 0.05
    v5261.Pitch = 1.3
    v5260[1] = v5261
    BattleFunc_241.Order = v5260
    v5259.MoveAnim = BattleFunc_241
    BattleFunc_241 = true
    v5259.Slash = BattleFunc_241
    BattleFunc_241 = true
    v5259.Contact = BattleFunc_241
    BattleFunc_241 = 6
    v5259.CritChance = BattleFunc_241
    BattleFunc_241 = "Physical"
    v5259.Category = BattleFunc_241
    BattleFunc_241 = 90
    v5259.Accuracy = BattleFunc_241
    BattleFunc_241 = 10
    v5259.Uses = BattleFunc_241
    BattleFunc_241 = 80
    v5259.Power = BattleFunc_241
    BattleFunc_241 = "Single"
    v5259.Target = BattleFunc_241
    local function BattleFunc_242(p1012, p1013, p1014)
    end
    v5259.BattleFunc = BattleFunc_242
    v4663["Wing Slash"] = v5259
    local v5268 = {}
    BattleFunc_242 = "Water"
    v5268.Type = BattleFunc_242
    BattleFunc_242 = "The user slashes using its fin. This move has a higher chance to critical hit."
    v5268.Desc = BattleFunc_242
    BattleFunc_242 = {}
    local v5269 = {}
    local v5270 = {}
    v5270.AnimType = "Slash"
    v5270.Color = Color3.fromRGB(109, 158, 235)
    v5270.Size = 2
    v5270.Times = 1
    v5270.Wait = 0.05
    v5270.Pitch = 1.3
    v5269[1] = v5270
    BattleFunc_242.Order = v5269
    v5268.MoveAnim = BattleFunc_242
    BattleFunc_242 = true
    v5268.Slash = BattleFunc_242
    BattleFunc_242 = true
    v5268.Contact = BattleFunc_242
    BattleFunc_242 = 6
    v5268.CritChance = BattleFunc_242
    BattleFunc_242 = "Physical"
    v5268.Category = BattleFunc_242
    BattleFunc_242 = 90
    v5268.Accuracy = BattleFunc_242
    BattleFunc_242 = 10
    v5268.Uses = BattleFunc_242
    BattleFunc_242 = 80
    v5268.Power = BattleFunc_242
    BattleFunc_242 = "Single"
    v5268.Target = BattleFunc_242
    local function BattleFunc_243(p1015, p1016, p1017)
    end
    v5268.BattleFunc = BattleFunc_243
    v4663["Fin Slash"] = v5268
    local v5277 = {}
    BattleFunc_243 = "Plant"
    v5277.Type = BattleFunc_243
    BattleFunc_243 = "The user plants its life-healing roots in the ground. At the end of each turn, it heals health."
    v5277.Desc = BattleFunc_243
    BattleFunc_243 = "Passive"
    v5277.Category = BattleFunc_243
    BattleFunc_243 = true
    v5277.Accuracy = BattleFunc_243
    BattleFunc_243 = 10
    v5277.Uses = BattleFunc_243
    BattleFunc_243 = nil
    v5277.Power = BattleFunc_243
    BattleFunc_243 = "Self"
    v5277.Target = BattleFunc_243
    local function BattleFunc_244(p1018, p1019, p1020)
        if not p1019.Ingrain then
            p1018:AddDialogue(p1018.ActionList, "&DOODLENAME," .. p1019.ID .. "&" .. " has already planted Life Roots!")
            return 
        end
        p1019.Ingrain = true
        v3726 = "&DOODLENAME,"
        v3727 = p1019.ID
        v3728 = "&"
        v3729 = " planted Life Roots!"
        p1018:AddDialogue(p1018.ActionList, v3726 .. v3727 .. v3728 .. v3729)
        local v3734 = p1019.EndFuncs
        if v3734 then
            v3734 = {}
        end
        p1019.EndFuncs = v3734
        local v3735 = p1019.EndFuncs
        local v3750 = v3735.LifeRoots
        if v3750 then
            v3750 = p1019.EndFuncs
            v3735 = function(p1021, p1022, p1023)
                local v3736 = p1022.Stats
                local v3737 = v3736.hp
                local v3740 = math.floor(v3737 / 10)
                local v3741 = 0
                if v3740 > v3741 then
                    v3737 = p1022.Stats
                    v3741 = v3737.hp
                    v3737 = p1022.currenthp
                    if v3741 > v3737 then
                        v3736 = p1022
                        p1021:TakeDamage(v3736, -v3740)
                        p1021:AddDialogue(p1021.ActionList, "&DOODLENAME," .. p1022.ID .. "&" .. " restored health from its Life Roots!")
                    end
                end
            end
            v3750.LifeRoots = v3735
        end
    end
    v5277.BattleFunc = BattleFunc_244
    v4663["Life Roots"] = v5277
    local v5278 = {}
    BattleFunc_244 = "Basic"
    v5278.Type = BattleFunc_244
    BattleFunc_244 = "The user prepares its next attack. The next time the user attacks, it does more damage."
    v5278.Desc = BattleFunc_244
    BattleFunc_244 = "Passive"
    v5278.Category = BattleFunc_244
    BattleFunc_244 = true
    v5278.Accuracy = BattleFunc_244
    BattleFunc_244 = 10
    v5278.Uses = BattleFunc_244
    BattleFunc_244 = nil
    v5278.Power = BattleFunc_244
    BattleFunc_244 = "Self"
    v5278.Target = BattleFunc_244
    local function BattleFunc_245(p1024, p1025, p1026)
        if not p1025.Preparation then
            p1024:AddDialogue(p1024.ActionList, "&DOODLENAME," .. p1025.ID .. "&" .. " is already prepared...")
        else
            v3754 = "&DOODLENAME,"
            v3755 = p1025.ID
            v3756 = "&"
            v3757 = " is preparing its next attack!"
            p1024:AddDialogue(p1024.ActionList, v3754 .. v3755 .. v3756 .. v3757)
        end
        p1025.Preparation = true
    end
    v5278.BattleFunc = BattleFunc_245
    v4663.Preparation = v5278
    local v5279 = {}
    BattleFunc_245 = "Basic"
    v5279.Type = BattleFunc_245
    BattleFunc_245 = "The user protects itself from the next attack. Fails automatically if used in succession."
    v5279.Desc = BattleFunc_245
    BattleFunc_245 = "Passive"
    v5279.Category = BattleFunc_245
    BattleFunc_245 = true
    v5279.ProtectMove = BattleFunc_245
    BattleFunc_245 = 4
    v5279.Priority = BattleFunc_245
    BattleFunc_245 = true
    v5279.Accuracy = BattleFunc_245
    BattleFunc_245 = {}
    local v5280 = {}
    local v5281 = {}
    v5281.AnimType = "Protect"
    v5281.Color = "Basic"
    v5280[1] = v5281
    BattleFunc_245.Order = v5280
    v5279.MoveAnim = BattleFunc_245
    BattleFunc_245 = 10
    v5279.Uses = BattleFunc_245
    BattleFunc_245 = nil
    v5279.Power = BattleFunc_245
    BattleFunc_245 = "Self"
    v5279.Target = BattleFunc_245
    local function BattleFunc_246(p1027, p1028, p1029)
        local v3764 = p1028.ProtectChance
        p1027:AddDialogue(p1027.ActionList, "The move failed!")
        local v3767
        p1028.ProtectChance = v3767
        return 
        local v3768 = p1028.ProtectChance
        if not v3768 then
            v3768 = p1028.ProtectChance
            v3767 = v3768 + 1
            if v3767 then
                v3767 = 1
            end
            p1028.ProtectChance = v3767
            v3767 = true
            p1028.Protect = v3767
            local v3770 = {}
            v3770.Player = p1029.Owner
            v3770.User = p1028
            v3770.Doodle = p1029
            v3770.Action = "PlayAnim"
            v3770.Move = "Protect"
            p1027:AddAction(p1027.ActionList, v3770)
            p1027:AddDialogue(p1027.ActionList, "&DOODLENAME," .. p1028.ID .. "&" .. " is protecting itself!")
            return 
        end
    end
    v5279.BattleFunc = BattleFunc_246
    v4663.Protect = v5279
    local v5284 = {}
    BattleFunc_246 = "Ice"
    v5284.Type = BattleFunc_246
    BattleFunc_246 = "The user protects itself for a turn with an ice shield. If anything makes contact with the ice shield, their attack gets greatly lowered. Fails automatically if used in succession."
    v5284.Desc = BattleFunc_246
    BattleFunc_246 = "Passive"
    v5284.Category = BattleFunc_246
    BattleFunc_246 = true
    v5284.ProtectMove = BattleFunc_246
    BattleFunc_246 = 4
    v5284.Priority = BattleFunc_246
    BattleFunc_246 = {}
    local v5285 = {}
    local v5286 = {}
    v5286.AnimType = "Protect"
    v5286.Color = "Ice"
    v5285[1] = v5286
    BattleFunc_246.Order = v5285
    v5284.MoveAnim = BattleFunc_246
    BattleFunc_246 = true
    v5284.Accuracy = BattleFunc_246
    BattleFunc_246 = 5
    v5284.Uses = BattleFunc_246
    BattleFunc_246 = nil
    v5284.Power = BattleFunc_246
    BattleFunc_246 = "Self"
    v5284.Target = BattleFunc_246
    local function BattleFunc_247(p1030, p1031, p1032)
        local v3782 = p1032.ProtectChance
        p1030:AddDialogue(p1030.ActionList, "The move failed!")
        local v3785
        p1032.ProtectChance = v3785
        return 
        local v3786 = p1032.ProtectChance
        if not v3786 then
            v3786 = p1032.ProtectChance
            v3785 = v3786 + 1
            if v3785 then
                v3785 = 1
            end
            p1032.ProtectChance = v3785
            v3785 = true
            p1032.IceShield = v3785
            v3785 = true
            p1032.Protect = v3785
            local v3788 = {}
            v3788.Player = p1032.Owner
            v3788.User = p1031
            v3788.Doodle = p1032
            v3788.Action = "PlayAnim"
            v3788.Move = "Royal Ice"
            p1030:AddAction(p1030.ActionList, v3788)
            p1030:AddDialogue(p1030.ActionList, "&DOODLENAME," .. p1031.ID .. "&" .. " is protecting itself with ice!")
            return 
        end
    end
    v5284.BattleFunc = BattleFunc_247
    v4663["Royal Ice"] = v5284
    local v5289 = {}
    BattleFunc_247 = "Plant"
    v5289.Type = BattleFunc_247
    BattleFunc_247 = "The user protects itself for a turn with a barb barrier. If anything makes contact with the barb barrier, they take damage. Fails automatically if used in succession."
    v5289.Desc = BattleFunc_247
    BattleFunc_247 = "Passive"
    v5289.Category = BattleFunc_247
    BattleFunc_247 = true
    v5289.ProtectMove = BattleFunc_247
    BattleFunc_247 = 4
    v5289.Priority = BattleFunc_247
    BattleFunc_247 = true
    v5289.Accuracy = BattleFunc_247
    BattleFunc_247 = {}
    local v5290 = {}
    local v5291 = {}
    v5291.AnimType = "Protect"
    v5291.Color = "Plant"
    v5290[1] = v5291
    BattleFunc_247.Order = v5290
    v5289.MoveAnim = BattleFunc_247
    BattleFunc_247 = 10
    v5289.Uses = BattleFunc_247
    BattleFunc_247 = nil
    v5289.Power = BattleFunc_247
    BattleFunc_247 = "Self"
    v5289.Target = BattleFunc_247
    local function BattleFunc_248(p1033, p1034, p1035)
        local v3800 = p1035.ProtectChance
        p1033:AddDialogue(p1033.ActionList, "The move failed!")
        local v3803
        p1035.ProtectChance = v3803
        return 
        local v3804 = p1035.ProtectChance
        if not v3804 then
            v3804 = p1035.ProtectChance
            v3803 = v3804 + 1
            if v3803 then
                v3803 = 1
            end
            p1035.ProtectChance = v3803
            v3803 = true
            p1035.BarbBarrier = v3803
            v3803 = true
            p1035.Protect = v3803
            local v3806 = {}
            v3806.Player = p1035.Owner
            v3806.User = p1034
            v3806.Doodle = p1035
            v3806.Action = "PlayAnim"
            v3806.Move = "Barb Barrier"
            p1033:AddAction(p1033.ActionList, v3806)
            p1033:AddDialogue(p1033.ActionList, "&DOODLENAME," .. p1034.ID .. "&" .. " is protecting itself with barbs!")
            return 
        end
    end
    v5289.BattleFunc = BattleFunc_248
    v4663["Barb Barrier"] = v5289
    local v5294 = {}
    BattleFunc_248 = "Mind"
    v5294.Type = BattleFunc_248
    BattleFunc_248 = "The user goes to sleep, restoring all its health and curing any statuses."
    v5294.Desc = BattleFunc_248
    BattleFunc_248 = "Passive"
    v5294.Category = BattleFunc_248
    BattleFunc_248 = true
    v5294.Accuracy = BattleFunc_248
    BattleFunc_248 = 10
    v5294.Uses = BattleFunc_248
    BattleFunc_248 = nil
    v5294.Power = BattleFunc_248
    BattleFunc_248 = "Self"
    v5294.Target = BattleFunc_248
    local function BattleFunc_249(p1036, p1037, p1038)
        local v3819 = p1038.Stats
        local v3820 = v3819.hp
        if p1038.currenthp == v3820 then
            v3819 = p1036.ActionList
            p1036:AddDialogue(v3819, "&DOODLENAME," .. p1037.ID .. "&" .. " doesn't need to sleep right now!")
            return 
        end
        p1038.Status = nil
        v3820 = p1036
        v3821 = 100
        v3822 = "Sleep"
        v3823 = nil
        v3824 = nil
        v3(v3820, p1038, p1038, v3821, v3822, v3823, v3824, true)
        local v3830 = p1038.Status
        v3830 = true
        p1038.Resting = v3830
        p1038.StatusTurn = 2
        local v3845 = p1038.currenthp
        p1036:TakeDamage(p1037, -p1038.Stats.hp - v3845)
        local v3837 = p1036:GetItemInfo(p1038)
        if not v3837 then
            v3845 = v3837.OnStatus
            if not v3845 then
                v3845 = v3837.OnStatus
                v3845(p1036, p1038, p1037)
                return 
                p1036:AddDialogue(p1036.ActionList, "But it failed!")
            end
        end
    end
    v5294.BattleFunc = BattleFunc_249
    v4663.Rest = v5294
    local v5295 = {}
    BattleFunc_249 = "Basic"
    v5295.Type = BattleFunc_249
    BattleFunc_249 = "The user berserks, becoming enraged and greatly boosting its attack."
    v5295.Desc = BattleFunc_249
    BattleFunc_249 = "Passive"
    v5295.Category = BattleFunc_249
    BattleFunc_249 = true
    v5295.Accuracy = BattleFunc_249
    BattleFunc_249 = 10
    v5295.Uses = BattleFunc_249
    BattleFunc_249 = nil
    v5295.Power = BattleFunc_249
    BattleFunc_249 = "Self"
    v5295.Target = BattleFunc_249
    local function BattleFunc_250(p1039, p1040, p1041)
        local v3848 = p1041.Status
        p1039:AddDialogue(p1039.ActionList, "&DOODLENAME," .. p1040.ID .. "&" .. " is already raging!")
        return 
        p1041.Status = nil
        v3(p1039, p1041, p1041, 100, "Rage")
        p1041.StatusTurn = math.random(2, 3)
        local v3867 = {}
        v3867.atk = 2
        v4(p1039, p1040, p1041, 100, v3867)
    end
    v5295.BattleFunc = BattleFunc_250
    v4663.Berserk = v5295
    local v5296 = {}
    BattleFunc_250 = "Ice"
    v5296.Type = BattleFunc_250
    BattleFunc_250 = "The user encases themselves in ice and rams the target."
    v5296.Desc = BattleFunc_250
    BattleFunc_250 = {}
    local v5297 = {}
    local v5298 = {}
    v5298.AnimType = "Impact"
    v5298.Color = Color3.fromRGB(159, 197, 232)
    v5298.Size = 1
    v5298.Times = 1
    v5298.Wait = 0.05
    v5298.Pitch = 0.75
    v5297[1] = v5298
    BattleFunc_250.Order = v5297
    v5296.MoveAnim = BattleFunc_250
    BattleFunc_250 = "Physical"
    v5296.Category = BattleFunc_250
    BattleFunc_250 = true
    v5296.Contact = BattleFunc_250
    BattleFunc_250 = 90
    v5296.Accuracy = BattleFunc_250
    BattleFunc_250 = 30
    v5296.Uses = BattleFunc_250
    BattleFunc_250 = 40
    v5296.Power = BattleFunc_250
    BattleFunc_250 = "Single"
    v5296.Target = BattleFunc_250
    local function BattleFunc_251(p1042, p1043, p1044)
    end
    v5296.BattleFunc = BattleFunc_251
    v4663["Icy Tackle"] = v5296
    local v5305 = {}
    BattleFunc_251 = "Basic"
    v5305.Type = BattleFunc_251
    BattleFunc_251 = "User wraps its body around the target, preventing them from escaping."
    v5305.Desc = BattleFunc_251
    BattleFunc_251 = "Physical"
    v5305.Category = BattleFunc_251
    BattleFunc_251 = 100
    v5305.Accuracy = BattleFunc_251
    BattleFunc_251 = true
    v5305.Contact = BattleFunc_251
    BattleFunc_251 = 20
    v5305.Uses = BattleFunc_251
    BattleFunc_251 = 30
    v5305.Power = BattleFunc_251
    BattleFunc_251 = "Single"
    v5305.Target = BattleFunc_251
    local function BattleFunc_252(p1045, p1046, p1047)
        if not p1045:GetItemInfo(p1047).Grease then
            p1045:AddDialogue(p1045.ActionList, "&DOODLENAME," .. p1047.ID .. "&" .. " cannot be wrapped due to Grease!")
            return 
        end
        local v3889 = p1047.Decoy
        v3889 = p1047.Wrapped
        v3889 = p1047.Wrapped
        v3889 = p1047.currenthp
        local v3890 = 0
        if v3889 > v3890 then
            v3889 = math.random
            v3890 = 3
            p1047.Wrapped = v3889(v3890, 4)
            p1047.WrappedBy = p1046.ID
            v3884 = "&DOODLENAME,"
            v3885 = p1047.ID
            v3886 = "&"
            v3887 = " is now wrapped and can't escape!"
            p1045:AddDialogue(p1045.ActionList, v3884 .. v3885 .. v3886 .. v3887)
            local v3895 = p1047.EndFuncs
            if v3895 then
                v3895 = {}
            end
            p1047.EndFuncs = v3895
            local v3896 = p1047.EndFuncs
            local v3917 = v3896.Wrapped
            if v3917 then
                v3917 = p1047.EndFuncs
                v3896 = function(p1048, p1049)
                    local v3897 = p1049.Wrapped
                    if not v3897 then
                        v3897 = p1049.Wrapped
                        local v3898 = 0
                        if v3897 > v3898 then
                            v3898 = p1049.Wrapped
                            v3897 = v3898 - 1
                            p1049.Wrapped = v3897
                            v3898 = p1049.Stats.hp / 12
                            v3897 = math.floor
                            local v3903 = {}
                            local v3904 = "&DOODLENAME,"
                            local v3905 = p1049.ID
                            local v3908 = v3904 .. v3905 .. "&" .. " lost health from being wrapped!"
                            v3903[1] = v3908
                            p1048:TakeDamage(p1049, v3897(v3898), v3903)
                            if 0 >= p1049.Wrapped then
                                v3908 = p1049.ID
                                v3904 = "&"
                                v3905 = " is no longer wrapped!"
                                p1048:AddDialogue(p1048.ActionList, "&DOODLENAME," .. v3908 .. v3904 .. v3905)
                            end
                        end
                    end
                end
                v3917.Wrapped = v3896
            end
        end
    end
    v5305.BattleFunc = BattleFunc_252
    v4663.Wrap = v5305
    local v5306 = {}
    BattleFunc_252 = "Plant"
    v5306.Type = BattleFunc_252
    BattleFunc_252 = "The user sends parasitic seeds at the target. At the end of each turn, those seeds steals health from the target."
    v5306.Desc = BattleFunc_252
    BattleFunc_252 = "Passive"
    v5306.Category = BattleFunc_252
    BattleFunc_252 = 90
    v5306.Accuracy = BattleFunc_252
    BattleFunc_252 = 10
    v5306.Uses = BattleFunc_252
    BattleFunc_252 = nil
    v5306.Power = BattleFunc_252
    BattleFunc_252 = "Single"
    v5306.Target = BattleFunc_252
    local function BattleFunc_253(p1050, p1051, p1052)
        if not p1052.LeechSeed then
            p1050:AddDialogue(p1050.ActionList, "&DOODLENAME," .. p1052.ID .. "&" .. " already has parasitic seeds attached!")
            return 
        end
        if not v2.IsType(p1052, "Plant") then
            p1050:AddDialogue(p1050.ActionList, "It had no effect!")
            return 
        end
        local v3932 = p1052.Ability
        return 
        v3932 = true
        p1052.LeechSeed = v3932
        p1052.LeechSeedHeal = p1051.ID
        local v3971 = p1052.EndFuncs
        if v3971 then
            v3971 = {}
        end
        p1052.EndFuncs = v3971
        v3921 = "&DOODLENAME,"
        v3922 = p1052.ID
        v3923 = "&"
        v3924 = " was seeded!"
        p1050:AddDialogue(p1050.ActionList, v3921 .. v3922 .. v3923 .. v3924)
        local v3935 = p1052.EndFuncs
        local v3936 = v3935.LeechSeed
        if v3936 then
            v3936 = p1052.EndFuncs
            v3935 = function(p1053, p1054)
                local v3940 = p1053:GetTargetFromID(p1054.LeechSeedHeal, true)
                local v3941 = p1054.LeechSeed
                if not v3941 then
                    v3941 = v3940.currenthp
                    local v3942 = 0
                    if v3941 > v3942 then
                        v3941 = p1054.Ability
                        local v3944 = p1054.Stats.hp
                        v3942 = v3944 / 16
                        v3941 = math.floor
                        local v3945 = v3941(v3942)
                        local v3946 = {}
                        v3946.Player = p1052.Owner
                        v3946.User = p1051
                        v3946.Doodle = p1052
                        v3946.Action = "PlayAnim"
                        v3946.Move = "Leaf Sap"
                        p1053:AddAction(p1053.ActionList, v3946)
                        local v3967 = {}
                        v3967[1] = "&DOODLENAME," .. p1054.ID .. "&" .. "'s health was sapped from the parasitic seeds!"
                        p1053:TakeDamage(p1054, v3945, v3967)
                        local v3957 = 0
                        if v3945 > v3957 then
                            v3944 = v3940.Stats
                            v3957 = v3944.hp
                            v3944 = v3940.currenthp
                            if v3957 > v3944 then
                                v3944 = p1053:GetTraitInfo(p1054).Tainted
                                if not v3944 then
                                    v3945 = -v3945
                                end
                                p1053:TakeDamage(v3940, -v3945)
                            end
                        end
                    end
                end
            end
            v3936.LeechSeed = v3935
        end
    end
    v5306.BattleFunc = BattleFunc_253
    v4663["Parasitic Seeds"] = v5306
    local v5307 = {}
    BattleFunc_253 = "Basic"
    v5307.Type = BattleFunc_253
    BattleFunc_253 = "A biting attack that marks the target if it hits."
    v5307.Desc = BattleFunc_253
    BattleFunc_253 = "Physical"
    v5307.Category = BattleFunc_253
    BattleFunc_253 = 100
    v5307.Accuracy = BattleFunc_253
    BattleFunc_253 = true
    v5307.Contact = BattleFunc_253
    BattleFunc_253 = 20
    v5307.Uses = BattleFunc_253
    BattleFunc_253 = true
    v5307.Biting = BattleFunc_253
    BattleFunc_253 = {}
    local v5308 = {}
    local v5309 = {}
    v5309.AnimType = "Bite"
    v5309.Color = Color3.fromRGB(204, 204, 204)
    v5309.Rotation = 0
    v5309.Size = 0.75
    v5309.Times = 1
    v5309.Wait = 0.1
    v5309.Pitch = 0.8
    v5308[1] = v5309
    BattleFunc_253.Order = v5308
    v5307.MoveAnim = BattleFunc_253
    BattleFunc_253 = 20
    v5307.Power = BattleFunc_253
    BattleFunc_253 = "Single"
    v5307.Target = BattleFunc_253
    local function BattleFunc_254(p1055, p1056, p1057)
        v3(p1055, p1056, p1057, 100, "Marked")
    end
    v5307.BattleFunc = BattleFunc_254
    v4663["Marking Bite"] = v5307
    local v5317 = {}
    BattleFunc_254 = "Ice"
    v5317.Type = BattleFunc_254
    BattleFunc_254 = "The user freezes the air around the target, causing massive damage and a guaranteed chance to freeze."
    v5317.Desc = BattleFunc_254
    BattleFunc_254 = "Magical"
    v5317.Category = BattleFunc_254
    BattleFunc_254 = 50
    v5317.Accuracy = BattleFunc_254
    BattleFunc_254 = 5
    v5317.Uses = BattleFunc_254
    BattleFunc_254 = 100
    v5317.Power = BattleFunc_254
    BattleFunc_254 = "Single"
    v5317.Target = BattleFunc_254
    local function BattleFunc_255(p1058, p1059, p1060)
        v3(p1058, p1059, p1060, 100, "Frozen")
    end
    v5317.BattleFunc = BattleFunc_255
    v4663["Flash Freeze"] = v5317
    local v5318 = {}
    BattleFunc_255 = "Basic"
    v5318.Type = BattleFunc_255
    BattleFunc_255 = "The user becomes the center of attention, making them the prime target for all the enemy's attacks. Will automatically fail if used in succession."
    v5318.Desc = BattleFunc_255
    BattleFunc_255 = "Passive"
    v5318.Category = BattleFunc_255
    BattleFunc_255 = true
    v5318.Accuracy = BattleFunc_255
    BattleFunc_255 = 20
    v5318.Uses = BattleFunc_255
    BattleFunc_255 = 2
    v5318.Priority = BattleFunc_255
    BattleFunc_255 = nil
    v5318.Power = BattleFunc_255
    BattleFunc_255 = "Self"
    v5318.Target = BattleFunc_255
    local function BattleFunc_256(p1061, p1062, p1063)
        local v3991 = p1062.ProtectChance
        p1061:AddDialogue(p1061.ActionList, "The move failed!")
        p1062.ProtectChance = nil
        return 
        local v3997
        local v4000, v4001, v4002 = pairs(p1061:FindSide(p1062))
        for v4006, v4004 in v4000, v4001, v4002 do
            local v4003 = v4004.CoA
            if not v4003 then
                v4003 = v4004.currenthp
                if v4003 > 0 then
                    v3997 = true
                end
            end
        end
        if v3997 then
            v4000 = true
            p1062.CoA = v4000
            v4001 = p1062.ProtectChance
            if not v4001 then
                v4001 = p1062.ProtectChance
                v4000 = v4001 + 1
                if v4000 then
                    v4000 = 1
                end
                p1062.ProtectChance = v4000
                v4002 = p1061.ActionList
                v4004 = "&DOODLENAME,"
                v4003 = p1062.ID
                v4005 = "&"
                v4006 = v4004 .. v4003 .. v4005 .. " is now the Center of Attention!"
                p1061:AddDialogue(v4002, v4006)
                return 
            end
        end
    end
    v5318.BattleFunc = BattleFunc_256
    v4663["Center of Attention"] = v5318
    local v5319 = {}
    BattleFunc_256 = "Poison"
    v5319.Type = BattleFunc_256
    BattleFunc_256 = "User imbues its fists with poison and takes a punch at the target. Has a chance to poison the target."
    v5319.Desc = BattleFunc_256
    BattleFunc_256 = "Physical"
    v5319.Category = BattleFunc_256
    BattleFunc_256 = 100
    v5319.Accuracy = BattleFunc_256
    BattleFunc_256 = 15
    v5319.Uses = BattleFunc_256
    BattleFunc_256 = true
    v5319.Contact = BattleFunc_256
    BattleFunc_256 = 70
    v5319.Power = BattleFunc_256
    BattleFunc_256 = "Single"
    v5319.Target = BattleFunc_256
    local function BattleFunc_257(p1064, p1065, p1066)
        v3(p1064, p1065, p1066, 10, "Poison")
    end
    v5319.BattleFunc = BattleFunc_257
    v4663["Poison Punch"] = v5319
    local v5320 = {}
    BattleFunc_257 = "Food"
    v5320.Type = BattleFunc_257
    BattleFunc_257 = "User imbues its fists with glaze and takes a punch at the target. Has a chance to lower the target's accuracy."
    v5320.Desc = BattleFunc_257
    BattleFunc_257 = "Physical"
    v5320.Category = BattleFunc_257
    BattleFunc_257 = 100
    v5320.Accuracy = BattleFunc_257
    BattleFunc_257 = 15
    v5320.Uses = BattleFunc_257
    BattleFunc_257 = true
    v5320.Contact = BattleFunc_257
    BattleFunc_257 = 70
    v5320.Power = BattleFunc_257
    BattleFunc_257 = "Single"
    v5320.Target = BattleFunc_257
    local function BattleFunc_258(p1067, p1068, p1069)
        local v4021 = {}
        v4021.acc = -1
        v4(p1067, p1068, p1069, 20, v4021)
    end
    v5320.BattleFunc = BattleFunc_258
    v4663["Glaze Punch"] = v5320
    local v5321 = {}
    BattleFunc_258 = "Fire"
    v5321.Type = BattleFunc_258
    BattleFunc_258 = "User imbues its fists with fire and takes a punch at the target. Has a decent chance to burn the target."
    v5321.Desc = BattleFunc_258
    BattleFunc_258 = "Physical"
    v5321.Category = BattleFunc_258
    BattleFunc_258 = 100
    v5321.Accuracy = BattleFunc_258
    BattleFunc_258 = 15
    v5321.Uses = BattleFunc_258
    BattleFunc_258 = true
    v5321.Contact = BattleFunc_258
    BattleFunc_258 = 70
    v5321.Power = BattleFunc_258
    BattleFunc_258 = "Single"
    v5321.Target = BattleFunc_258
    local function BattleFunc_259(p1070, p1071, p1072)
        v3(p1070, p1071, p1072, 30, "Burn")
    end
    v5321.BattleFunc = BattleFunc_259
    v4663["Fiery Punch"] = v5321
    local v5322 = {}
    BattleFunc_259 = "Spark"
    v5322.Type = BattleFunc_259
    BattleFunc_259 = "User imbues its fists with electricity and takes a punch at the target. Has a chance to paralyze the target."
    v5322.Desc = BattleFunc_259
    BattleFunc_259 = "Physical"
    v5322.Category = BattleFunc_259
    BattleFunc_259 = 100
    v5322.Accuracy = BattleFunc_259
    BattleFunc_259 = 15
    v5322.Uses = BattleFunc_259
    BattleFunc_259 = true
    v5322.Contact = BattleFunc_259
    BattleFunc_259 = 70
    v5322.Power = BattleFunc_259
    BattleFunc_259 = "Single"
    v5322.Target = BattleFunc_259
    local function BattleFunc_260(p1073, p1074, p1075)
        v3(p1073, p1074, p1075, 10, "Paralysis")
    end
    v5322.BattleFunc = BattleFunc_260
    v4663["Electro Punch"] = v5322
    local v5323 = {}
    BattleFunc_260 = "Fire"
    v5323.Type = BattleFunc_260
    BattleFunc_260 = "User imbues its fangs with fire and takes a bite at the target. Has a chance to burn the target."
    v5323.Desc = BattleFunc_260
    BattleFunc_260 = "Physical"
    v5323.Category = BattleFunc_260
    BattleFunc_260 = 90
    v5323.Accuracy = BattleFunc_260
    BattleFunc_260 = 15
    v5323.Uses = BattleFunc_260
    BattleFunc_260 = true
    v5323.Contact = BattleFunc_260
    BattleFunc_260 = true
    v5323.Biting = BattleFunc_260
    BattleFunc_260 = {}
    local v5324 = {}
    local v5325 = {}
    v5325.AnimType = "Bite"
    v5325.Color = Color3.fromRGB(230, 145, 56)
    v5325.Rotation = -45
    v5325.Size = 0.75
    v5325.Times = 1
    v5325.Wait = 0.1
    v5325.Pitch = 0.8
    v5324[1] = v5325
    BattleFunc_260.Order = v5324
    v5323.MoveAnim = BattleFunc_260
    BattleFunc_260 = 70
    v5323.Power = BattleFunc_260
    BattleFunc_260 = "Single"
    v5323.Target = BattleFunc_260
    local function BattleFunc_261(p1076, p1077, p1078)
        v3(p1076, p1077, p1078, 20, "Burn")
    end
    v5323.BattleFunc = BattleFunc_261
    v4663["Fiery Bite"] = v5323
    local v5333 = {}
    BattleFunc_261 = "Ice"
    v5333.Type = BattleFunc_261
    BattleFunc_261 = "User imbues its fangs with ice and takes a bite at the target. Has a chance to freeze the target."
    v5333.Desc = BattleFunc_261
    BattleFunc_261 = "Physical"
    v5333.Category = BattleFunc_261
    BattleFunc_261 = 90
    v5333.Accuracy = BattleFunc_261
    BattleFunc_261 = 15
    v5333.Uses = BattleFunc_261
    BattleFunc_261 = true
    v5333.Contact = BattleFunc_261
    BattleFunc_261 = true
    v5333.Biting = BattleFunc_261
    BattleFunc_261 = {}
    local v5334 = {}
    local v5335 = {}
    v5335.AnimType = "Bite"
    v5335.Color = Color3.fromRGB(159, 197, 232)
    v5335.Rotation = -45
    v5335.Size = 0.75
    v5335.Times = 1
    v5335.Wait = 0.1
    v5335.Pitch = 0.8
    v5334[1] = v5335
    BattleFunc_261.Order = v5334
    v5333.MoveAnim = BattleFunc_261
    BattleFunc_261 = 70
    v5333.Power = BattleFunc_261
    BattleFunc_261 = "Single"
    v5333.Target = BattleFunc_261
    local function BattleFunc_262(p1079, p1080, p1081)
        v3(p1079, p1080, p1081, 10, "Frozen")
    end
    v5333.BattleFunc = BattleFunc_262
    v4663["Icy Bite"] = v5333
    local v5343 = {}
    BattleFunc_262 = "Spark"
    v5343.Type = BattleFunc_262
    BattleFunc_262 = "User imbues its fangs with electricity and takes a bite at the target. Has a chance to paralyze the target."
    v5343.Desc = BattleFunc_262
    BattleFunc_262 = "Physical"
    v5343.Category = BattleFunc_262
    BattleFunc_262 = 90
    v5343.Accuracy = BattleFunc_262
    BattleFunc_262 = 15
    v5343.Uses = BattleFunc_262
    BattleFunc_262 = true
    v5343.Contact = BattleFunc_262
    BattleFunc_262 = true
    v5343.Biting = BattleFunc_262
    BattleFunc_262 = {}
    local v5344 = {}
    local v5345 = {}
    v5345.AnimType = "Bite"
    v5345.Color = Color3.fromRGB(255, 255, 0)
    v5345.Rotation = -45
    v5345.Size = 0.75
    v5345.Times = 1
    v5345.Wait = 0.1
    v5345.Pitch = 0.8
    v5344[1] = v5345
    BattleFunc_262.Order = v5344
    v5343.MoveAnim = BattleFunc_262
    BattleFunc_262 = 70
    v5343.Power = BattleFunc_262
    BattleFunc_262 = "Single"
    v5343.Target = BattleFunc_262
    local function BattleFunc_263(p1082, p1083, p1084)
        v3(p1082, p1083, p1084, 10, "Paralysis")
    end
    v5343.BattleFunc = BattleFunc_263
    v4663["Electro Bite"] = v5343
    local v5353 = {}
    BattleFunc_263 = "Fire"
    v5353.Type = BattleFunc_263
    BattleFunc_263 = "User tosses lava at the enemy. High chance to burn."
    v5353.Desc = BattleFunc_263
    BattleFunc_263 = "Magical"
    v5353.Category = BattleFunc_263
    BattleFunc_263 = 100
    v5353.Accuracy = BattleFunc_263
    BattleFunc_263 = 20
    v5353.Uses = BattleFunc_263
    BattleFunc_263 = true
    v5353.Contact = BattleFunc_263
    BattleFunc_263 = 70
    v5353.Power = BattleFunc_263
    BattleFunc_263 = "Single"
    v5353.Target = BattleFunc_263
    local function BattleFunc_264(p1085, p1086, p1087)
        v3(p1085, p1086, p1087, 30, "Burn")
    end
    v5353.BattleFunc = BattleFunc_264
    v4663["Lava Toss"] = v5353
    local v5354 = {}
    BattleFunc_264 = "Fire"
    v5354.Type = BattleFunc_264
    BattleFunc_264 = "User strikes the enemy with intense heat. Chance to burn."
    v5354.Desc = BattleFunc_264
    BattleFunc_264 = "Physical"
    v5354.Category = BattleFunc_264
    BattleFunc_264 = 100
    v5354.Accuracy = BattleFunc_264
    BattleFunc_264 = 20
    v5354.Uses = BattleFunc_264
    BattleFunc_264 = true
    v5354.Contact = BattleFunc_264
    BattleFunc_264 = 75
    v5354.Power = BattleFunc_264
    BattleFunc_264 = "Single"
    v5354.Target = BattleFunc_264
    local function BattleFunc_265(p1088, p1089, p1090)
        v3(p1088, p1089, p1090, 10, "Burn")
    end
    v5354.BattleFunc = BattleFunc_265
    v4663["Heat Bash"] = v5354
    local v5355 = {}
    BattleFunc_265 = "Poison"
    v5355.Type = BattleFunc_265
    BattleFunc_265 = "User imbues its fangs with venom and takes a bite at the target. Has a chance to poison the target."
    v5355.Desc = BattleFunc_265
    BattleFunc_265 = "Physical"
    v5355.Category = BattleFunc_265
    BattleFunc_265 = 90
    v5355.Accuracy = BattleFunc_265
    BattleFunc_265 = 15
    v5355.Uses = BattleFunc_265
    BattleFunc_265 = true
    v5355.Contact = BattleFunc_265
    BattleFunc_265 = true
    v5355.Biting = BattleFunc_265
    BattleFunc_265 = {}
    local v5356 = {}
    local v5357 = {}
    v5357.AnimType = "Bite"
    v5357.Color = Color3.fromRGB(180, 167, 214)
    v5357.Rotation = -45
    v5357.Size = 0.75
    v5357.Times = 1
    v5357.Wait = 0.1
    v5357.Pitch = 0.8
    v5356[1] = v5357
    BattleFunc_265.Order = v5356
    v5355.MoveAnim = BattleFunc_265
    BattleFunc_265 = 65
    v5355.Power = BattleFunc_265
    BattleFunc_265 = "Single"
    v5355.Target = BattleFunc_265
    local function BattleFunc_266(p1091, p1092, p1093)
        v3(p1091, p1092, p1093, 10, "Poison")
    end
    v5355.BattleFunc = BattleFunc_266
    v4663["Venom Bite"] = v5355
    local v5365 = {}
    BattleFunc_266 = "Crystal"
    v5365.Type = BattleFunc_266
    local function Times_13(p1094)
        return 3
    end
    v5365.Times = Times_13
    Times_13 = "The user sends 3 missiles made out of various gems and minerals at the target. Each hit has a chance to lower the target's magical defense."
    v5365.Desc = Times_13
    Times_13 = "Magical"
    v5365.Category = Times_13
    Times_13 = 100
    v5365.Accuracy = Times_13
    Times_13 = 10
    v5365.Uses = Times_13
    Times_13 = 30
    v5365.Power = Times_13
    Times_13 = "Single"
    v5365.Target = Times_13
    local function BattleFunc_267(p1095, p1096, p1097)
        local v4103 = {}
        v4103.mdef = -1
        v4(p1095, p1096, p1097, 10, v4103)
    end
    v5365.BattleFunc = BattleFunc_267
    v4663["Alloy Missiles"] = v5365
    local v5366 = {}
    BattleFunc_267 = "Metal"
    v5366.Type = BattleFunc_267
    BattleFunc_267 = "The user gathers all minerals around it and releases them at the target. It may also lower the target's defense."
    v5366.Desc = BattleFunc_267
    BattleFunc_267 = "Magical"
    v5366.Category = BattleFunc_267
    BattleFunc_267 = 100
    v5366.Accuracy = BattleFunc_267
    BattleFunc_267 = 10
    v5366.Uses = BattleFunc_267
    BattleFunc_267 = 85
    v5366.Power = BattleFunc_267
    BattleFunc_267 = "Single"
    v5366.Target = BattleFunc_267
    local function BattleFunc_268(p1098, p1099, p1100)
        local v4111 = {}
        v4111.def = -1
        v4(p1098, p1099, p1100, 10, v4111)
    end
    v5366.BattleFunc = BattleFunc_268
    v4663["Mineral Cannon"] = v5366
    local v5367 = {}
    BattleFunc_268 = "Food"
    v5367.Type = BattleFunc_268
    BattleFunc_268 = "User chomps on the target as if they were a snack."
    v5367.Desc = BattleFunc_268
    BattleFunc_268 = "Physical"
    v5367.Category = BattleFunc_268
    BattleFunc_268 = 100
    v5367.Accuracy = BattleFunc_268
    BattleFunc_268 = true
    v5367.Contact = BattleFunc_268
    BattleFunc_268 = 10
    v5367.Uses = BattleFunc_268
    BattleFunc_268 = true
    v5367.Biting = BattleFunc_268
    BattleFunc_268 = {}
    local v5368 = {}
    local v5369 = {}
    v5369.AnimType = "Bite"
    v5369.Color = Color3.fromRGB(249, 203, 156)
    v5369.Rotation = -45
    v5369.Size = 0.75
    v5369.Times = 1
    v5369.Wait = 0.1
    v5369.Pitch = 0.8
    v5368[1] = v5369
    BattleFunc_268.Order = v5368
    v5367.MoveAnim = BattleFunc_268
    BattleFunc_268 = 60
    v5367.Power = BattleFunc_268
    BattleFunc_268 = "Single"
    v5367.Target = BattleFunc_268
    v4663["Snack Chomp"] = v5367
    local v5377 = {}
    BattleFunc_268 = "Metal"
    v5377.Type = BattleFunc_268
    BattleFunc_268 = "User chomps down on the target with a force strong enough to crush steel."
    v5377.Desc = BattleFunc_268
    BattleFunc_268 = "Physical"
    v5377.Category = BattleFunc_268
    BattleFunc_268 = 100
    v5377.Accuracy = BattleFunc_268
    BattleFunc_268 = true
    v5377.Contact = BattleFunc_268
    BattleFunc_268 = 20
    v5377.Uses = BattleFunc_268
    BattleFunc_268 = true
    v5377.Biting = BattleFunc_268
    BattleFunc_268 = {}
    local v5378 = {}
    local v5379 = {}
    v5379.AnimType = "Bite"
    v5379.Color = Color3.fromRGB(136, 160, 177)
    v5379.Rotation = -45
    v5379.Size = 0.75
    v5379.Times = 1
    v5379.Wait = 0.1
    v5379.Pitch = 0.8
    v5378[1] = v5379
    BattleFunc_268.Order = v5378
    v5377.MoveAnim = BattleFunc_268
    BattleFunc_268 = 60
    v5377.Power = BattleFunc_268
    BattleFunc_268 = "Single"
    v5377.Target = BattleFunc_268
    v4663["Iron Chomp"] = v5377
    local v5387 = {}
    BattleFunc_268 = "???"
    v5387.Type = BattleFunc_268
    BattleFunc_268 = "a basic attack"
    v5387.Desc = BattleFunc_268
    BattleFunc_268 = "Physical"
    v5387.Category = BattleFunc_268
    BattleFunc_268 = true
    v5387.Accuracy = BattleFunc_268
    BattleFunc_268 = true
    v5387.Contact = BattleFunc_268
    BattleFunc_268 = 100
    v5387.Uses = BattleFunc_268
    BattleFunc_268 = 40
    v5387.Power = BattleFunc_268
    BattleFunc_268 = "RandomEnemy"
    v5387.Target = BattleFunc_268
    local function BattleFunc_269(p1101, p1102, p1103, p1104)
        local v4122 = p1102.Stats
        local v4126 = math.floor(v4122.hp * 0.35)
        if v4126 > 0 then
            v4122 = p1102
            local v4129 = {}
            v4129[1] = "&DOODLENAME," .. p1102.ID .. "&" .. " lost health from recoil!"
            p1101:TakeDamage(v4122, v4126, v4129, nil, true)
        end
    end
    v5387.BattleFunc = BattleFunc_269
    v4663.Desperation = v5387
    local v5388 = {}
    BattleFunc_269 = "Spirit"
    v5388.Type = BattleFunc_269
    BattleFunc_269 = "Using spritual energy, drains the life of the target. Restores the user for half the damage done."
    v5388.Desc = BattleFunc_269
    BattleFunc_269 = "Magical"
    v5388.Category = BattleFunc_269
    BattleFunc_269 = 100
    v5388.Accuracy = BattleFunc_269
    BattleFunc_269 = {}
    local v5389 = {}
    local v5390 = {}
    v5390.AnimType = "Sap"
    v5390.Color = "Spirit"
    v5390.Amount = 10
    v5389[1] = v5390
    BattleFunc_269.Order = v5389
    v5388.MoveAnim = BattleFunc_269
    BattleFunc_269 = 15
    v5388.Uses = BattleFunc_269
    BattleFunc_269 = 40
    v5388.Power = BattleFunc_269
    BattleFunc_269 = "Single"
    v5388.Target = BattleFunc_269
    BattleFunc_269 = true
    v5388.Drain = BattleFunc_269
    local function BattleFunc_270(p1105, p1106, p1107, p1108)
        local v4140 = math.floor(p1108 * 0.5)
        local v4144 = 0
        if v4140 > v4144 then
            v4144 = p1106.Stats.hp
            if v4144 > p1106.currenthp then
                v4144 = p1105:GetTraitInfo(p1107).Tainted
                if not v4144 then
                    v4140 = -v4140
                end
                v4144 = 0
                if v4140 > v4144 then
                    p1105:AddDialogue(p1105.ActionList, "&DOODLENAME," .. p1106.ID .. "&" .. " restored health!")
                else
                    v4147 = "&DOODLENAME,"
                    v4148 = p1106.ID
                    v4149 = "&"
                    v4150 = " took damage from &DOODLENAME,"
                    p1105:AddDialogue(p1105.ActionList, v4147 .. v4148 .. v4149 .. v4150 .. p1107.ID .. "& Tainted trait!")
                end
                p1105:TakeDamage(p1106, -v4140)
            end
        end
    end
    v5388.BattleFunc = BattleFunc_270
    v4663["Drain Life"] = v5388
    local v5394 = {}
    BattleFunc_270 = "Dark"
    v5394.Type = BattleFunc_270
    BattleFunc_270 = "Shoots a weak shadow bolt at the enemy."
    v5394.Desc = BattleFunc_270
    BattleFunc_270 = "Magical"
    v5394.Category = BattleFunc_270
    BattleFunc_270 = 100
    v5394.Accuracy = BattleFunc_270
    BattleFunc_270 = 25
    v5394.Uses = BattleFunc_270
    BattleFunc_270 = 50
    v5394.Power = BattleFunc_270
    BattleFunc_270 = "Single"
    v5394.Target = BattleFunc_270
    v4663.Shadowbolt = v5394
    local v5395 = {}
    BattleFunc_270 = "Dark"
    v5395.Type = BattleFunc_270
    BattleFunc_270 = "Shoots a blast of darkness at a target. Has a chance to lower the target's magic defense."
    v5395.Desc = BattleFunc_270
    BattleFunc_270 = "Magical"
    v5395.Category = BattleFunc_270
    BattleFunc_270 = 100
    v5395.Accuracy = BattleFunc_270
    BattleFunc_270 = 15
    v5395.Uses = BattleFunc_270
    BattleFunc_270 = 80
    v5395.Power = BattleFunc_270
    BattleFunc_270 = "Single"
    v5395.Target = BattleFunc_270
    local function BattleFunc_271(p1109, p1110, p1111)
        local v4167 = {}
        v4167.mdef = -1
        v4(p1109, p1110, p1111, 15, v4167)
    end
    v5395.BattleFunc = BattleFunc_271
    v4663["Dark Blast"] = v5395
    local v5396 = {}
    BattleFunc_271 = "Dark"
    v5396.Type = BattleFunc_271
    BattleFunc_271 = "Steals a portion of the soul of the target. Restores the user for half the damage done."
    v5396.Desc = BattleFunc_271
    BattleFunc_271 = "Magical"
    v5396.Category = BattleFunc_271
    BattleFunc_271 = 100
    v5396.Accuracy = BattleFunc_271
    BattleFunc_271 = 10
    v5396.Uses = BattleFunc_271
    BattleFunc_271 = 70
    v5396.Power = BattleFunc_271
    BattleFunc_271 = {}
    local v5397 = {}
    local v5398 = {}
    v5398.AnimType = "Sap"
    v5398.Color = "Dark"
    v5398.Amount = 10
    v5397[1] = v5398
    BattleFunc_271.Order = v5397
    v5396.MoveAnim = BattleFunc_271
    BattleFunc_271 = true
    v5396.Drain = BattleFunc_271
    BattleFunc_271 = "Single"
    v5396.Target = BattleFunc_271
    local function BattleFunc_272(p1112, p1113, p1114, p1115)
        local v4172 = math.floor(p1115 * 0.5)
        local v4176 = 0
        if v4172 > v4176 then
            v4176 = p1113.Stats.hp
            if v4176 > p1113.currenthp then
                v4176 = p1112:GetTraitInfo(p1114).Tainted
                if not v4176 then
                    v4172 = -v4172
                end
                v4176 = 0
                if v4172 > v4176 then
                    p1112:AddDialogue(p1112.ActionList, "&DOODLENAME," .. p1113.ID .. "&" .. " restored health!")
                else
                    v4179 = "&DOODLENAME,"
                    v4180 = p1113.ID
                    v4181 = "&"
                    v4182 = " took damage from &DOODLENAME,"
                    p1112:AddDialogue(p1112.ActionList, v4179 .. v4180 .. v4181 .. v4182 .. p1114.ID .. "& Tainted trait!")
                end
                p1112:TakeDamage(p1113, -v4172)
            end
        end
    end
    v5396.BattleFunc = BattleFunc_272
    v4663["Siphon Soul"] = v5396
    local v5402 = {}
    BattleFunc_272 = "Plant"
    v5402.Type = BattleFunc_272
    BattleFunc_272 = "Shoots a nutrient-sucking leaf at the target. Restores the user for half the damage done."
    v5402.Desc = BattleFunc_272
    BattleFunc_272 = "Magical"
    v5402.Category = BattleFunc_272
    BattleFunc_272 = 100
    v5402.Accuracy = BattleFunc_272
    BattleFunc_272 = 20
    v5402.Uses = BattleFunc_272
    BattleFunc_272 = {}
    local v5403 = {}
    local v5404 = {}
    v5404.AnimType = "Sap"
    v5404.Color = "Plant"
    v5404.Amount = 6
    v5403[1] = v5404
    BattleFunc_272.Order = v5403
    v5402.MoveAnim = BattleFunc_272
    BattleFunc_272 = 40
    v5402.Power = BattleFunc_272
    BattleFunc_272 = true
    v5402.Drain = BattleFunc_272
    BattleFunc_272 = "Single"
    v5402.Target = BattleFunc_272
    local function BattleFunc_273(p1116, p1117, p1118, p1119)
        local v4196 = math.floor(p1119 * 0.5)
        local v4200 = 0
        if v4196 > v4200 then
            v4200 = p1117.Stats.hp
            if v4200 > p1117.currenthp then
                v4200 = p1116:GetTraitInfo(p1118).Tainted
                if not v4200 then
                    v4196 = -v4196
                end
                v4200 = 0
                if v4196 > v4200 then
                    p1116:AddDialogue(p1116.ActionList, "&DOODLENAME," .. p1117.ID .. "&" .. " restored health!")
                else
                    v4203 = "&DOODLENAME,"
                    v4204 = p1117.ID
                    v4205 = "&"
                    v4206 = " took damage from &DOODLENAME,"
                    p1116:AddDialogue(p1116.ActionList, v4203 .. v4204 .. v4205 .. v4206 .. p1118.ID .. "& Tainted trait!")
                end
                p1116:TakeDamage(p1117, -v4196)
            end
        end
    end
    v5402.BattleFunc = BattleFunc_273
    v4663["Leaf Sap"] = v5402
    local v5408 = {}
    BattleFunc_273 = "Plant"
    v5408.Type = BattleFunc_273
    BattleFunc_273 = "Uses plants to sap the life of the target. Restores the user for half the damage done."
    v5408.Desc = BattleFunc_273
    BattleFunc_273 = "Magical"
    v5408.Category = BattleFunc_273
    BattleFunc_273 = {}
    local v5409 = {}
    local v5410 = {}
    v5410.AnimType = "Sap"
    v5410.Color = "Plant"
    v5410.Amount = 10
    v5409[1] = v5410
    BattleFunc_273.Order = v5409
    v5408.MoveAnim = BattleFunc_273
    BattleFunc_273 = 100
    v5408.Accuracy = BattleFunc_273
    BattleFunc_273 = 15
    v5408.Uses = BattleFunc_273
    BattleFunc_273 = 65
    v5408.Power = BattleFunc_273
    BattleFunc_273 = true
    v5408.Drain = BattleFunc_273
    BattleFunc_273 = "Single"
    v5408.Target = BattleFunc_273
    local function BattleFunc_274(p1120, p1121, p1122, p1123)
        local v4220 = math.floor(p1123 * 0.5)
        local v4224 = 0
        if v4220 > v4224 then
            v4224 = p1121.Stats.hp
            if v4224 > p1121.currenthp then
                v4224 = p1120:GetTraitInfo(p1122).Tainted
                if not v4224 then
                    v4220 = -v4220
                end
                v4224 = 0
                if v4220 > v4224 then
                    p1120:AddDialogue(p1120.ActionList, "&DOODLENAME," .. p1121.ID .. "&" .. " restored health!")
                else
                    v4227 = "&DOODLENAME,"
                    v4228 = p1121.ID
                    v4229 = "&"
                    v4230 = " took damage from &DOODLENAME,"
                    p1120:AddDialogue(p1120.ActionList, v4227 .. v4228 .. v4229 .. v4230 .. p1122.ID .. "& Tainted trait!")
                end
                p1120:TakeDamage(p1121, -v4220)
            end
        end
    end
    v5408.BattleFunc = BattleFunc_274
    v4663["Plant Sap"] = v5408
    local v5414 = {}
    BattleFunc_274 = "Plant"
    v5414.Type = BattleFunc_274
    BattleFunc_274 = "Saps the life of the target. Restores the user for half the damage done."
    v5414.Desc = BattleFunc_274
    BattleFunc_274 = "Magical"
    v5414.Category = BattleFunc_274
    BattleFunc_274 = 100
    v5414.Accuracy = BattleFunc_274
    BattleFunc_274 = 10
    v5414.Uses = BattleFunc_274
    BattleFunc_274 = 90
    v5414.Power = BattleFunc_274
    BattleFunc_274 = {}
    local v5415 = {}
    local v5416 = {}
    v5416.AnimType = "Sap"
    v5416.Color = "Plant"
    v5416.Amount = 12
    v5415[1] = v5416
    BattleFunc_274.Order = v5415
    v5414.MoveAnim = BattleFunc_274
    BattleFunc_274 = "Single"
    v5414.Target = BattleFunc_274
    local function BattleFunc_275(p1124, p1125, p1126, p1127)
        local v4244 = math.floor(p1127 * 0.5)
        local v4248 = 0
        if v4244 > v4248 then
            v4248 = p1125.Stats.hp
            if v4248 > p1125.currenthp then
                v4248 = p1124:GetTraitInfo(p1126).Tainted
                if not v4248 then
                    v4244 = -v4244
                end
                v4248 = 0
                if v4244 > v4248 then
                    p1124:AddDialogue(p1124.ActionList, "&DOODLENAME," .. p1125.ID .. "&" .. " restored health!")
                else
                    v4251 = "&DOODLENAME,"
                    v4252 = p1125.ID
                    v4253 = "&"
                    v4254 = " took damage from &DOODLENAME,"
                    p1124:AddDialogue(p1124.ActionList, v4251 .. v4252 .. v4253 .. v4254 .. p1126.ID .. "& Tainted trait!")
                end
                p1124:TakeDamage(p1125, -v4244)
            end
        end
    end
    v5414.BattleFunc = BattleFunc_275
    v4663["Life Sap"] = v5414
    local v5420 = {}
    BattleFunc_275 = "Mind"
    v5420.Type = BattleFunc_275
    BattleFunc_275 = "Drains the target's mind. Restores the user for half the damage done."
    v5420.Desc = BattleFunc_275
    BattleFunc_275 = "Magical"
    v5420.Category = BattleFunc_275
    BattleFunc_275 = 100
    v5420.Accuracy = BattleFunc_275
    BattleFunc_275 = 15
    v5420.Uses = BattleFunc_275
    BattleFunc_275 = 65
    v5420.Power = BattleFunc_275
    BattleFunc_275 = true
    v5420.Drain = BattleFunc_275
    BattleFunc_275 = {}
    local v5421 = {}
    local v5422 = {}
    v5422.AnimType = "Sap"
    v5422.Color = "Mind"
    v5422.Amount = 10
    v5421[1] = v5422
    BattleFunc_275.Order = v5421
    v5420.MoveAnim = BattleFunc_275
    BattleFunc_275 = "Single"
    v5420.Target = BattleFunc_275
    local function BattleFunc_276(p1128, p1129, p1130, p1131)
        local v4268 = math.floor(p1131 * 0.5)
        local v4272 = 0
        if v4268 > v4272 then
            v4272 = p1129.Stats.hp
            if v4272 > p1129.currenthp then
                v4272 = p1128:GetTraitInfo(p1130).Tainted
                if not v4272 then
                    v4268 = -v4268
                end
                v4272 = 0
                if v4268 > v4272 then
                    p1128:AddDialogue(p1128.ActionList, "&DOODLENAME," .. p1129.ID .. "&" .. " restored health!")
                else
                    v4275 = "&DOODLENAME,"
                    v4276 = p1129.ID
                    v4277 = "&"
                    v4278 = " took damage from &DOODLENAME,"
                    p1128:AddDialogue(p1128.ActionList, v4275 .. v4276 .. v4277 .. v4278 .. p1130.ID .. "& Tainted trait!")
                end
                p1128:TakeDamage(p1129, -v4268)
            end
        end
    end
    v5420.BattleFunc = BattleFunc_276
    v4663["Mind Drain"] = v5420
    local v5426 = {}
    BattleFunc_276 = "Food"
    v5426.Type = BattleFunc_276
    BattleFunc_276 = "Saps the nutrients from the target. Restores the user for half the damage done."
    v5426.Desc = BattleFunc_276
    BattleFunc_276 = "Magical"
    v5426.Category = BattleFunc_276
    BattleFunc_276 = 100
    v5426.Accuracy = BattleFunc_276
    BattleFunc_276 = 5
    v5426.Uses = BattleFunc_276
    BattleFunc_276 = 90
    v5426.Power = BattleFunc_276
    BattleFunc_276 = "Single"
    v5426.Target = BattleFunc_276
    BattleFunc_276 = {}
    local v5427 = {}
    local v5428 = {}
    v5428.AnimType = "Sap"
    v5428.Color = "Food"
    v5428.Amount = 12
    v5427[1] = v5428
    BattleFunc_276.Order = v5427
    v5426.MoveAnim = BattleFunc_276
    BattleFunc_276 = true
    v5426.Drain = BattleFunc_276
    local function BattleFunc_277(p1132, p1133, p1134, p1135)
        local v4292 = math.floor(p1135 * 0.5)
        local v4296 = 0
        if v4292 > v4296 then
            v4296 = p1133.Stats.hp
            if v4296 > p1133.currenthp then
                v4296 = p1132:GetTraitInfo(p1134).Tainted
                if not v4296 then
                    v4292 = -v4292
                end
                v4296 = 0
                if v4292 > v4296 then
                    p1132:AddDialogue(p1132.ActionList, "&DOODLENAME," .. p1133.ID .. "&" .. " restored health!")
                else
                    v4299 = "&DOODLENAME,"
                    v4300 = p1133.ID
                    v4301 = "&"
                    v4302 = " took damage from &DOODLENAME,"
                    p1132:AddDialogue(p1132.ActionList, v4299 .. v4300 .. v4301 .. v4302 .. p1134.ID .. "& Tainted trait!")
                end
                p1132:TakeDamage(p1133, -v4292)
            end
        end
    end
    v5426.BattleFunc = BattleFunc_277
    v4663["Nutrient Drain"] = v5426
    local v5432 = {}
    BattleFunc_277 = "Plant"
    v5432.Type = BattleFunc_277
    BattleFunc_277 = "The user launches tree branches at the target."
    v5432.Desc = BattleFunc_277
    BattleFunc_277 = "Physical"
    v5432.Category = BattleFunc_277
    BattleFunc_277 = 100
    v5432.Accuracy = BattleFunc_277
    BattleFunc_277 = 20
    v5432.Uses = BattleFunc_277
    BattleFunc_277 = 70
    v5432.Power = BattleFunc_277
    BattleFunc_277 = "Single"
    v5432.Target = BattleFunc_277
    v4663["Branch Launch"] = v5432
    local v5433 = {}
    BattleFunc_277 = "Plant"
    v5433.Type = BattleFunc_277
    BattleFunc_277 = "The user spins around in a pumpkin. This clears hazards on their side of the field."
    v5433.Desc = BattleFunc_277
    BattleFunc_277 = "Physical"
    v5433.Category = BattleFunc_277
    BattleFunc_277 = 100
    v5433.Accuracy = BattleFunc_277
    BattleFunc_277 = 10
    v5433.Uses = BattleFunc_277
    BattleFunc_277 = true
    v5433.Contact = BattleFunc_277
    BattleFunc_277 = 50
    v5433.Power = BattleFunc_277
    BattleFunc_277 = "Single"
    v5433.Target = BattleFunc_277
    local function BattleFunc_278(p1136, p1137, p1138, p1139)
        local v4316 = p1136:GetSideFromDoodle(p1137)
        if v2:GetSizeOfTable(v4316.EntryHazards) > 0 then
            p1136:AddDialogue(p1136.ActionList, "&DOODLENAME," .. p1137.ID .. "&" .. "'s side of the field was cleared of hazards!")
            v4316.EntryHazards = {}
        end
    end
    v5433.BattleFunc = BattleFunc_278
    v4663["Pumpkin Spin"] = v5433
    local v5434 = {}
    BattleFunc_278 = "Water"
    v5434.Type = BattleFunc_278
    BattleFunc_278 = "The user sends a wave that damages the opposing team that cleanses hazards from both sides of the field."
    v5434.Desc = BattleFunc_278
    BattleFunc_278 = "Magical"
    v5434.Category = BattleFunc_278
    BattleFunc_278 = 100
    v5434.Accuracy = BattleFunc_278
    BattleFunc_278 = 10
    v5434.Uses = BattleFunc_278
    BattleFunc_278 = 30
    v5434.Power = BattleFunc_278
    BattleFunc_278 = "AllFoes"
    v5434.Target = BattleFunc_278
    local function BattleFunc_279(p1140, p1141, p1142, p1143)
        local v4329 = p1140.Player1Side
        local v4330 = p1140.Player2Side
        local v4333 = v2:GetSizeOfTable(v4329.EntryHazards)
        local v4334 = 0
        if v4334 <= v4333 then
            v4333 = v2
            v4334 = 0
            if v4333:GetSizeOfTable(v4330.EntryHazards) > v4334 then
                p1140:AddDialogue(p1140.ActionList, "The field was cleared of hazards!")
                v4329.EntryHazards = {}
                v4330.EntryHazards = {}
            end
            return 
        end
    end
    v5434.BattleFunc = BattleFunc_279
    v4663["Wave Shot"] = v5434
    local v5435 = {}
    BattleFunc_279 = "Air"
    v5435.Type = BattleFunc_279
    BattleFunc_279 = "The user uses winds to cleanse hazards from both sides of the field, and boost their speed."
    v5435.Desc = BattleFunc_279
    BattleFunc_279 = "Passive"
    v5435.Category = BattleFunc_279
    BattleFunc_279 = true
    v5435.Accuracy = BattleFunc_279
    BattleFunc_279 = 10
    v5435.Uses = BattleFunc_279
    BattleFunc_279 = nil
    v5435.Power = BattleFunc_279
    BattleFunc_279 = "Self"
    v5435.Target = BattleFunc_279
    local function BattleFunc_280(p1144, p1145, p1146, p1147)
        local v4342 = p1144.Player1Side
        local v4343 = p1144.Player2Side
        local v4349 = {}
        v4349.spe = 1
        v4(p1144, p1145, p1146, 100, v4349)
        local v4353 = v2:GetSizeOfTable(v4342.EntryHazards)
        local v4354 = 0
        if v4354 <= v4353 then
            v4353 = v2
            v4354 = 0
            if v4353:GetSizeOfTable(v4343.EntryHazards) > v4354 then
                p1144:AddDialogue(p1144.ActionList, "The field was cleared of hazards!")
                v4342.EntryHazards = {}
                v4343.EntryHazards = {}
            end
            return 
        end
    end
    v5435.BattleFunc = BattleFunc_280
    v4663["Shifting Winds"] = v5435
    local v5436 = {}
    BattleFunc_280 = "Dark"
    v5436.Type = BattleFunc_280
    BattleFunc_280 = "The user strikes with vampiric energy. Restores the user for half the damage done."
    v5436.Desc = BattleFunc_280
    BattleFunc_280 = "Physical"
    v5436.Category = BattleFunc_280
    BattleFunc_280 = 100
    v5436.Accuracy = BattleFunc_280
    BattleFunc_280 = 10
    v5436.Uses = BattleFunc_280
    BattleFunc_280 = 80
    v5436.Power = BattleFunc_280
    BattleFunc_280 = true
    v5436.Contact = BattleFunc_280
    BattleFunc_280 = {}
    local v5437 = {}
    local v5438 = {}
    v5438.AnimType = "Slash"
    v5438.Color = Color3.fromRGB(102, 102, 102)
    v5438.Size = 2
    v5438.Times = 1
    v5438.Wait = 0.05
    v5438.Pitch = 1.3
    local v5445 = {}
    v5445.AnimType = "Slash"
    v5445.Color = Color3.fromRGB(102, 102, 102)
    v5445.Size = 2
    v5445.Times = 1
    v5445.Flipped = true
    v5445.Pitch = 0.85
    v5437[1] = v5438
    v5437[2] = v5445
    BattleFunc_280.Order = v5437
    v5436.MoveAnim = BattleFunc_280
    BattleFunc_280 = true
    v5436.Drain = BattleFunc_280
    BattleFunc_280 = "Single"
    v5436.Target = BattleFunc_280
    local function BattleFunc_281(p1148, p1149, p1150, p1151)
        local v4373 = math.floor(p1151 * 0.5)
        local v4377 = 0
        if v4373 > v4377 then
            v4377 = p1149.Stats.hp
            if v4377 > p1149.currenthp then
                v4377 = p1148:GetTraitInfo(p1150).Tainted
                if not v4377 then
                    v4373 = -v4373
                end
                local v4380 = {}
                v4380.Player = p1150.Owner
                v4380.User = p1149
                v4380.Doodle = p1150
                v4380.Action = "PlayAnim"
                local v4398 = "Siphon Soul"
                v4380.Move = v4398
                p1148:AddAction(p1148.ActionList, v4380)
                if v4373 > 0 then
                    v4398 = "&DOODLENAME,"
                    p1148:AddDialogue(p1148.ActionList, v4398 .. p1149.ID .. "&" .. " restored health!")
                else
                    v4398 = "&DOODLENAME,"
                    v4384 = p1149.ID
                    v4385 = "&"
                    v4386 = " took damage from &DOODLENAME,"
                    p1148:AddDialogue(p1148.ActionList, v4398 .. v4384 .. v4385 .. v4386 .. p1150.ID .. "& Tainted trait!")
                end
                p1148:TakeDamage(p1149, -v4373)
            end
        end
    end
    v5436.BattleFunc = BattleFunc_281
    v4663["Vampiric Strike"] = v5436
    local v5451 = {}
    BattleFunc_281 = "Ice"
    v5451.Type = BattleFunc_281
    BattleFunc_281 = "The user gives Frostbite to the opposing team. If it hits, it causes damage at the end of each turn until they switch out."
    v5451.Desc = BattleFunc_281
    BattleFunc_281 = "Magical"
    v5451.Category = BattleFunc_281
    BattleFunc_281 = 60
    v5451.Accuracy = BattleFunc_281
    BattleFunc_281 = 5
    v5451.Uses = BattleFunc_281
    BattleFunc_281 = 120
    v5451.Power = BattleFunc_281
    BattleFunc_281 = "AllFoes"
    v5451.Target = BattleFunc_281
    local function BattleFunc_282(p1152, p1153, p1154, p1155)
        local v4400 = p1154.Decoy
        v4400 = p1154.FrostBite
        v4400 = true
        p1154.FrostBite = v4400
        p1152:AddDialogue(p1152.ActionList, "&DOODLENAME," .. p1154.ID .. "&" .. " is now suffering from Frostbite!")
        local v4407 = p1154.EndFuncs
        if v4407 then
            v4407 = {}
        end
        p1154.EndFuncs = v4407
        local v4408 = p1154.EndFuncs
        local v4423 = v4408.Frostbite
        if v4423 then
            v4423 = p1154.EndFuncs
            v4408 = function(p1156, p1157, p1158)
                local v4409 = p1157.Frostbite
                if not v4409 then
                    v4409 = math.floor
                    local v4415 = {}
                    v4415[1] = "&DOODLENAME," .. p1157.ID .. "&" .. " took damage from Frostbite!"
                    p1156:TakeDamage(p1157, v4409(p1157.Stats.hp / 12), v4415)
                end
            end
            v4423.Frostbite = v4408
        end
    end
    v5451.BattleFunc = BattleFunc_282
    v4663.Frostbite = v5451
    local v5452 = {}
    BattleFunc_282 = "Water"
    v5452.Type = BattleFunc_282
    BattleFunc_282 = "The user surrounds themselves in a thick jelly, making them immune to Fire-type moves and curing status at the end of each turn."
    v5452.Desc = BattleFunc_282
    BattleFunc_282 = "Passive"
    v5452.Category = BattleFunc_282
    BattleFunc_282 = true
    v5452.Accuracy = BattleFunc_282
    BattleFunc_282 = 10
    v5452.Uses = BattleFunc_282
    BattleFunc_282 = nil
    v5452.Power = BattleFunc_282
    BattleFunc_282 = "Self"
    v5452.Target = BattleFunc_282
    local function BattleFunc_283(p1159, p1160, p1161, p1162)
        local v4425 = p1160.Decoy
        v4425 = p1160.Aquagel
        v4425 = true
        p1160.Aquagel = v4425
        p1159:AddDialogue(p1159.ActionList, "&DOODLENAME," .. p1160.ID .. "&" .. " surrounded themselves with Aquagel!")
        local v4432 = p1160.EndFuncs
        if v4432 then
            v4432 = {}
        end
        p1160.EndFuncs = v4432
        p1160.TypeImmunity.Fire = true
        local v4449 = p1160.EndFuncs
        local v4450 = v4449.Aquagel
        if v4450 then
            v4450 = p1160.EndFuncs
            v4449 = function(p1163, p1164, p1165)
                local v4434 = p1164.Aquagel
                if not v4434 then
                    v4434 = p1164.Status
                    if not v4434 then
                        v4434 = p1164.Status
                        p1163:AddDialogue(p1163.ActionList, "&DOODLENAME," .. p1164.ID .. "&" .. " was cured of its " .. p1164.Status .. "!")
                        p1164.Status = nil
                        p1163:StatusDisplay(p1164, "Blank")
                    end
                end
            end
            v4450.Aquagel = v4449
            return 
        end
        p1159:AddDialogue(p1159.ActionList, "But it failed!")
    end
    v5452.BattleFunc = BattleFunc_283
    v4663.Aquagel = v5452
    local v5453 = {}
    BattleFunc_283 = "Fire"
    v5453.Type = BattleFunc_283
    BattleFunc_283 = "The user summons flames from Gehenna, heavily causing harm to the target. Causes damage to the target at the end of each turn until they switch out."
    v5453.Desc = BattleFunc_283
    BattleFunc_283 = "Magical"
    v5453.Category = BattleFunc_283
    BattleFunc_283 = 60
    v5453.Accuracy = BattleFunc_283
    BattleFunc_283 = 5
    v5453.Uses = BattleFunc_283
    BattleFunc_283 = 120
    v5453.Power = BattleFunc_283
    BattleFunc_283 = "Single"
    v5453.Target = BattleFunc_283
    local function BattleFunc_284(p1166, p1167, p1168, p1169)
        local v4452 = p1168.Decoy
        v4452 = p1168.GehennaFlames
        v4452 = true
        p1168.GehennaFlames = v4452
        p1166:AddDialogue(p1166.ActionList, "&DOODLENAME," .. p1168.ID .. "&" .. " is being attacked by Gehenna's flames!")
        local v4459 = p1168.EndFuncs
        if v4459 then
            v4459 = {}
        end
        p1168.EndFuncs = v4459
        local v4460 = p1168.EndFuncs
        local v4475 = v4460.GehennaFlames
        if v4475 then
            v4475 = p1168.EndFuncs
            v4460 = function(p1170, p1171, p1172)
                local v4461 = p1171.GehennaFlames
                if not v4461 then
                    v4461 = math.floor
                    local v4467 = {}
                    v4467[1] = "&DOODLENAME," .. p1171.ID .. "&" .. " was attacked by Gehenna's Flames!"
                    p1170:TakeDamage(p1171, v4461(p1171.Stats.hp / 12), v4467)
                end
            end
            v4475.GehennaFlames = v4460
        end
    end
    v5453.BattleFunc = BattleFunc_284
    v4663["Flames of Gehenna"] = v5453
    local v5454 = {}
    BattleFunc_284 = "Basic"
    v5454.Type = BattleFunc_284
    BattleFunc_284 = "The user puts on a boring show, putting the target to sleep."
    v5454.Desc = BattleFunc_284
    BattleFunc_284 = "Passive"
    v5454.Category = BattleFunc_284
    BattleFunc_284 = 60
    v5454.Accuracy = BattleFunc_284
    BattleFunc_284 = 5
    v5454.Uses = BattleFunc_284
    BattleFunc_284 = nil
    v5454.Power = BattleFunc_284
    BattleFunc_284 = "Single"
    v5454.Target = BattleFunc_284
    BattleFunc_284 = "Sleep"
    v5454.Status = BattleFunc_284
    local function BattleFunc_285(p1173, p1174, p1175, p1176)
        v3(p1173, p1174, p1175, 100, "Sleep", true)
    end
    v5454.BattleFunc = BattleFunc_285
    v4663["Boring Show"] = v5454
    local v5455 = {}
    BattleFunc_285 = "Poison"
    v5455.Type = BattleFunc_285
    BattleFunc_285 = "The user lobs a substance from another universe at the target, making the target diseased."
    v5455.Desc = BattleFunc_285
    BattleFunc_285 = "Passive"
    v5455.Category = BattleFunc_285
    BattleFunc_285 = 100
    v5455.Accuracy = BattleFunc_285
    BattleFunc_285 = 20
    v5455.Uses = BattleFunc_285
    BattleFunc_285 = nil
    v5455.Power = BattleFunc_285
    BattleFunc_285 = "Single"
    v5455.Target = BattleFunc_285
    BattleFunc_285 = "Diseased"
    v5455.Status = BattleFunc_285
    local function BattleFunc_286(p1177, p1178, p1179, p1180)
        v3(p1177, p1178, p1179, 100, "Diseased", true)
    end
    v5455.BattleFunc = BattleFunc_286
    v4663["Foreign Substance"] = v5455
    local v5456 = {}
    BattleFunc_286 = "Poison"
    v5456.Type = BattleFunc_286
    BattleFunc_286 = "The user belches in the direction of the target, making them poisoned."
    v5456.Desc = BattleFunc_286
    BattleFunc_286 = "Passive"
    v5456.Category = BattleFunc_286
    BattleFunc_286 = 80
    v5456.Accuracy = BattleFunc_286
    BattleFunc_286 = 20
    v5456.Uses = BattleFunc_286
    BattleFunc_286 = nil
    v5456.Power = BattleFunc_286
    BattleFunc_286 = "Single"
    v5456.Target = BattleFunc_286
    BattleFunc_286 = "Poison"
    v5456.Status = BattleFunc_286
    local function BattleFunc_287(p1181, p1182, p1183, p1184)
        v3(p1181, p1182, p1183, 100, "Poison", true)
    end
    v5456.BattleFunc = BattleFunc_287
    v4663.Belch = v5456
    local v5457 = {}
    BattleFunc_287 = "Food"
    v5457.Type = BattleFunc_287
    BattleFunc_287 = "The user feeds the target empty calories, making them diseased."
    v5457.Desc = BattleFunc_287
    BattleFunc_287 = "Passive"
    v5457.Category = BattleFunc_287
    BattleFunc_287 = 80
    v5457.Accuracy = BattleFunc_287
    BattleFunc_287 = 20
    v5457.Uses = BattleFunc_287
    BattleFunc_287 = nil
    v5457.Power = BattleFunc_287
    BattleFunc_287 = "Single"
    v5457.Target = BattleFunc_287
    BattleFunc_287 = "Diseased"
    v5457.Status = BattleFunc_287
    local function BattleFunc_288(p1185, p1186, p1187, p1188)
        v3(p1185, p1186, p1187, 100, "Diseased", true)
    end
    v5457.BattleFunc = BattleFunc_288
    v4663["Empty Calories"] = v5457
    local v5458 = {}
    BattleFunc_288 = "The user attacks the target, and then quickly returns back to its owner to switch places with a party Doodle."
    v5458.Desc = BattleFunc_288
    BattleFunc_288 = "Air"
    v5458.Type = BattleFunc_288
    BattleFunc_288 = 15
    v5458.Uses = BattleFunc_288
    BattleFunc_288 = true
    v5458.Contact = BattleFunc_288
    BattleFunc_288 = "Physical"
    v5458.Category = BattleFunc_288
    BattleFunc_288 = 70
    v5458.Power = BattleFunc_288
    BattleFunc_288 = 100
    v5458.Accuracy = BattleFunc_288
    BattleFunc_288 = true
    v5458.Pivot = BattleFunc_288
    BattleFunc_288 = "Single"
    v5458.Target = BattleFunc_288
    local function AfterAttack_1(p1189, p1190, p1191)
        p1190.Trapped = nil
        p1190.TrappedBy = nil
        p1190.Wrapped = nil
        p1190.WrappedBy = nil
        local v4574 = p1190.Owner
        local v4510 = 0
        if p1190.currenthp > v4510 then
            v4510 = 0
            if p1189:GetAliveParty(p1190.Owner) > v4510 then
                if p1189:DetectWinner() then
                    local v4515 = p1189:GetNextNonFaintedDoodle(p1189.Player2Party)
                    if not v4515 then
                        local v4520 = " returned to their party!"
                        p1189:AddDialogue(p1189.ActionList, "&DOODLENAME," .. p1190.ID .. "&" .. v4520)
                        local v4523 = {}
                        v4523.ActionType = "Switch"
                        v4523.User = p1190.ID
                        local v4578 = p1189.Player2Party
                        v4523.Target = v4578[v4515].ID
                        v4523.NoReturnMsg = true
                        v4523.UseAbility = true
                        p1189:CompileAction(p1190, v4523, p1190.Owner, p1189.Updates)
                        p1190.IsOutAlready = nil
                        return 
                        v4515 = p1190.currenthp
                        local v4585 = 0
                        if v4515 > v4585 then
                            v4585 = 0
                            if p1189:GetAliveParty(p1190.Owner) > v4585 then
                                local v4528 = p1189:DetectWinner()
                                if v4528 then
                                    v4528 = p1189.Player1Event
                                    v4585 = p1190.Owner
                                    local v4529 = p1189.Player1
                                    if v4585 ~= v4529 then
                                        v4528 = p1189.Player2Event
                                    end
                                    v4585 = p1190.Owner
                                    v4585 = p1189.BattleType
                                    v4529 = p1
                                    v4585 = v4529.Network
                                    v4585:BindEvent(p1190.Owner.Name .. "TimerReady", function(p1192)
                                        local v4534 = p1190
                                        local v4535 = v4534.Owner
                                        if v4535 == p1192 then
                                            v4534 = p1
                                            v4535 = v4534.Network
                                            v4535:UnbindEvent(p1190.Owner.Name .. "TimerReady")
                                            p1189:TimerTick(p1190.Owner)
                                        end
                                    end)
                                    p1.Network:BindEvent(p1190.Owner.Name .. "Pivot", function(p1193, p1194)
                                        local v4547 = p1190
                                        local v4548 = v4547.Owner
                                        if p1193 == v4548 then
                                            v4547 = p1
                                            v4548 = v4547.Network
                                            v4548:UnbindEvent(p1190.Owner.Name .. "Pivot")
                                            v4528:Fire(p1194)
                                        end
                                    end)
                                    v4578 = "&"
                                    v4520 = " returned to their party!"
                                    p1189:AddDialogue(p1189.ActionList, "&DOODLENAME," .. p1190.ID .. v4578 .. v4520)
                                    local v4560 = {}
                                    v4560.Player = p1190.Owner
                                    v4560.Doodle = p1190
                                    v4560.Action = "Pivot"
                                    p1189:AddAction(p1189.ActionList, v4560)
                                    p1189:Relay(nil, nil, true)
                                    local v4596 = p1190.Owner
                                    if v4596 == p1189.Player1 then
                                        v4596 = nil
                                        p1189.Player1TimerRunning = v4596
                                    else
                                        v4596 = nil
                                        p1189.Player2TimerRunning = v4596
                                    end
                                    local v4569 = {}
                                    v4569.ActionType = "Switch"
                                    v4569.User = p1190.ID
                                    v4569.Target = v4528:Wait()
                                    v4569.NoReturnMsg = true
                                    v4569.UseAbility = true
                                    v4578 = p1189.Updates
                                    p1189:CompileAction(p1190, v4569, p1190.Owner, v4578)
                                    p1190.IsOutAlready = nil
                                    p1189:Relay()
                                end
                            end
                        end
                    end
                    return 
                end
            end
        end
    end
    v5458.AfterAttack = AfterAttack_1
    v4663["Hit-n-Run"] = v5458
    local v5459 = {}
    AfterAttack_1 = "Poison"
    v5459.Type = AfterAttack_1
    AfterAttack_1 = "The user creates poison gas, trying to make the opposing team poisoned."
    v5459.Desc = AfterAttack_1
    AfterAttack_1 = "Passive"
    v5459.Category = AfterAttack_1
    AfterAttack_1 = 70
    v5459.Accuracy = AfterAttack_1
    AfterAttack_1 = 25
    v5459.Uses = AfterAttack_1
    AfterAttack_1 = nil
    v5459.Power = AfterAttack_1
    AfterAttack_1 = "Single"
    v5459.Target = AfterAttack_1
    AfterAttack_1 = "AllFoes"
    v5459.Status = AfterAttack_1
    local function BattleFunc_289(p1195, p1196, p1197, p1198)
        v3(p1195, p1196, p1197, 100, "Poison", true)
    end
    v5459.BattleFunc = BattleFunc_289
    v4663["Poison Gas"] = v5459
    local v5460 = {}
    BattleFunc_289 = "Poison"
    v5460.Type = BattleFunc_289
    BattleFunc_289 = "Launches a ball of unsanitary goo at the target. This has a chance of poisoning."
    v5460.Desc = BattleFunc_289
    BattleFunc_289 = "Magical"
    v5460.Category = BattleFunc_289
    BattleFunc_289 = 100
    v5460.Accuracy = BattleFunc_289
    BattleFunc_289 = 10
    v5460.Uses = BattleFunc_289
    BattleFunc_289 = 80
    v5460.Power = BattleFunc_289
    BattleFunc_289 = "Single"
    v5460.Target = BattleFunc_289
    local function BattleFunc_290(p1199, p1200, p1201, p1202)
        v3(p1199, p1200, p1201, 30, "Poison", true)
    end
    v5460.BattleFunc = BattleFunc_290
    v4663["Goo Blast"] = v5460
    local v5461 = {}
    BattleFunc_290 = "Poison"
    v5461.Type = BattleFunc_290
    BattleFunc_290 = "The user attempts to poison the target with a tackle."
    v5461.Desc = BattleFunc_290
    BattleFunc_290 = "Physical"
    v5461.Category = BattleFunc_290
    BattleFunc_290 = 90
    v5461.Accuracy = BattleFunc_290
    BattleFunc_290 = 20
    v5461.Uses = BattleFunc_290
    BattleFunc_290 = true
    v5461.Contact = BattleFunc_290
    BattleFunc_290 = 40
    v5461.Power = BattleFunc_290
    BattleFunc_290 = "Single"
    v5461.Target = BattleFunc_290
    local function BattleFunc_291(p1203, p1204, p1205, p1206)
        v3(p1203, p1204, p1205, 30, "Poison", true)
    end
    v5461.BattleFunc = BattleFunc_291
    v4663["Poison Ivy"] = v5461
    local v5462 = {}
    BattleFunc_291 = "Fire"
    v5462.Type = BattleFunc_291
    BattleFunc_291 = "A move only used to test stuff."
    v5462.Desc = BattleFunc_291
    BattleFunc_291 = "Passive"
    v5462.Category = BattleFunc_291
    BattleFunc_291 = 100
    v5462.Accuracy = BattleFunc_291
    BattleFunc_291 = 20
    v5462.Uses = BattleFunc_291
    BattleFunc_291 = nil
    v5462.Power = BattleFunc_291
    BattleFunc_291 = "Single"
    v5462.Target = BattleFunc_291
    local function BattleFunc_292(p1207, p1208, p1209, p1210)
        v3(p1207, p1208, p1209, 100, "Sleep", true)
    end
    v5462.BattleFunc = BattleFunc_292
    v4663["Testing Move"] = v5462
    BattleFunc_292 = {}
    local v4635 = (game:GetService("RunService")):IsServer()
    if not v4635 then
        v4635 = pairs
        v5438 = v4663
        local v4636, v4637, v4638 = v4635(v5438)
        for v4369, v4640 in v4636, v4637, v4638 do
            v7 = v7 + 1
        end
        v4636 = print
        v4637 = "moves"
        v4638 = 0
        v4636(v4637, v4638)
    end
    return v4663
end
