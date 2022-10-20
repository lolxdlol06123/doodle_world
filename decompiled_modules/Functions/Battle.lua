-- Decompiled with the Synapse X Luau decompiler.

return function(p1)
	local l__Utilities__1 = p1.Utilities;
	local v2 = l__Utilities__1.Signal();
	p1.GenericSignal = l__Utilities__1.Signal();
	p1.BattleStart = l__Utilities__1.Signal();
	p1.BattleEnd = l__Utilities__1.Signal();
	p1.Switch = l__Utilities__1.Signal();
	p1.MoveLearn = l__Utilities__1.Signal();
	p1.SelectedAction = l__Utilities__1.Signal();
	local v3 = l__Utilities__1.Signal();
	local u1 = nil;
	local u2 = nil;
	local u3 = nil;
	local u4 = nil;
	local u5 = {};
	function u5.EvolveCheck(p2)
		local v4 = {};
		for v5, v6 in pairs((p1.ClientDatabase:PDSFunc("GetParty"))) do
			if v6.Evolve then
				table.insert(v4, v6);
			end;
		end;
		return v4;
	end;
	local u6 = false;
	function u5.WildBattle(p3, p4, p5, p6)
		u6 = false;
		l__Utilities__1.FastSpawn(function()
			p1.Camera:Zoom();
			p1.Gui:DiagonalBlackscreen();
			u6 = true;
			p1.BattleStart:Fire();
		end);
		if p6 then
			p1.EndBattleFunc = p6;
		else
			p1.EndBattleFunc = nil;
		end;
		u5.RequestBattle = true;
		local v7 = p1.DataManager.RegionData.ChunkName or p1.DataManager.RegionData.Reference;
		if p1.DataManager.RegionData.BattleMusic then
			if math.random(1, 3) > 1 or p1.DataManager.RegionData.ForceMusic then
				p1.Music:PlaySong(p1.DataManager.RegionData.BattleMusic, true);
			else
				local v8 = { "battlefield2", "battlefield4", "battlefield5" };
				p1.Music:PlaySong(v8[math.random(#v8)], true);
			end;
		end;
		if p5 then
			p1.Network:post("RekuestWile", v7, p5);
		else
			p1.Network:post("RekuestWile", v7, p4, p1.Overworld:GetWeather());
		end;
		return p1.BattleEnd, p1.WipeoutLocation;
	end;
	function u5.WildBattIe(p7, p8, p9)
		p1.Network:post("RequestWile", String, p9);
	end;
	function u5.TrainerBattle(p10, p11, p12, p13, p14)
		u6 = false;
		l__Utilities__1.FastSpawn(function()
			p1.Gui:ShadeBlackscreen();
			u6 = true;
			p1.BattleStart:Fire();
		end);
		if p13 then
			p1.EndBattleFunc = p13;
		else
			p1.EndBattleFunc = nil;
		end;
		u5.RequestBattle = true;
		p1.CurrentTrainerModel = p12;
		p1.CurrentTrainerModel2 = p14;
		p1.Network:post("RequestTrainer", p11, p1.Overworld:GetWeather());
		return p1.BattleEnd, p1.WipeoutLocation;
	end;
	local u7 = nil;
	p1.Network:BindEvent("BackupStart", function()
		if u6 then
			p1.BattleStart:Fire();
		end;
	end);
	local u8 = nil;
	local u9 = nil;
	local u10 = nil;
	local u11 = false;
	local function u12()
		if u1 then
			u1:Disconnect();
		end;
		if u2 then
			u2:Disconnect();
		end;
		if u3 then
			u3:Disconnect();
		end;
		if u4 then
			u4:Disconnect();
		end;
		local v9 = {
			MainBattle = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui").MainBattle
		};
		u2 = v9.MainBattle:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			u5.BGui:ChangedSize(v9.FrontBox);
			u5.BGui:ChangedSize(v9.BackBox);
			u5.BGui:ChangedSize(v9.Front1Box, true);
			u5.BGui:ChangedSize(v9.Front2Box, true);
			u5.BGui:ChangedSize(v9.Back1Box, true);
			u5.BGui:ChangedSize(v9.Back2Box, true);
		end);
		v9.Front = v9.MainBattle:WaitForChild("DoodleFront");
		v9.Front1 = v9.MainBattle:WaitForChild("DoodleFront1");
		v9.Front2 = v9.MainBattle:WaitForChild("DoodleFront2");
		v9.Front1Box = v9.MainBattle:WaitForChild("Front1Box");
		v9.Front2Box = v9.MainBattle:WaitForChild("Front2Box");
		v9.FrontBox = v9.MainBattle:WaitForChild("FrontBox");
		v9.Back = v9.MainBattle:WaitForChild("DoodleBack");
		v9.Back1 = v9.MainBattle:WaitForChild("DoodleBack1");
		v9.Back2 = v9.MainBattle:WaitForChild("DoodleBack2");
		v9.BackBox = v9.MainBattle:WaitForChild("BackBox");
		v9.Back1Box = v9.MainBattle:WaitForChild("Back1Box");
		v9.Back2Box = v9.MainBattle:WaitForChild("Back2Box");
		v9.Flash = v9.MainBattle:WaitForChild("Flash");
		v9.Background = v9.MainBattle:WaitForChild("Background");
		v9.BottomBar = v9.MainBattle:WaitForChild("BottomBar");
		v9.Levelup = v9.MainBattle:WaitForChild("LevelUpBG");
		v9.TrainerSprite = v9.MainBattle:WaitForChild("TrainerSprite");
		v9.FrontCapsule = v9.MainBattle:WaitForChild("CapsuleFront");
		v9.FrontCapsule.Visible = false;
		v9.BackCapsule = v9.MainBattle:WaitForChild("CapsuleBack");
		v9.EnemyParty = v9.MainBattle.OtherHider:WaitForChild("EnemyParty");
		v9.UserParty = v9.MainBattle.PlayerHider:WaitForChild("UserParty");
		v9.PlayerTimer = v9.MainBattle.PlayerHider.TimerLabel;
		v9.OtherTimer = v9.MainBattle.OtherHider.TimerLabel;
		v9.PlayerName = v9.MainBattle.PlayerHider.UserName;
		v9.OtherName = v9.MainBattle.OtherHider.UserName;
		v9.UserParty.Visible = false;
		v9.EnemyParty.Visible = false;
		for v10, v11 in pairs({ 1, 0.75, 0.6, 0.5, 0.4, 0.3, 0.25 }) do
			v9.UserParty.Size = UDim2.new(v11, 0, 2, 0);
			v9.PlayerName.Size = UDim2.new(v11, 0, 0.1, 0);
			v9.PlayerName.Position = UDim2.new(0.5 + (1 - v11) / 2, 0, 0.54, 0);
			if p1.Gui:IsGuiOnScreenNoVertical(v9.UserParty) then
				v9.UserParty.Visible = true;
				v9.EnemyParty.Visible = true;
				v9.OtherName.Position = UDim2.new(0.5 - (1 - v11) / 2, 0, 0.473, 0);
				v9.EnemyParty.Size = UDim2.new(v11, 0, 2, 0);
				v9.OtherName.Size = UDim2.new(v11, 0, 0.1, 0);
				break;
			end;
		end;
		local l__Settings__12 = v9.BottomBar.Settings;
		u1 = l__Settings__12.MouseButton1Click:Connect(function()
			p1.Sound:Play("Boop");
			p1.Settings:Show({});
		end);
		local l__TypeChart__13 = v9.BottomBar.TypeChart;
		v9.MagnifyingGlass = v9.BottomBar.MagnifyingGlass;
		u3 = l__TypeChart__13.MouseButton1Click:Connect(function()
			p1.Sound:Play("Boop");
			p1.TypeChart.new({
				CloseThing = true
			});
		end);
		p1.Gui:Hover(l__TypeChart__13);
		p1.Gui:Hover(l__Settings__12);
		p1.Gui:Hover(v9.MagnifyingGlass);
		return v9;
	end;
	local function u13(p15, p16)
		if p16 == "Rain" then
			u5.Weather.StartRain(p15.MainBattle);
			return;
		end;
		if p16 == "Acid Rain" then
			u5.Weather.AcidRain(p15.MainBattle);
			return;
		end;
		if p16 == "Chocolate Rain" then
			u5.Weather.ChocolateRain(p15.MainBattle);
			return;
		end;
		if p16 == "Sandstorm" then
			u5.Weather.Sandstorm(p15.MainBattle);
		end;
	end;
	local function u14(p17, p18, p19)
		p19 = p19;
		local v14, v15, v16 = u5.Funcs:FindSpriteFromDoodle(p17, p18, p19);
		if v14:FindFirstChild("NewDoodleLabel") then
			v14:FindFirstChild("NewDoodleLabel"):Destroy();
		end;
		if p19.currenthp > 0 then
			u5.BGui:SetBox(v15, p19, p19.currenthp, p18.Format == "Doubles");
			if v16 then
				u7[p19.ID] = p1.Gui:AnimateSprite(v14, p19, not v16);
				local v17 = u7[p19.ID];
			else
				u5.BGui:PartyBar(u5.Funcs:GetEnemyParty(p18), p17.EnemyParty, p18);
				p17.TrainerSprite.Visible = false;
				u7[p19.ID] = p1.Gui:AnimateSprite(v14, p19, not v16);
				v17 = u7[p19.ID];
			end;
			if p19.Status == "Frozen" then
				p1.Gui:Cancel(v17);
			end;
			v14.Parent.Visible = true;
			if p19.Decoy then
				v14.Visible = false;
				u5.BGui:SummonScapegoat(v14, v16);
			end;
			v14.Parent.Visible = true;
			v15.Visible = true;
		end;
	end;
	p1.Network:BindEvent("SpectateBattle", function(p20, p21)
		u7 = {};
		u5.Funcs:ClearTiedSprites();
		if u8 then
			u8:Disconnect();
		end;
		if u9 then
			u9:Disconnect();
		end;
		if u10 then
			u10:Disconnect();
		end;
		u11 = false;
		p1.Spectating = p21;
		p1.ObjectiveUI:Hide();
		p1.PlayerList:Hide();
		p1.Menu:Disable();
		if p20.BattleMusic then
			p1.Music:PlaySong(p20.BattleMusic, true);
		end;
		local v18 = u12();
		p1.Gui:ChangeText(v18.BottomBar.Say, "");
		if p20.Background then
			v18.Background.Image = p1.Backgrounds[p20.Background].Image;
		end;
		u5.BGui:SetupEvents(v18);
		p1.Gui:FadeToBlack();
		v18.Front.Visible = false;
		v18.Front1.Visible = false;
		v18.Front2.Visible = false;
		v18.Back.Visible = false;
		v18.Back1.Visible = false;
		v18.Back2.Visible = false;
		v18.FrontBox.Visible = false;
		v18.Front1Box.Visible = false;
		v18.Front2Box.Visible = false;
		v18.BackBox.Visible = false;
		v18.Back1Box.Visible = false;
		v18.Back2Box.Visible = false;
		v18.PlayerTimer.Visible = false;
		v18.PlayerName.Visible = false;
		v18.OtherTimer.Visible = false;
		v18.OtherName.Visible = false;
		if p20.BattleType == "PvP" then
			p1.EndBattleFunc = nil;
			local v19 = p1.Spectating == p20.Player1 and p20.Player1 or p20.Player2;
			local v20 = v19 == p20.Player1 and p20.Player2 or p20.Player1;
			v18.PlayerTimer.Text = l__Utilities__1.ConvertTimer(v19.PvPTimer.Value);
			v18.OtherTimer.Text = l__Utilities__1.ConvertTimer(v20.PvPTimer.Value);
			u9 = v19.PvPTimer.Changed:Connect(function()
				v18.PlayerTimer.Text = l__Utilities__1.ConvertTimer(v19.PvPTimer.Value);
			end);
			u10 = v20.PvPTimer.Changed:Connect(function()
				v18.OtherTimer.Text = l__Utilities__1.ConvertTimer(v20.PvPTimer.Value);
			end);
			p1.Gui:ChangeText(v18.PlayerName, v19.Name);
			p1.Gui:ChangeText(v18.OtherName, v20.Name);
			v18.PlayerName.Visible = true;
			v18.OtherName.Visible = true;
			if p20.TimeLimit ~= 3 then
				v18.PlayerTimer.Visible = true;
				v18.OtherTimer.Visible = true;
			end;
		end;
		u8 = v18.BottomBar.Spectator.StopSpectating.MouseButton1Click:Connect(function()
			v18.BottomBar.Spectator.Visible = false;
			u11 = true;
			if u8 then
				u8:Disconnect();
			end;
			p1.Network:get("SpectateBattle", nil, false);
		end);
		v18.BottomBar.Spectator.Visible = true;
		v18.BottomBar.Moves.Visible = false;
		v18.BottomBar.MoveDescription.Visible = false;
		v18.BottomBar.SelectTarget.Visible = false;
		v18.BottomBar.Actions.Visible = false;
		v18.BottomBar.Back.Visible = false;
		v18.BottomBar.Next.Position = UDim2.new(0.9, 1, 0.5, 0);
		u5.BGui:PartyBarReset(v18.EnemyParty);
		u5.BGui:PartyBarReset(v18.UserParty);
		if p20.BattleType ~= "Wild" then
			u5.BGui:PartyBar(u5.Funcs:GetEnemyParty(p20), v18.EnemyParty, p20);
		end;
		u5.BGui:PartyBar(u5.Funcs:GetPlayerParty(p20), v18.UserParty, p20);
		u13(v18, p20.Weather);
		if p20.ReverseSingularity then
			u5.BattleEffects.ReverseSingularity(v18.MainBattle);
		end;
		u5.BattleEffects.Check(v18.MainBattle, p20);
		v18.TrainerSprite.Visible = false;
		u5.RequestBattle = nil;
		u5.CurrentBattle = p20;
		v18.MainBattle.Position = UDim2.new(0.5, 0, -1.5, 0);
		v18.MainBattle.Visible = true;
		local v21, v22 = u5.Funcs:FindOutDoodles(p20);
		for v23, v24 in pairs(v21) do
			u14(v18, p20, v24);
		end;
		for v25, v26 in pairs(v22) do
			u14(v18, p20, v26);
		end;
		v18.MainBattle:TweenPosition(UDim2.new(0.5, 0, 0.5, -18), "Out", "Quad", 0.5, true);
		l__Utilities__1.Halt(0.5);
		p1.Gui:ChangeText(v18.BottomBar.Say, "Waiting for action...");
	end);
	local function u15(p22)
		p1.Camera:Return();
		p1.Settings:Hide();
		p1.TypeChart:Close();
		p1.Battle.CurrentBattle = nil;
		p1.Spectating = nil;
		p1.Menu.DisableBlur();
		p1.Controls:ToggleWalk(true);
		p1.PlayerList:Show();
		p1.ObjectiveUI:Show();
		if p1.EndBattleFunc then
			p1.EndBattleFunc();
		end;
		p1.Gui:FadeFromBlack();
		if p22.Front:FindFirstChild("Decoy") then
			p22.Front:FindFirstChild("Decoy"):Destroy();
		end;
		if p22.Back:FindFirstChild("Decoy") then
			p22.Back:FindFirstChild("Decoy"):Destroy();
		end;
		u5.Weather.Stop(p22.MainBattle);
		u5.BattleEffects.DisableAll(p22.MainBattle);
	end;
	p1.Network:BindEvent("StopSpectating", function()
		if u8 then
			u8:Disconnect();
		end;
		p1.Spectating = nil;
		local v27 = u12();
		p1.Music:PlayPreviousSong(true);
		p1.Camera:Default();
		p1.CurrentTrainerModel = nil;
		v27.MainBattle:TweenPosition(UDim2.new(0.5, 0, -1, 0), "Out", "Quad", 0.5, true);
		l__Utilities__1.Halt(0.5);
		if u5.Trainer3D and u5.Trainer3D.Destroy then
			u5.Trainer3D:Destroy();
		end;
		v27.MainBattle.Visible = false;
		u15(v27);
		p1.BattleEnd:Fire();
	end);
	p1.Network:BindEvent("StartBattle", function(p23)
		u7 = {};
		u5.Funcs:ClearTiedSprites();
		if p23.BattleType == "Wild" or p23.BattleType == "Trainer" then
			p1.BattleStart:Wait();
		end;
		if u9 then
			u9:Disconnect();
		end;
		if u10 then
			u10:Disconnect();
		end;
		p1.Menu:CloseAll();
		u11 = false;
		p1.ObjectiveUI:Hide();
		p1.PlayerList:Hide();
		p1.Menu:Disable();
		if p1.guiholder:FindFirstChild("TeamPreview").Visible == true then
			u5.TeamPreview.Hide();
		end;
		if p23.BattleType ~= "Wild" and p23.BattleMusic then
			p1.Music:PlaySong(p23.BattleMusic, true);
		end;
		local v28 = u12();
		if p23.Background then
			v28.Background.Image = p1.Backgrounds[p23.Background].Image;
		end;
		u13(v28, p23.Weather);
		v28.Background.ImageColor3 = Color3.fromRGB(255, 255, 255);
		v28.PlayerTimer.Visible = false;
		v28.PlayerName.Visible = false;
		v28.OtherTimer.Visible = false;
		v28.OtherName.Visible = false;
		if p23.BattleType == "PvP" then
			p1.EndBattleFunc = nil;
			local v29 = game.Players.LocalPlayer == p23.Player1 and p23.Player1 or p23.Player2;
			local v30 = v29 == p23.Player1 and p23.Player2 or p23.Player1;
			v28.PlayerTimer.Text = l__Utilities__1.ConvertTimer(v29.PvPTimer.Value);
			v28.OtherTimer.Text = l__Utilities__1.ConvertTimer(v30.PvPTimer.Value);
			u9 = v29.PvPTimer.Changed:Connect(function()
				v28.PlayerTimer.Text = l__Utilities__1.ConvertTimer(v29.PvPTimer.Value);
			end);
			u10 = v30.PvPTimer.Changed:Connect(function()
				v28.OtherTimer.Text = l__Utilities__1.ConvertTimer(v30.PvPTimer.Value);
			end);
			p1.Gui:ChangeText(v28.PlayerName, v29.Name);
			p1.Gui:ChangeText(v28.OtherName, v30.Name);
			v28.PlayerName.Visible = true;
			v28.OtherName.Visible = true;
			if p23.TimeLimit ~= 3 then
				v28.PlayerTimer.Visible = true;
				v28.OtherTimer.Visible = true;
			end;
		end;
		u5.BGui:SetupEvents(v28);
		if p23.BattleType == "PvP" then
			p1.Gui:FadeToBlack();
		end;
		v28.Front.Visible = false;
		v28.Front1.Visible = false;
		v28.Front2.Visible = false;
		v28.Back.Visible = false;
		v28.Back1.Visible = false;
		v28.Back2.Visible = false;
		v28.FrontBox.Visible = false;
		v28.Front1Box.Visible = false;
		v28.Front2Box.Visible = false;
		v28.BackBox.Visible = false;
		v28.Back1Box.Visible = false;
		v28.Back2Box.Visible = false;
		v28.BottomBar.Spectator.Visible = false;
		v28.BottomBar.Moves.Visible = false;
		v28.BottomBar.MoveDescription.Visible = false;
		v28.BottomBar.Actions.Visible = false;
		v28.BottomBar.Back.Visible = false;
		v28.BottomBar.SelectTarget.Visible = false;
		v28.BottomBar.Next.Position = UDim2.new(0.9, 1, 0.5, 0);
		u5.BGui:PartyBarReset(v28.EnemyParty);
		u5.BGui:PartyBarReset(v28.UserParty);
		v28.TrainerSprite.Visible = false;
		u5.RequestBattle = nil;
		u5.CurrentBattle = p23;
		if p23.BattleType == "Wild" then
			if p23.Format == "Singles" then
				local v31, v32 = u5.Funcs:GetOutDoodles(p23);
				local l__Sprite__33 = v28.Front.Sprite;
				if l__Sprite__33:FindFirstChild("NewDoodleLabel") then
					l__Sprite__33:FindFirstChild("NewDoodleLabel"):Destroy();
				end;
				u7[v32.Doodle.ID] = p1.Gui:AnimateSprite(l__Sprite__33, v32, true);
				p1.Gui:ChangeText(v28.BottomBar.Say, "");
				v28.Front.Visible = true;
				v28.FrontBox.Visible = true;
				u5.BGui:SetBox(v28.FrontBox, v32);
			end;
		elseif p23.BattleType == "PvP" then
			local v34 = game.Players.LocalPlayer == p23.Player1 and p23.Player2.Character or p23.Player1.Character;
			v34.Archivable = true;
			u5.Trainer3D = p1.Gui.ViewportModule(v34, v28.TrainerSprite, "DefaultIdle");
			v28.TrainerSprite.Visible = true;
			u5.BGui:PartyBar(u5.Funcs:GetEnemyParty(p23), v28.EnemyParty, p23);
			p1.Gui:ChangeText(v28.BottomBar.Say, "");
		else
			p1.Camera:Return();
			u5.Trainer3D = p1.Gui.ViewportModule(p1.CurrentTrainerModel, v28.TrainerSprite, "DefaultIdle");
			v28.TrainerSprite.Visible = true;
			u5.BGui:PartyBar(u5.Funcs:GetEnemyParty(p23), v28.EnemyParty, p23);
			p1.Gui:ChangeText(v28.BottomBar.Say, "");
		end;
		u5.BGui:PartyBar(u5.Funcs:GetPlayerParty(p23), v28.UserParty, p23);
		v28.MainBattle.Position = UDim2.new(0.5, 0, -1.5, 0);
		v28.MainBattle.Visible = true;
		v28.MainBattle:TweenPosition(UDim2.new(0.5, 0, 0.5, -18), "Out", "Quad", 1, true);
		l__Utilities__1.Halt(1);
		p1.Network:post(p1.Name .. "InitialReady");
	end);
	local u16 = {};
	local function u17(p24, p25)
		if u16[1] == p24 then
			return true;
		end;
		v3:Wait();
		if p25 then
			p25.Visible = false;
		end;
		return u17(p24);
	end;
	local v35 = l__Utilities__1.Signal();
	local u18 = nil;
	local u19 = nil;
	local u20 = l__Utilities__1.Signal();
	local u21 = nil;
	local function u22(p26)
		if p26.Skin ~= 0 then
			local l__Sprites__36 = p1.Skins.Sprites;
			local v37 = l__Utilities__1.GetRealName(p26);
			if l__Sprites__36[v37] then
				for v38, v39 in pairs(l__Sprites__36[v37]) do
					if p26.Skin == v38 and v39.Name == "Prestige" then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	local function u23(p27, p28, p29)
		local v40 = nil;
		local v41, v42, v43 = pairs(p28);
		while true do
			local v44, v45 = v41(v42, v43);
			if not v44 then
				break;
			end;
			local v46 = false;
			for v47, v48 in pairs(p27) do
				if v47 ~= 5 and v45.Name == v48.Name then
					v46 = true;
					break;
				end;
			end;
			if not v46 then
				v40 = v45.Name;
				break;
			end;		
		end;
		if v40 ~= nil and v40 ~= p29 then
			return "MoveForgotten", v40;
		end;
		return "DidNotLearn";
	end;
	p1.Network:BindEvent("RelayBattle", function(p30, p31, p32)
		table.insert(u16, p30);
		u5.CurrentData = p31;
		local v49 = nil;
		OnForceSwitch = nil;
		local v50 = u12();
		v50.MagnifyingGlass.Visible = false;
		u5.BGui:SetupEvents(v50);
		local v51 = {};
		p1.Menu:Disable();
		if u18 then
			p1.Network:UnbindEvent("ForceEnd");
			u18 = nil;
		end;
		if u19 then
			p1.Network:UnbindEvent("UpdateParty");
			u19 = nil;
		end;
		local u24 = p31;
		p1.Network:BindEvent("UpdateParty", function(p33)
			if p1.p == u24.Player1 then
				u24.Player1Party = p33;
				u20:Fire();
				return;
			end;
			if p1.p == u24.Player2 then
				u24.Player2Party = p33;
				u20:Fire();
			end;
		end);
		local u25 = nil;
		p1.Network:BindEvent("ForceEnd", function()
			p1.Switch:Fire();
			p1.SelectedAction:Fire(true);
			l__Utilities__1.Halt(0.1);
			if u25 then
				u25:Destroy();
			end;
			u20:Fire();
		end);
		u18 = true;
		u19 = true;
		if u4 then
			u4:Disconnect();
		end;
		v50.MagnifyingGlass.Visible = false;
		if u16[1] == p30 then
			local v52 = true;
		else
			v3:Wait();
			v52 = u17(p30);
		end;
		if v52 then
			local v53, v54, v55 = pairs(p30);
			while true do
				local v56, v57 = v53(v54, v55);
				if not v56 then
					break;
				end;
				if v56 == 1 then
					v50.MagnifyingGlass.Visible = false;
				end;
				if u11 then
					u11 = false;
					break;
				end;
				if v57.Action == "Dialogue" then
					local v58 = false;
					if u24.FinalStages and v57.FinalStages then
						v58 = true;
					end;
					if v57.Text:find("%[PLAYERONLY%]") and p1.Spectating then
						v58 = true;
					end;
					if v57.Text:find("%[SPECTATORONLY%]") and not p1.Spectating then
						v58 = true;
					end;
					local v59 = u5.BGui:ReplaceName(v57.Text, u24);
					if not v58 then
						if v57.FastSpawn then
							l__Utilities__1.FastSpawn(function()
								p1.Gui:Say(v50.BottomBar.Say, v59);
							end);
						else
							if p30[v56 + 1] == nil then
								v59 = "[LAST]" .. v59;
							elseif p30[v56 + 1].Action ~= "Dialogue" then
								v59 = "[LAST]" .. v59;
							end;
							p1.Gui:Say(v50.BottomBar.Say, v59);
						end;
					end;
				elseif v57.Action == "DoNotCall" then
					v49 = true;
				elseif v57.Action == "ActionAppear" then
					if p1.Spectating then
						p1.Gui:Say(v50.BottomBar.Say, "Waiting for action...");
					elseif v57.Player == p1.p then
						if u21 then
							setmetatable(u21, nil);
						end;
						if u24.BattleType == "Wild" and u24.OwnsMagnifyingGlass then
							v50.MagnifyingGlass.Visible = true;
						end;
						u4 = v50.MagnifyingGlass.MouseButton1Click:Connect(function()
							if u24 then
								p1.Sound:Play("BasicClick");
								p1.guiholder.MainBattle.Visible = false;
								local v60 = u24.Out2[1];
								v60.OriginalOwner = "Unknown";
								p1.Stats.new({
									NoTamer = true, 
									NoMoveSwap = true, 
									Battle = u24, 
									CloseFunc = function()
										p1.guiholder.MainBattle.Visible = true;
									end
								}, v60);
							end;
						end);
						u21 = u5.Actions.new({
							BattleData = u24, 
							OutDoodles = v57.Doodle, 
							Gui = v50
						});
					end;
				elseif v57.Action == "ActionDisappear" then
					v50.BottomBar.Actions.Visible = false;
					v50.BottomBar.Back.Visible = false;
					v50.BottomBar.Moves.Visible = false;
					v50.BottomBar.MoveDescription.Visible = false;
					v50.BottomBar.SelectTarget.Visible = false;
					u5.BGui:StopBobble();
					if p1.ActionParty and p1.ActionParty.Destroy then
						p1.ActionParty:Destroy();
						p1.ActionParty.Party = nil;
						p1.ActionParty = nil;
					end;
					if p1.ActionStats and p1.ActionStats.Destroy then
						p1.ActionStats:Destroy();
						p1.ActionStats = nil;
					end;
					p1.Settings:Hide();
					p1.TypeChart:Close();
					v50.MainBattle.Visible = true;
				elseif v57.Action == "OptionalSwitch" then
					local v61 = u5.Funcs:GetPlayerParty(u24);
					local l__Yes__62 = v50.BottomBar.Yes;
					local l__No__63 = v50.BottomBar.No;
					p1.Gui:Hover(l__Yes__62);
					p1.Gui:Hover(l__No__63);
					local u26 = p1.Party.new({
						Temp = true, 
						CloseFunction = function()

						end, 
						Party = v61, 
						String = "Do you want to switch doodles?", 
						Battle = self, 
						Manual = true, 
						NoColorList = true
					});
					u5.BGui:SetYesEvent(l__Yes__62, function()
						u26:Show();
					end);
					u5.BGui:SetNoEvent(l__No__63, function()
						if u26.Destroy then
							u26:Destroy();
						end;
						p1.Switch:Fire();
					end);
					l__Yes__62.Visible = true;
					l__No__63.Visible = true;
					p1.Switch:Wait();
				elseif v57.Action == "GetVP" then
					if v57.Player == p1.p then
						if p1:SocialPark() then
							p1.Gui:Say(v50.BottomBar.Say, "You got " .. v57.Amount .. " VP for " .. v57.String .. "!");
						else
							p1.Gui:Say(v50.BottomBar.Say, "You got " .. v57.Amount .. " VP for " .. v57.String .. "! Use VP at Social Park!");
						end;
					end;
				elseif v57.Action == "Pivot" then
					if not p1.Spectating then
						if v57.Player == game.Players.LocalPlayer then
							p1.guiholder.MainBattle.Visible = false;
							local v64 = nil;
							local v65 = nil;
							if u24.BattleType == "PvP" and u24.TimeLimit ~= 3 then
								local v66 = game.Players.LocalPlayer == u24.Player1 and u24.Player1 or u24.Player2;
								v64 = v66:FindFirstChild("PvPTimer");
								v65 = (v66 == u24.Player1 and u24.Player2 or u24.Player1):FindFirstChild("PvPTimer");
								p1.Network:post(p1.p.Name .. "TimerReady");
							end;
							u25 = p1.Party.new({
								Pivot = true, 
								DoodleBattling = v57.Doodle.Doodle, 
								PlayerTimer = v64, 
								OtherTimer = v65, 
								Party = u5.Funcs:GetPlayerParty(u24), 
								String = "Please switch in a doodle.", 
								Battle = u24, 
								Manual = false, 
								WaitForSwitch = true
							});
						else
							p1.Gui:Say(v50.BottomBar.Say, "Waiting for other player...");
						end;
					end;
				elseif v57.Action == "ForceSwitch" then
					if not p1.Spectating then
						if v57.Player == game.Players.LocalPlayer then
							p1.guiholder.MainBattle.Visible = false;
							local v67 = nil;
							local v68 = nil;
							if u24.BattleType == "PvP" and u24.TimeLimit ~= 3 then
								local v69 = game.Players.LocalPlayer == u24.Player1 and u24.Player1 or u24.Player2;
								v67 = v69:FindFirstChild("PvPTimer");
								v68 = (v69 == u24.Player1 and u24.Player2 or u24.Player1):FindFirstChild("PvPTimer");
							end;
							u25 = p1.Party.new({
								DoodleBattling = v57.Doodle.Doodle, 
								PlayerTimer = v67, 
								OtherTimer = v68, 
								Party = u5.Funcs:GetPlayerParty(u24), 
								String = "Please switch in a doodle.", 
								Battle = u24, 
								Manual = false, 
								WaitForSwitch = true
							});
							u20:Wait();
						else
							p1.Gui:Say(v50.BottomBar.Say, "Waiting for other player...");
						end;
					end;
				elseif v57.Action == "DoodleAppear" then
					if not u24.FinalStages then
						local v70, v71, v72 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
						if v70 and v70:FindFirstChild("NewDoodleLabel") then
							v70:FindFirstChild("NewDoodleLabel"):Destroy();
						end;
						local v73 = v72 and v50.BackCapsule or v50.FrontCapsule;
						u5.BGui:SendOutCapsule(v73, v57.Doodle, v72, u24, v50);
						if p1.Settings:Get("BattleFlash") == true then
							v50.Flash.Visible = true;
						end;
						u5.BGui:SetBox(v71, v57.Doodle, v57.CurrentHealth, u24.Format == "Doubles");
						if v72 then
							u5.BGui:PartyBar(u5.Funcs:GetPlayerParty(u24), v50.UserParty, u24);
							u7[v57.Doodle.ID] = p1.Gui:AnimateSprite(v70, v57.Doodle, not v72);
							local v74 = u7[v57.Doodle.ID];
						else
							u5.BGui:PartyBar(u5.Funcs:GetEnemyParty(u24), v50.EnemyParty, u24);
							v50.TrainerSprite.Visible = false;
							u7[v57.Doodle.ID] = p1.Gui:AnimateSprite(v70, v57.Doodle, not v72);
							v74 = u7[v57.Doodle.ID];
						end;
						if v57.Doodle.Status == "Frozen" then
							p1.Gui:Cancel(v74);
						end;
						v73.Visible = false;
						v70.Parent.Visible = true;
						v71.Visible = true;
						l__Utilities__1.Halt(0.1);
						if u22(v57.Doodle) then
							p1.Sound:Play("DiamondSparkle");
						elseif v57.Doodle.Shiny then
							p1.Sound:Play("Sparkles");
						end;
						v50.Flash.Visible = false;
						l__Utilities__1.Halt(0.15);
						u5.Funcs:ClearPrevious(v71);
					end;
				elseif v57.Action == "Wait" then
					l__Utilities__1.Halt(v57.Time);
				elseif v57.Action == "TakeDamage" then
					local v75, v76, v77 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v75) then
						v75 = u5.BGui:GetNewSprite(v75);
					end;
					p1.Sound:Play("NormalHit");
					u5.BGui:SpriteFlash(v75, v57.Decoy);
					if v77 then
						u5.BGui:HealthNumber(v76, v57.Doodle);
					end;
					if not v57.Decoy then
						u5.BGui:TakeDamage(v76, v57.Doodle, v57.currenthp);
						l__Utilities__1.Halt(0.75);
					end;
				elseif v57.Action == "UpdateHealth" then
					local v78, v79, v80 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.Funcs:IsOut(v57.Doodle, u24) or v57.Doodle.Pursuited then
						if v80 then
							u5.BGui:HealthNumber(v79, v57.Doodle);
						end;
						u5.BGui:TakeDamage(v79, v57.Doodle, v57.currenthp);
						l__Utilities__1.Halt(0.75);
					end;
				elseif v57.Action == "RaiseStat" then
					p1.Sound:Play("StatRaise");
					u5.BGui:RaiseStat(u7[v57.Doodle.ID], v57.Stat);
				elseif v57.Action == "LowerStat" then
					p1.Sound:Play("StatLower");
					u5.BGui:LowerStat(u7[v57.Doodle.ID], v57.Stat);
				elseif v57.Action == "Fainted" then
					local v81, v82, v83 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					v82.Visible = false;
					if not u5.BGui:DisappearScapegoat(v57.Doodle, v81, v83, true) then
						u5.BGui:EraserAnim(u7[v57.Doodle.ID], v83);
					end;
				elseif v57.Action == "BattleOver" then
					if not p1.Spectating and u24.BattleType ~= "PvP" then
						local v84 = "You won the battle!";
						if v57.Winner == nil then
							v84 = "You lost the battle!";
						end;
						p1.Music:FadeOutSong();
						if v57.Winner == nil then
							p1.Sound:Play("DefeatStinger");
						else
							p1.Sound:Play("VictoryStinger");
						end;
						p1.Gui:Say(v50.BottomBar.Say, v84);
						l__Utilities__1.Halt(1.5);
					end;
				elseif v57.Action == "Transition" then
					p1.Music:PlayPreviousSong(true);
					if not p1.Spectating then
						p1.Network:post(p1.Name .. "Over");
					end;
					p1.Camera:Default();
					p1.CurrentTrainerModel = nil;
					v50.MainBattle:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "Out", "Quad", 0.5, true);
					l__Utilities__1.Halt(0.5);
					if u5.Trainer3D and u5.Trainer3D.Destroy then
						u5.Trainer3D:Destroy();
					end;
					v50.MainBattle.Visible = false;
					local v85 = u5:EvolveCheck();
					if #v85 > 0 and not p1.Spectating then
						for v86, v87 in pairs(v85) do
							p1.Evolution.new({
								Doodle = v87
							});
						end;
					end;
					u15(v50);
					if not p1.Spectating then
						if v57.Winner ~= "Ran" then
							local v88 = false;
							if v57.Winner == game.Players.LocalPlayer then
								v88 = true;
							end;
						else
							v88 = true;
						end;
						p1.BattleEnd:Fire(v88);
					end;
				elseif v57.Action == "ExpBar" then
					p1.Sound:Play("Expgain");
					local v89, v90, v91 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					u5.BGui:TweenExperience(v57.Doodle, v57.CurrentLevel, v57.NextLevel, v90);
				elseif v57.Action == "Levelup" then
					local v92, v93, v94 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.Funcs:IsOut(v57.Doodle, u24) then
						u5.BGui:SetExpBar0(v93);
						p1.Gui:ChangeText(v93.LevelLabel, "Lv. " .. v57.Doodle.Level);
						v93.Health.Clipping.Size = UDim2.new(v57.Doodle.currenthp / v57.Doodle.Stats.hp, 0, 1, 0);
						p1.Gui:ChangeText(v93.Health.HealthNumber, v57.Doodle.currenthp .. " / " .. v57.Doodle.Stats.hp);
					end;
					if not p1.Spectating and p1.Settings:Get("SkipLevelUp") == false then
						p1.Sound:Play("Levelup");
						local l__PreviousStats__95 = v57.PreviousStats;
						local v96 = {};
						for v97, v98 in pairs(v57.Doodle.Stats) do
							v96[v97] = v98 - l__PreviousStats__95[v97];
						end;
						for v99, v100 in pairs(v96) do
							v50.Levelup[v99].Text = "+" .. v100;
						end;
						v50.Levelup.Visible = true;
						local u27 = nil;
						u27 = v50.Levelup.Next.MouseButton1Click:Connect(function()
							u27:Disconnect();
							v50.Levelup.Visible = false;
							p1.Gui:ResetSay();
							v2:Fire();
						end);
						v2:Wait();
					end;
				elseif v57.Action == "PlaySound" then
					p1.Sound:Play(v57.Sound);
				elseif v57.Action == "TrainerDisappear" then
					pcall(function()
						if not p1.Spectating and u5.Trainer3D then
							u5.Trainer3D.Frame:TweenPosition(UDim2.new(1.2, 0, 0.5, 0), "Out", "Quad", 1, true);
							l__Utilities__1.Halt(0.5);
						end;
					end);
				elseif v57.Action == "TrainerAppear" then
					pcall(function()
						if not p1.Spectating and u5.Trainer3D then
							v50.TrainerSprite.Visible = true;
							local v101 = UDim2.new(0.5, 0, 0.5, 0);
							if u24.Format == "Doubles" then
								v101 = UDim2.new(0.75, 0, 0.5, 0);
							end;
							u5.Trainer3D.Frame:TweenPosition(v101, "Out", "Quad", 1, true);
							l__Utilities__1.Halt(1);
						end;
					end);
				elseif v57.Action == "TrainerAnim" then
					pcall(function()
						if not u5.Trainer3D then
							return;
						end;
						if not p1.Spectating then
							if v57.Winner then
								if v57.Winner ~= game.Players.LocalPlayer then
									u5.Trainer3D:PlayAnim(v57.Anim);
									wait(1);
									return;
								end;
							elseif v57.Loser then
								if v57.Loser == game.Players.LocalPlayer then
									u5.Trainer3D:PlayAnim(v57.Anim);
									wait(1);
									return;
								end;
							else
								u5.Trainer3D:PlayAnim(v57.Anim);
							end;
						end;
					end);
				elseif v57.Action == "SwapOut" then
					l__Utilities__1.Halt(0.3);
					if p1.Settings:Get("BattleFlash") == true then
						v50.Flash.Visible = true;
					end;
					local v102, v103, v104 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					v103.Visible = false;
					v102.Parent.Visible = false;
					l__Utilities__1.Halt(0.1);
					v50.Flash.Visible = false;
				elseif v57.Action == "ThrowCapsule" then
					local v105, v106, v107 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v105) then
						v105 = u5.BGui:GetNewSprite(v105);
					end;
					local l__Item__108 = v57.Item;
					u5.BGui:ThrowCapsule(v50.FrontCapsule, v57.Item, v106, v105, v50.Flash);
				elseif v57.Action == "Shakes" then
					local l__FrontCapsule__109 = v50.FrontCapsule;
					local l__Shakes__110 = v57.Shakes;
					if l__Shakes__110 > 0 then
						for v111 = 1, l__Shakes__110 do
							if v111 ~= 1 then
								l__Utilities__1.Halt(0.75);
							end;
							l__FrontCapsule__109:TweenPosition(UDim2.new(0.582, 0, 0.498, 0), "Out", "Linear", 0.2, true);
							l__Utilities__1.Halt(0.2);
							l__FrontCapsule__109:TweenPosition(UDim2.new(0.582, 0, 0.598, 0), "Out", "Bounce", 0.5, true);
							l__Utilities__1.Halt(0.2);
							p1.Sound:Play("Bounce");
							if v111 == 3 then
								l__Utilities__1.Halt(0.75);
							else
								l__Utilities__1.Halt(0.3);
							end;
						end;
					end;
				elseif v57.Action == "Captured" then
					local l__FrontCapsule__112 = v50.FrontCapsule;
					p1.Tween:MakeTween(l__FrontCapsule__112.Sprite, {
						ImageColor3 = Color3.fromRGB(128, 128, 128)
					}, true, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
					l__FrontCapsule__112.Sprite.ImageColor3 = Color3.fromRGB(128, 128, 128);
					p1.Sound:Play("CaptureSuccess");
					u5.BGui:CapsuleFirework(l__FrontCapsule__112);
					p1.Tween:MakeTween(l__FrontCapsule__112.Sprite, {
						ImageColor3 = Color3.fromRGB(255, 255, 255)
					}, true, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
					l__Utilities__1.Halt(0.5);
				elseif v57.Action == "CaptureFail" then
					local v113, v114, v115 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v113) then
						v113 = u5.BGui:GetNewSprite(v113);
					end;
					local l__FrontCapsule__116 = v50.FrontCapsule;
					l__FrontCapsule__116.Sprite.Image = p1.MiscDB.Capsules[v57.Item].Closed;
					l__Utilities__1.Halt(0.5);
					if p1.Settings:Get("BattleFlash") == true then
						v50.Flash.Visible = true;
					end;
					v113.Visible = true;
					l__FrontCapsule__116.Visible = false;
					v114.Visible = true;
					p1.Sound:Play("LidOpen");
					l__Utilities__1.Halt(0.05);
					v50.Flash.Visible = false;
				elseif v57.Action == "MoveLearn" then
					if not p1.Spectating then
						p1.Gui:Say(v50.BottomBar.Say, "[NONEXT]" .. v57.Doodle.Name .. " wants to learn " .. v57.NewMove .. ", but can't learn more than 4 moves.");
						p1.Gui:Say(v50.BottomBar.Say, "[NONEXT]Replace a move with " .. v57.NewMove .. "?");
						local l__Yes__117 = v50.BottomBar.Yes;
						local l__No__118 = v50.BottomBar.No;
						p1.Gui:Hover(l__Yes__117);
						p1.Gui:Hover(l__No__118);
						v57.Doodle.Moves = v51[v57.Doodle.ID] or l__Utilities__1:deepCopy(v57.Doodle.Moves);
						u5.BGui:SetYesEvent(l__Yes__117, function()
							l__Yes__117.Visible = false;
							l__No__118.Visible = false;
							u5.Funcs:AddTemporaryMove(v57.Doodle, v57.NewMove);
							v50.MainBattle.Visible = false;
							local v119 = {
								Battle = u24
							};
							local u28 = l__Utilities__1:deepCopy(v57.Doodle.Moves);
							function v119.BattleAppear(p34)
								v50.MainBattle.Visible = true;
								if p1.Network:get("RemoveExtraMove", p34.ID, true) then
									local v120, v121 = u23(p34.Moves, u28, v57.NewMove);
									if v120 == "DidNotLearn" then
										p1.Gui:Say(v50.BottomBar.Say, v57.Doodle.Name .. " did not learn " .. v57.NewMove .. ".");
									elseif v120 == "MoveForgotten" then
										p1.Gui:Say(v50.BottomBar.Say, v57.Doodle.Name .. " forgot " .. v121 .. " and learned " .. v57.NewMove .. "!");
									end;
									v51[v57.Doodle.ID] = l__Utilities__1:deepCopy(p34.Moves);
									p1.MoveLearn:Fire();
								end;
							end;
							v119.LearningMove = true;
							p1.Stats.new(v119, v57.Doodle);
						end);
						u5.BGui:SetNoEvent(l__No__118, function()
							l__Yes__117.Visible = false;
							l__No__118.Visible = false;
							p1.Network:get("RemoveExtraMove", v57.Doodle.ID);
							p1.Gui:Say(v50.BottomBar.Say, v57.Doodle.Name .. " did not learn " .. v57.NewMove .. ".");
							p1.MoveLearn:Fire();
						end);
						l__Yes__117.Visible = true;
						l__No__118.Visible = true;
						p1.MoveLearn:Wait();
					end;
				elseif v57.Action == "ClearTiedSprites" then
					u5.Funcs:ClearTiedSprites();
				elseif v57.Action == "PlayAnim" then
					if (p1.Battle.Funcs:IsOut(v57.Doodle, u24) or (u5.Funcs:IsTiedSprites(v57.Doodle) or v57.Doodle.Pursuited)) and p1.Settings:Get("BattleAnimations") == true then
						local v122 = p1.Moves[v57.Move];
						local v123 = p1.Typings:GetTypeColor(v122.Type);
						local l__MoveAnims__124 = u5.MoveAnims;
						local v125, v126, v127 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
						local v128, v129, v130 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.User);
						if u5.BGui:GetNewSprite(v125) then
							v125 = u5.BGui:GetNewSprite(v125);
						end;
						if v122.MoveAnim then
							for v131, v132 in pairs(v122.MoveAnim.Order) do
								l__MoveAnims__124[v132.AnimType](v125, v132, v128);
							end;
						elseif v122.Category ~= "Passive" then
							l__MoveAnims__124.Default(v125, {
								Color = v123, 
								Size = 0.8, 
								Times = 1, 
								Wait = 0.05, 
								Pitch = 0.8
							}, v122.Type);
						end;
					end;
				elseif v57.Action == "UpdateStatus" then
					local v133, v134, v135 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					u5.BGui:UpdateStatus(v134, v57.Doodle, v57.Status);
				elseif v57.Action == "StatusAnim" then
					local v136, v137, v138 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v136) then
						v136 = u5.BGui:GetNewSprite(v136);
					end;
					if p1.Settings:Get("BattleAnimations") == true then
						if u5.MoveAnims[v57.Status] then
							u5.MoveAnims[v57.Status](v136, {});
						else
							p1.Gui:Reboot(v136);
						end;
					end;
					if v57.Status == "" then
						v57.Status = "Blank";
					end;
					u5.BGui:UpdateStatus(v137, v57.Doodle, v57.Status);
				elseif v57.Action == "ClearStatus" then
					local v139, v140, v141 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					u5.BGui:UpdateStatus(v140, v57.Doodle, "Blank");
				elseif v57.Action == "ChangeFieldColor" then
					p1.Tween:MakeTween(v50.Background, {
						ImageColor3 = v57.NewColor
					}, true, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
					l__Utilities__1.Halt(0.5);
				elseif v57.Action == "StartEffect" then
					if u24.ReverseSingularity then
						u5.BattleEffects.ReverseSingularity(v50.MainBattle);
					end;
					u5.BattleEffects.Check(v50.MainBattle, u24);
				elseif v57.Action == "StopEffect" then
					if u24.ReverseSingularity then
						u5.BattleEffects.ReverseSingularity(v50.MainBattle);
					end;
					u5.BattleEffects.Check(v50.MainBattle, u24);
				elseif v57.Action == "StartWeather" then
					u13(v50, v57.Weather);
				elseif v57.Action == "StopWeather" then
					u5.Weather.Stop(v50.MainBattle);
				elseif v57.Action == "SummonScapegoat" then
					local v142, v143, v144 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v142) then
						v142 = u5.BGui:GetNewSprite(v142);
					end;
					v142:TweenSize(UDim2.new(0, 0, v142.Size.Y.Scale, 0), "Out", "Quad", 0.2, true);
					l__Utilities__1.Halt(0.2);
					v142.Visible = false;
					u5.BGui:SummonScapegoat(v142, v144);
				elseif v57.Action == "DisappearScapegoat" then
					local v145, v146, v147 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v145) then
						v145 = u5.BGui:GetNewSprite(v145);
					end;
					u5.BGui:DisappearScapegoat(v57.Doodle, v145, v147);
				elseif v57.Action == "SpriteAppear" then
					local v148, v149, v150 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v148) then
						v148 = u5.BGui:GetNewSprite(v148);
					end;
					u5.BGui:SpriteAppear(v57.Doodle, v148);
				elseif v57.Action == "SpriteDisappear" then
					local v151, v152, v153 = u5.Funcs:FindSpriteFromDoodle(v50, u24, v57.Doodle);
					if u5.BGui:GetNewSprite(v151) then
						v151 = u5.BGui:GetNewSprite(v151);
					end;
					u5.BGui:SpriteDisappear(v57.Doodle, v151);
				end;			
			end;
		end;
		if not v49 and #u16 == 1 and not p1.Spectating and not p32 then
			p1.Network:post(p1.Name .. "Ready");
		end;
		if #u16 == 1 then
			if u24.BattleType ~= "Wild" then
				u5.BGui:PartyBar(u5.Funcs:GetEnemyParty(u24), v50.EnemyParty, u24);
			end;
			u5.BGui:PartyBar(u5.Funcs:GetPlayerParty(u24), v50.UserParty, u24);
		end;
		table.remove(u16, 1);
		v3:Fire();
		u24 = nil;
	end);
	for v154, v155 in pairs(script:GetChildren()) do
		local v156 = require(v155);
		if typeof(v156) == "function" then
			u5[v155.Name] = v156(p1, u5);
		else
			u5[v155.Name] = v155;
		end;
	end;
	return u5;
end;
