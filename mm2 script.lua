print("Script loading....")
print("loaded?...")
game.StarterGui:SetCore("SendNotification", {
	Title = "TT_QESTING Hub";
	Text = "My YT Channel: @TT_QESTING";
	Icon = "http://www.roblox.com/asset/?id=15076243399";
	Duration = 10;
	Button1 = "Ok"
})
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
	Name = "TT_QESTING Hub Murder Mystery 2 [Support Solara!]",
	LoadingTitle = "My Discord tt_qesting",
	LoadingSubtitle = "by TT_QESTING",
	ConfigurationSaving = {
	   Enabled = true,
	   FolderName = nil,
	   FileName = "Big Hub"
	},
	Discord = {
	   Enabled = false,
	   Invite = "discord.gg/masonlar",
	   RememberJoins = true
	},
	KeySystem = false,
	KeySettings = {
	   Title = "TT_QESTING Hub",
	   Subtitle = "Key System",
	   Note = "key: 1881",
	   FileName = "KEY",
	   SaveKey = false,
	   GrabKeyFromSite = false,
	   Key = {"1881"}
	}
 })
 local PlayerTab = Window:CreateTab("Player", 13492318225)
 local Section = PlayerTab:CreateSection("Other Hubs")
 local Button = PlayerTab:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "Infinite Yield Loaded?";
			Icon = "http://www.roblox.com/asset/?id=15076243399";
			Duration = 10;
			Button1 = "Yes";
			Button2 = "No";
		})
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
 })
 local Slider = PlayerTab:CreateSlider({
    Name = "Walkspeed",
    Range = {16, 250},
    Increment = 1,
    Suffix = "Walkspeed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end,
 })
 local Section = PlayerTab:CreateSection("Destroy GUI Press 'K'")
 local Button = PlayerTab:CreateButton({
	Name = "Destroy GUI Press 'K'",
	Callback = function()
		Rayfield:Destroy()
	end,
 })
 local TeleportTab = Window:CreateTab("Teleport", 6723742952)
 local Section = TeleportTab:CreateSection("Autofarm")
 local Button = TeleportTab:CreateButton({
	Name = "AutoFarm [Very Slow and Risky]",
	Callback = function()
		local WaitTime = 3.0
		local MaxCoins = 40
		
		local function OnNewRound(CoinContainer)
			local Character = game.Players.LocalPlayer.Character
			local Coins = 0
			while Coins < MaxCoins and CoinContainer.Parent do
				for i, Coin in pairs (CoinContainer:GetChildren()) do
					if Coin.Name == "Coin_Server" then
						Character.PrimaryPart.CFrame = CFrame.new(Coin.Position)
						wait(WaitTime)
				Coins = Coins + 1
					end
				end
			wait()
			end
		end
		
		game.Workspace.DescendantAdded:Connect(function(Instance)
			if Instance.Name == "CoinContainer" then
				OnNewRound(Instance)
			end
		end)
		
		local CoinContainer = game.Workspace:FindFirstChild("CoinContainer", true)
		if CoinContainer then
			OnNewRound(CoinContainer)
		end
	end,
 })
local Section = TeleportTab:CreateSection("Teleport")
local Button = TeleportTab:CreateButton({
	Name = "Teleport GUI",
	Callback = function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "Tp GUI Loaded?";
			Icon = "http://www.roblox.com/asset/?id=15076243399";
			Duration = 10;
			Button1 = "Yes";
			Button2 = "No";
		})
		local panel = Instance.new("ScreenGui")
		panel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

		local container = Instance.new("Frame")
		container.Size = UDim2.new(0, 200, 0, 300)
		container.Position = UDim2.new(0, 10, 0, 10)
		container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		container.BorderSizePixel = 2
		container.BorderColor3 = Color3.fromRGB(0, 0, 0)
		container.Active = true
		container.Draggable = true
		container.Parent = panel

		-- Добавление надписи внизу панели
		local bottomLabel = Instance.new("TextLabel")
		bottomLabel.Size = UDim2.new(1, 0, 0, 20)
		bottomLabel.Position = UDim2.new(0, 0, 1, -20)
		bottomLabel.BackgroundTransparency = 1
		bottomLabel.Text = "tp gui by snapsan1"
		bottomLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- черный шрифт
		bottomLabel.TextScaled = true
		bottomLabel.Parent = container

		local playerName = game.Players.LocalPlayer.Name

		local function teleportToPlayer(playerName)
			local localPlayer = game.Players.LocalPlayer
			local playerToTeleport = game.Players:FindFirstChild(playerName)
			
			if playerToTeleport then
				local localPlayerCharacter = localPlayer.Character
				local playerToTeleportCharacter = playerToTeleport.Character
				
				if localPlayerCharacter and playerToTeleportCharacter then
					localPlayerCharacter:MoveTo(playerToTeleportCharacter.HumanoidRootPart.Position)
				end
			end
		end

		local function updatePlayerList()
			for _, child in ipairs(container:GetChildren()) do
				if child:IsA("Frame") then
					child:Destroy()
				end
			end
			
			for _, player in ipairs(game.Players:GetPlayers()) do
				if player.Name ~= playerName then
					local playerFrame = Instance.new("Frame")
					playerFrame.Size = UDim2.new(1, 0, 0, 30)
					playerFrame.Position = UDim2.new(0, 0, 0, (#container:GetChildren() - 1) * 30)
					playerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					playerFrame.BorderSizePixel = 0
					playerFrame.Parent = container
					
					local playerNameLabel = Instance.new("TextLabel")
					playerNameLabel.Size = UDim2.new(0.8, 0, 1, 0)
					playerNameLabel.Position = UDim2.new(0, 0, 0, 0)
					playerNameLabel.Text = player.Name
					playerNameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					playerNameLabel.BorderSizePixel = 0
					playerNameLabel.Parent = playerFrame
					
					local teleportButton = Instance.new("TextButton")
					teleportButton.Size = UDim2.new(0.2, 0, 1, 0)
					teleportButton.Position = UDim2.new(0.8, 0, 0, 0)
					teleportButton.Text = "teleport"
					teleportButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
					teleportButton.BorderSizePixel = 0
					teleportButton.Parent = playerFrame
					
					teleportButton.MouseButton1Click:Connect(function()
						teleportToPlayer(player.Name)
					end)
				end
			end
		end

		game.Players.PlayerAdded:Connect(updatePlayerList)
		game.Players.PlayerRemoving:Connect(updatePlayerList)

		updatePlayerList()

		panel.Name = "panel"
		panel.Parent = game.Players.LocalPlayer.PlayerGui
		panel.ResetOnSpawn = false
	end,
 })
 -- кнопка ТП на Карту
 local Button = TeleportTab:CreateButton({
	Name = "Teleport to Map",
	Callback = function()
		local Workplace = workspace:GetChildren()
		for i, Thing in pairs(Workplace) do
		
		    local ThingChildren = Thing:GetChildren()
		    for i, Child in pairs(ThingChildren) do
		        if Child.Name == "Spawns" then
		           
		           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Child.Spawn.CFrame
		
		        end
		    end
		end

	end,
 })
 local Button = TeleportTab:CreateButton({
	Name = "Teleport to Lobby",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.5, 160, 0.6)
	end,
 })
 	
 local Button = TeleportTab:CreateButton({
    Name = "Teleport to Murder",
    Callback = function()
        game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "only when the knife is in inventory!";
			Icon = "http://www.roblox.com/asset/?id=15076243399";
			Duration = 3;
			Button1 = "Ok"
		})
		local Players = game:GetService("Players")
        for i, player in pairs(Players:GetPlayers()) do
            local bp = player.Backpack:GetChildren()
            for i, tool in pairs(bp) do
                if tool.Name == "Knife" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[player.Name].Character.HumanoidRootPart.CFrame
                end
            end
        end
    end,
 })
 local Button = TeleportTab:CreateButton({
    Name = "Teleport to Sheriff",
    Callback = function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "only when the gun is in inventory!";
			Icon = "http://www.roblox.com/asset/?id=15076243399";
			Duration = 3;
			Button1 = "Ok"
		})
        local Players = game:GetService("Players")
        for i, player in pairs(Players:GetPlayers()) do
            local bp = player.Backpack:GetChildren()
            for i, tool in pairs(bp) do
                if tool.Name == "Gun" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[player.Name].Character.HumanoidRootPart.CFrame
                end
            end
        end
    end,
 })

 local Section = TeleportTab:CreateSection("Grabber")
local function TeleportToGun()
	local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
	local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
	local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
	
	if workspace:FindFirstChild("GunDrop") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("GunDrop").CFrame
		wait(0.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "Wait for the Sheriff's death to grab the gun";
			Icon = "";
			Duration = 2;
		})
	end
end

local Button = TeleportTab:CreateButton({
	Name = "Grab Gun",
	Callback = TeleportToGun,
w})


 local CombatTab = Window:CreateTab("Combat", 7485051715)
 local Section = CombatTab:CreateSection("Combat")
 local Button = CombatTab:CreateButton({
	Name = "GodMode [2 Lives]",
	Callback = function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "2 LIVES NO MORE. If you are killed, you will be dead to the killer, but other players will see you. ";
			Icon = "http://www.roblox.com/asset/?id=6680686532";
			Duration = 10;
			Button1 = "Ok";
		})
		local player = game.Players.LocalPlayer
		if player.Character then
			if player.Character:FindFirstChild("Humanoid") then
				player.Character.Humanoid.Name = "1"
			end
			local l = player.Character["1"]:Clone()
			l.Parent = player.Character
			l.Name = "Humanoid"; wait(0.1)
			player.Character["1"]:Destroy()
			workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
			player.Character.Animate.Disabled = true; wait(0.1)
			player.Character.Animate.Disabled = false
		end
	end,
 })
 local Button = CombatTab:CreateButton({
    Name = "Kill all [Only Murder]",
    Callback = function()
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Knife") ~= nil then -- Only works if you're the murderer
            local Players = game:GetService("Players")	
            for i, Victim in pairs(Players:GetPlayers()) do
                if Victim.Name ~= game.Players.LocalPlayer.Name then
                    repeat wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Victim.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
                    until Victim.Character.Humanoid.Health == 0
                end
            end
        end
    end,
 })
 local Button = CombatTab:CreateButton({
	Name = "Silent Aim [Only Sheriff]",
	Callback = function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "I'm sorry it's hard to do that soon in a new update.";
			Icon = "http://www.roblox.com/asset/?id=13293140775";
			Duration = 10;
		})
	end,
 })
 local Section = CombatTab:CreateSection("Trolling")
 local Button = CombatTab:CreateButton({
	Name = "Fling all",
	Callback = function()
		local Targets = {"All"}
		local Players = game:GetService("Players")
		local Player = Players.LocalPlayer

		local AllBool = false

		local GetPlayer = function(Name)
			Name = Name:lower()
			if Name == "all" or Name == "others" then
				AllBool = true
				return
			elseif Name == "random" then
				local GetPlayers = Players:GetPlayers()
				if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
				return GetPlayers[math.random(#GetPlayers)]
			elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
				for _,x in next, Players:GetPlayers() do
					if x ~= Player then
						if x.Name:lower():match("^"..Name) then
							return x;
						elseif x.DisplayName:lower():match("^"..Name) then
							return x;
						end
					end
				end
			else
				return
			end
		end

		local Message = function(_Title, _Text, Time)
			game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
		end

		local SkidFling = function(TargetPlayer)
			local Character = Player.Character
			local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
			local RootPart = Humanoid and Humanoid.RootPart

			local TCharacter = TargetPlayer.Character
			local THumanoid
			local TRootPart
			local THead
			local Accessory
			local Handle

			if TCharacter:FindFirstChildOfClass("Humanoid") then
				THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
			end
			if THumanoid and THumanoid.RootPart then
				TRootPart = THumanoid.RootPart
			end
			if TCharacter:FindFirstChild("Head") then
				THead = TCharacter.Head
			end
			if TCharacter:FindFirstChildOfClass("Accessory") then
				Accessory = TCharacter:FindFirstChildOfClass("Accessory")
			end
			if Accessoy and Accessory:FindFirstChild("Handle") then
				Handle = Accessory.Handle
			end

			if Character and Humanoid and RootPart then
				if RootPart.Velocity.Magnitude < 50 then
					getgenv().OldPos = RootPart.CFrame
				end
				if THumanoid and THumanoid.Sit and not AllBool then
					return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
				end
				if THead then
					game:GetService("Workspace").CurrentCamera.CameraSubject = THead
				elseif not THead and Handle then
					game:GetService("Workspace").CurrentCamera.CameraSubject = Handle
				elseif THumanoid and TRootPart then
					game:GetService("Workspace").CurrentCamera.CameraSubject = THumanoid
				end
				if not TCharacter:FindFirstChildWhichIsA("BasePart") then
					return
				end
				
				local FPos = function(BasePart, Pos, Ang)
					RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
					Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
					RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
					RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
				end
				
				local SFBasePart = function(BasePart)
					local TimeToWait = 2
					local Time = tick()
					local Angle = 0

					repeat
						if RootPart and THumanoid then
							if BasePart.Velocity.Magnitude < 50 then
								Angle = Angle + 100

								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
							else
								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
								
								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()
							end
						else
							break
						end
					until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
				end
				
				game:GetService("Workspace").FallenPartsDestroyHeight = 0/0
				
				local BV = Instance.new("BodyVelocity")
				BV.Name = "EpixVel"
				BV.Parent = RootPart
				BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
				BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
				
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				
				if TRootPart and THead then
					if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
						SFBasePart(THead)
					else
						SFBasePart(TRootPart)
					end
				elseif TRootPart and not THead then
					SFBasePart(TRootPart)
				elseif not TRootPart and THead then
					SFBasePart(THead)
				elseif not TRootPart and not THead and Accessory and Handle then
					SFBasePart(Handle)
				else
					return Message("Error Occurred", "Target is missing everything", 5)
				end
				
				BV:Destroy()
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
				game:GetService("Workspace").CurrentCamera.CameraSubject = Humanoid
				
				repeat
					RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
					Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
					Humanoid:ChangeState("GettingUp")
					table.foreach(Character:GetChildren(), function(_, x)
						if x:IsA("BasePart") then
							x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
						end
					end)
					task.wait()
				until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
				game:GetService("Workspace").FallenPartsDestroyHeight = getgenv().FPDH
			else
				return Message("Error Occurred", "Random error", 5)
			end
		end

		if not Welcome then Message("甩飞已开启成功", "猫脚本", 5) end
		getgenv().Welcome = true
		if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

		if AllBool then
			for _,x in next, Players:GetPlayers() do
				SkidFling(x)
			end
		end

		for _,x in next, Targets do
			if GetPlayer(x) and GetPlayer(x) ~= Player then
				if GetPlayer(x).UserId ~= 1414978355 then
					local TPlayer = GetPlayer(x)
					if TPlayer then
						SkidFling(TPlayer)
					end
				else
					Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
				end
			elseif not GetPlayer(x) and not AllBool then
				Message("Error Occurred", "Username Invalid", 5)
			end
		end
	end,
 })
 local Button = CombatTab:CreateButton({
	Name = "Fling Murder",
	Callback = function()
		local Targets = {"All"}
		local Players = game:GetService("Players")
		local Player = Players.LocalPlayer

		local AllBool = false

		local GetPlayer = function(Name)
			Name = Name:lower()
			if Name == "all" or Name == "others" then
				AllBool = true
				return
			elseif Name == "random" then
				local GetPlayers = Players:GetPlayers()
				if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
				return GetPlayers[math.random(#GetPlayers)]
			elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
				for _,x in next, Players:GetPlayers() do
					if x ~= Player then
						if x.Name:lower():match("^"..Name) then
							return x;
						elseif x.DisplayName:lower():match("^"..Name) then
							return x;
						end
					end
				end
			else
				return
			end
		end

		local Message = function(_Title, _Text, Time)
			game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
		end

		local SkidFling = function(TargetPlayer)
			local Character = Player.Character
			local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
			local RootPart = Humanoid and Humanoid.RootPart

			local TCharacter = TargetPlayer.Character
			local THumanoid
			local TRootPart
			local THead
			local Accessory
			local Handle

			if TCharacter:FindFirstChildOfClass("Humanoid") then
				THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
			end
			if THumanoid and THumanoid.RootPart then
				TRootPart = THumanoid.RootPart
			end
			if TCharacter:FindFirstChild("Head") then
				THead = TCharacter.Head
			end
			if TCharacter:FindFirstChildOfClass("Accessory") then
				Accessory = TCharacter:FindFirstChildOfClass("Accessory")
			end
			if Accessoy and Accessory:FindFirstChild("Handle") then
				Handle = Accessory.Handle
			end

			if Character and Humanoid and RootPart then
				if RootPart.Velocity.Magnitude < 50 then
					getgenv().OldPos = RootPart.CFrame
				end
				if THumanoid and THumanoid.Sit and not AllBool then
					return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
				end
				if THead then
					game:GetService("Workspace").CurrentCamera.CameraSubject = THead
				elseif not THead and Handle then
					game:GetService("Workspace").CurrentCamera.CameraSubject = Handle
				elseif THumanoid and TRootPart then
					game:GetService("Workspace").CurrentCamera.CameraSubject = THumanoid
				end
				if not TCharacter:FindFirstChildWhichIsA("BasePart") then
					return
				end
				
				local FPos = function(BasePart, Pos, Ang)
					RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
					Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
					RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
					RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
				end
				
				local SFBasePart = function(BasePart)
					local TimeToWait = 2
					local Time = tick()
					local Angle = 0

					repeat
						if RootPart and THumanoid then
							if BasePart.Velocity.Magnitude < 50 then
								Angle = Angle + 100

								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
							else
								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
								
								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()
							end
						else
							break
						end
					until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
				end
				
				game:GetService("Workspace").FallenPartsDestroyHeight = 0/0
				
				local BV = Instance.new("BodyVelocity")
				BV.Name = "EpixVel"
				BV.Parent = RootPart
				BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
				BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
				
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				
				if TRootPart and THead then
					if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
						SFBasePart(THead)
					else
						SFBasePart(TRootPart)
					end
				elseif TRootPart and not THead then
					SFBasePart(TRootPart)
				elseif not TRootPart and THead then
					SFBasePart(THead)
				elseif not TRootPart and not THead and Accessory and Handle then
					SFBasePart(Handle)
				else
					return Message("Error Occurred", "Target is missing everything", 5)
				end
				
				BV:Destroy()
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
				game:GetService("Workspace").CurrentCamera.CameraSubject = Humanoid
				
				repeat
					RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
					Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
					Humanoid:ChangeState("GettingUp")
					table.foreach(Character:GetChildren(), function(_, x)
						if x:IsA("BasePart") then
							x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
						end
					end)
					task.wait()
				until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
				game:GetService("Workspace").FallenPartsDestroyHeight = getgenv().FPDH
			else
				return Message("Error Occurred", "Random error", 5)
			end
		end

		if not Welcome then Message("甩飞已开启成功", "猫脚本", 5) end
		getgenv().Welcome = true
		if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
		if AllBool then
			for _,x in pairs(game:GetService("Players"):GetPlayers()) do
				if x.Backpack:FindFirstChild("Knife") or x.Character:FindFirstChild("Knife") then
					SkidFling(x)
				end
			end
		end
	end,
 })
 local Button = CombatTab:CreateButton({
	Name = "Fling Sheriff",
	Callback = function()
		local Targets = {"All"} -- "All", "Target Name", "arian_was_here"

		local Players = game:GetService("Players")
		local Player = Players.LocalPlayer

		local AllBool = false

		local GetPlayer = function(Name)
			Name = Name:lower()
			if Name == "all" or Name == "others" then
				AllBool = true
				return
			elseif Name == "random" then
				local GetPlayers = Players:GetPlayers()
				if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
				return GetPlayers[math.random(#GetPlayers)]
			elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
				for _,x in next, Players:GetPlayers() do
					if x ~= Player then
						if x.Name:lower():match("^"..Name) then
							return x;
						elseif x.DisplayName:lower():match("^"..Name) then
							return x;
						end
					end
				end
			else
				return
			end
		end

		local Message = function(_Title, _Text, Time)
			game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
		end

		local SkidFling = function(TargetPlayer)
			local Character = Player.Character
			local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
			local RootPart = Humanoid and Humanoid.RootPart

			local TCharacter = TargetPlayer.Character
			local THumanoid
			local TRootPart
			local THead
			local Accessory
			local Handle

			if TCharacter:FindFirstChildOfClass("Humanoid") then
				THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
			end
			if THumanoid and THumanoid.RootPart then
				TRootPart = THumanoid.RootPart
			end
			if TCharacter:FindFirstChild("Head") then
				THead = TCharacter.Head
			end
			if TCharacter:FindFirstChildOfClass("Accessory") then
				Accessory = TCharacter:FindFirstChildOfClass("Accessory")
			end
			if Accessoy and Accessory:FindFirstChild("Handle") then
				Handle = Accessory.Handle
			end

			if Character and Humanoid and RootPart then
				if RootPart.Velocity.Magnitude < 50 then
					getgenv().OldPos = RootPart.CFrame
				end
				if THumanoid and THumanoid.Sit and not AllBool then
					return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
				end
				if THead then
					game:GetService("Workspace").CurrentCamera.CameraSubject = THead
				elseif not THead and Handle then
					game:GetService("Workspace").CurrentCamera.CameraSubject = Handle
				elseif THumanoid and TRootPart then
					game:GetService("Workspace").CurrentCamera.CameraSubject = THumanoid
				end
				if not TCharacter:FindFirstChildWhichIsA("BasePart") then
					return
				end
				
				local FPos = function(BasePart, Pos, Ang)
					RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
					Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
					RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
					RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
				end
				
				local SFBasePart = function(BasePart)
					local TimeToWait = 2
					local Time = tick()
					local Angle = 0

					repeat
						if RootPart and THumanoid then
							if BasePart.Velocity.Magnitude < 50 then
								Angle = Angle + 100

								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
							else
								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
								
								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
								task.wait()

								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()
							end
						else
							break
						end
					until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
				end
				
				game:GetService("Workspace").FallenPartsDestroyHeight = 0/0
				
				local BV = Instance.new("BodyVelocity")
				BV.Name = "EpixVel"
				BV.Parent = RootPart
				BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
				BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
				
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				
				if TRootPart and THead then
					if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
						SFBasePart(THead)
					else
						SFBasePart(TRootPart)
					end
				elseif TRootPart and not THead then
					SFBasePart(TRootPart)
				elseif not TRootPart and THead then
					SFBasePart(THead)
				elseif not TRootPart and not THead and Accessory and Handle then
					SFBasePart(Handle)
				else
					return Message("Error Occurred", "Target is missing everything", 5)
				end
				
				BV:Destroy()
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
				game:GetService("Workspace").CurrentCamera.CameraSubject = Humanoid
				
				repeat
					RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
					Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
					Humanoid:ChangeState("GettingUp")
					table.foreach(Character:GetChildren(), function(_, x)
						if x:IsA("BasePart") then
							x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
						end
					end)
					task.wait()
				until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
				game:GetService("Workspace").FallenPartsDestroyHeight = getgenv().FPDH
			else
				return Message("Error Occurred", "Random error", 5)
			end
		end

		if not Welcome then Message("甩飞已开启成功", "猫脚本", 5) end
		getgenv().Welcome = true
		if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
		if AllBool then
			for _,x in pairs(game:GetService("Players"):GetPlayers()) do
				if x.Backpack:FindFirstChild("Gun") or x.Character:FindFirstChild("Gun") then
					SkidFling(x)
				end
			end
		end
	end,
 })
 local Button = CombatTab:CreateButton({
	Name = "Flips",
	Callback = function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = " FrontflipKey = Z , BackflipKey = X ;
			Icon = "http://www.roblox.com/asset/?id=15076243399";
			Duration = 3;
			Button1 = "Ok"
		})
		game.StarterGui:SetCore("SendNotification", {
			Title = "TT_QESTING Hub";
			Text = "Wait 3 sec Loading...";
			Icon = "http://www.roblox.com/asset/?id=15076243399";
			Duration = 3;
			Button1 = "Ok"
		})
		loadstring(game:HttpGet('https://pastebin.com/raw/CWn3dvTV'))()
	end,
 })
 local Section = CombatTab:CreateSection("Fake Die")
 local Button = CombatTab:CreateButton({
	Name = "Lay On Back",
	Callback = function()
		local Human = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
		if not Human then
    		return
		end
		Human.Sit = true
		task.wait(.1)
		Human.RootPart.CFrame = Human.RootPart.CFrame * CFrame.Angles(math.pi * .5, 0, 0)
	end,
 })
 -- sit
 local Button = CombatTab:CreateButton({
	Name = "Sit",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit = true
	end,
 })
 -- подраздел visual
 local VisualTab = Window:CreateTab("Visual", 13321848320) -- Title, Image
 -- esp section
 local Section = VisualTab:CreateSection("Esp")
 --esp gun button
 local Button = VisualTab:CreateButton({
    Name = "Esp Gun",
    Callback = function()
        local function UpdateEspGunHighlight()
            if workspace:FindFirstChild("GunDrop") and not workspace.GunDrop:FindFirstChild("Esp_gun") then
                local espgunhigh = Instance.new("Highlight", workspace:FindFirstChild("GunDrop"))
                espgunhigh.Name = "Esp_gun"
                espgunhigh.FillColor = Color3.fromRGB(148,0,211)
                espgunhigh.OutlineTransparency = 1
                espgunhigh.FillTransparency = 0
            end
        end

        -- Call the update function
        UpdateEspGunHighlight()

        -- Set up auto-update with a 2-second interval
        while true do
            wait(2) -- Adjust the interval to 2 seconds

            -- Update the ESP gun highlight
            UpdateEspGunHighlight()
        end
    end,
})
 -- кнопка esp
 local Button = VisualTab:CreateButton({
	Name = "Esp All",
	Callback = function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local LP = Players.LocalPlayer
		local roles

		-- > Functions <--

		function CreateHighlight()
			for i, v in pairs(Players:GetChildren()) do
				if v ~= LP and v.Character and not v.Character:FindFirstChild("Highlight") then
					Instance.new("Highlight", v.Character)           
				end
			end
		end

		function UpdateHighlights() -- Get Current Role Colors (messy)
			for _, v in pairs(Players:GetChildren()) do
				if v ~= LP and v.Character and v.Character:FindFirstChild("Highlight") then
					Highlight = v.Character:FindFirstChild("Highlight")
					if v.Name == Sheriff and IsAlive(v) then
						Highlight.FillColor = Color3.fromRGB(0, 0, 225)
					elseif v.Name == Murder and IsAlive(v) then
						Highlight.FillColor = Color3.fromRGB(225, 0, 0)
					elseif v.Name == Hero and IsAlive(v) and not IsAlive(game.Players[Sheriff]) then
						Highlight.FillColor = Color3.fromRGB(255, 250, 0)
					else
						Highlight.FillColor = Color3.fromRGB(0, 225, 0)
					end
				end
			end
		end	

		function IsAlive(Player) -- Simple sexy function
			for i, v in pairs(roles) do
				if Player.Name == i then
					if not v.Killed and not v.Dead then
						return true
					else
						return false
					end
				end
			end
		end


		-- > Loops < --

		RunService.RenderStepped:connect(function()
			roles = ReplicatedStorage:FindFirstChild("GetPlayerData", true):InvokeServer()
			for i, v in pairs(roles) do
				if v.Role == "Murderer" then
					Murder = i
				elseif v.Role == 'Sheriff'then
					Sheriff = i
				elseif v.Role == 'Hero'then
					Hero = i
				end
			end
			CreateHighlight()
			UpdateHighlights()
		end)
	end,
 })
 local Section = VisualTab:CreateSection("Visual")
 local Button = VisualTab:CreateButton({
	Name = "Sprint Trail",
	Callback = function()
		game:GetService("Workspace")[game.Players.LocalPlayer.Name].SpeedTrail.Toggle:FireServer(true)
	end,
 })
