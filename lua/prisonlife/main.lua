loadstring(game:HttpGet('https://h9b.github.io/h/lua/prisonlife/ver.lua'))();
if _G.ver == 'b1.0.0' then
	if game.PlaceId == 155615604 then
		local h9bprison = Instance.new("ScreenGui")
		local servercheats = Instance.new("Frame")
		local title = Instance.new("TextLabel")
		local killall = Instance.new("TextButton")
		local superpunch = Instance.new("TextButton")
		local loopkillall = Instance.new("TextButton")
		local teleportcheats = Instance.new("Frame")
		local title1 = Instance.new("TextLabel")
		local yard = Instance.new("TextButton")
		local crimbase = Instance.new("TextButton")
		local tower = Instance.new("TextButton")
		local sever = Instance.new("TextButton")
		local teams = Instance.new("Frame")
		local title2 = Instance.new("TextLabel")
		local cop = Instance.new("TextButton")
		local godmode = Instance.new("TextButton")
		local neutral = Instance.new("TextButton")
		local inmate = Instance.new("TextButton")
		local credits = Instance.new("Frame")
		local title3 = Instance.new("TextLabel")
		local scripter = Instance.new("TextLabel")
		local uimaker = Instance.new("TextLabel")
		local github = Instance.new("TextLabel")

		local function GetPos()
			return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end

		local function GetCamPos()
			return workspace.CurrentCamera.CFrame
		end

		local function GetTeam()
			return game.Players.LocalPlayer.TeamColor.Name
		end

		local function Kill(Player)
			pcall(function()
				if Player.Character:FindFirstChild("ForceField") or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

				local MyTeam = GetTeam()
				if Player.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
					local savedcf = GetPos()
					local savedcamcf = GetCamPos()
					workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
					workspace.CurrentCamera.CFrame = savedcamcf
					workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
				end

				local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")

				local FireEvent = {
					[1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [2] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [3] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [4] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [5] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [6] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [7] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}, [8] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
						["Distance"] = 0, 
						["Cframe"] = CFrame.new(), 
						["Hit"] = workspace[Player.Name].Head
					}
				}

				game:GetService("ReplicatedStorage").ShootEvent:FireServer(FireEvent, Gun)
				Gun.Parent = game.Players.LocalPlayer.Character
				game.Players.LocalPlayer.Character["Remington 870"]:Destroy()
			end)
		end

		_G.loopkillall = false;
		_G.godmode = false;

		h9bprison.Name = "h9bprison"
		h9bprison.Parent = game:WaitForChild("CoreGui")
		h9bprison.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		servercheats.Name = "servercheats"
		servercheats.Parent = h9bprison
		servercheats.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		servercheats.BackgroundTransparency = 0.200
		servercheats.BorderSizePixel = 2
		servercheats.Position = UDim2.new(0.013798466, 0, 0.0154310223, 0)
		servercheats.Size = UDim2.new(0, 161, 0, 169)
		servercheats.Draggable = true
		servercheats.Active = true
		servercheats.Selectable = true

		title.Name = "title"
		title.Parent = servercheats
		title.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		title.BackgroundTransparency = 0.500
		title.Size = UDim2.new(0, 161, 0, 34)
		title.Font = Enum.Font.SourceSansBold
		title.Text = "Server:"
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextSize = 18.000

		killall.Name = "killall"
		killall.Parent = servercheats
		killall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		killall.BackgroundTransparency = 1.000
		killall.Position = UDim2.new(0.10559006, 0, 0.280000001, 0)
		killall.Size = UDim2.new(0, 127, 0, 29)
		killall.Font = Enum.Font.SourceSans
		killall.Text = "Kill All"
		killall.TextColor3 = Color3.fromRGB(255, 255, 255)
		killall.TextSize = 20.000
		killall.MouseButton1Click:Connect(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					Kill(v)
				end
			end
		end)

		superpunch.Name = "superpunch"
		superpunch.Parent = servercheats
		superpunch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		superpunch.BackgroundTransparency = 1.000
		superpunch.Position = UDim2.new(0.10559006, 0, 0.473333329, 0)
		superpunch.Size = UDim2.new(0, 127, 0, 29)
		superpunch.Font = Enum.Font.SourceSans
		superpunch.Text = "Super Punch"
		superpunch.TextColor3 = Color3.fromRGB(255, 255, 255)
		superpunch.TextSize = 20.000
		superpunch.MouseButton1Click:Connect(function()
			local mainRemotes = game.ReplicatedStorage
			local meleeRemote = mainRemotes['meleeEvent']
			local mouse = game.Players.LocalPlayer:GetMouse()
			local punching = false
			local cooldown = false

			local function punch()
				cooldown = true
				local part = Instance.new("Part", game.Players.LocalPlayer.Character)
				part.Transparency = 1
				part.Size = Vector3.new(5, 2, 3)
				part.CanCollide = false
				local w1 = Instance.new("Weld", part)
				w1.Part0 = game.Players.LocalPlayer.Character.Torso
				w1.Part1 = part
				w1.C1 = CFrame.new(0,0,2)
				part.Touched:connect(function(hit)
					if game.Players:FindFirstChild(hit.Parent.Name) then
						local plr = game.Players:FindFirstChild(hit.Parent.Name)
						if plr.Name ~= game.Players.LocalPlayer.Name then
							part:Destroy()
							for i = 1,100 do
								meleeRemote:FireServer(plr)
							end
						end
					end
				end)
				wait(1)
				cooldown = false
				part:Destroy()
			end

			mouse.KeyDown:connect(function(key)
				if cooldown == false then
					if key:lower() == "f" then
						punch() end
				end
			end)
		end)

		loopkillall.Name = "loopkillall"
		loopkillall.Parent = servercheats
		loopkillall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		loopkillall.BackgroundTransparency = 1.000
		loopkillall.Position = UDim2.new(0.10559006, 0, 0.666666627, 0)
		loopkillall.Size = UDim2.new(0, 127, 0, 29)
		loopkillall.Font = Enum.Font.SourceSans
		loopkillall.Text = "Loop Kill All"
		loopkillall.TextColor3 = Color3.fromRGB(255, 0, 0)
		loopkillall.TextSize = 20.000
		loopkillall.MouseButton1Click:Connect(function()
			if _G.loopkillall == false then
				_G.loopkillall = true;
				loopkillall.TextColor3 = Color3.fromRGB(0, 255, 0);
			else
				_G.loopkillall = false;
				loopkillall.TextColor3 = Color3.fromRGB(255, 0, 0);
			end
		end)

		godmode.Name = "godmode"
		godmode.Parent = servercheats
		godmode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		godmode.BackgroundTransparency = 1.000
		godmode.Position = UDim2.new(0.10559006, 0, 0.861341214, 0)
		godmode.Size = UDim2.new(0, 127, 0, 29)
		godmode.Font = Enum.Font.SourceSans
		godmode.Text = "God Mode"
		godmode.TextColor3 = Color3.fromRGB(255, 0, 0)
		godmode.TextSize = 20.000
		godmode.MouseButton1Click:Connect(function()
			if _G.godmode == false then
				_G.godmode = true;
				godmode.TextColor3 = Color3.fromRGB(0, 255, 0);
			else
				_G.godmode = false;
				godmode.TextColor3 = Color3.fromRGB(255, 0, 0);
			end
		end)

		teleportcheats.Name = "teleportcheats"
		teleportcheats.Parent = h9bprison
		teleportcheats.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		teleportcheats.BackgroundTransparency = 0.200
		teleportcheats.BorderSizePixel = 2
		teleportcheats.Position = UDim2.new(0.153935552, 0, 0.0154310148, 0)
		teleportcheats.Size = UDim2.new(0, 161, 0, 170)
		teleportcheats.Draggable = true
		teleportcheats.Active = true
		teleportcheats.Selectable = true

		title1.Name = "title1"
		title1.Parent = teleportcheats
		title1.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		title1.BackgroundTransparency = 0.500
		title1.Size = UDim2.new(0, 161, 0, 34)
		title1.Font = Enum.Font.SourceSansBold
		title1.Text = "Teleports:"
		title1.TextColor3 = Color3.fromRGB(255, 255, 255)
		title1.TextSize = 18.000

		yard.Name = "yard"
		yard.Parent = teleportcheats
		yard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		yard.BackgroundTransparency = 1.000
		yard.Position = UDim2.new(0.10559006, 0, 0.246253878, 0)
		yard.Size = UDim2.new(0, 127, 0, 29)
		yard.Font = Enum.Font.SourceSans
		yard.Text = "Yard"
		yard.TextColor3 = Color3.fromRGB(255, 255, 255)
		yard.TextSize = 20.000
		yard.MouseButton1Click:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(791, 98, 2498)
		end)

		crimbase.Name = "crimbase"
		crimbase.Parent = teleportcheats
		crimbase.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		crimbase.BackgroundTransparency = 1.000
		crimbase.Position = UDim2.new(0.10559006, 0, 0.414509803, 0)
		crimbase.Size = UDim2.new(0, 127, 0, 29)
		crimbase.Font = Enum.Font.SourceSans
		crimbase.Text = "Crim Base"
		crimbase.TextColor3 = Color3.fromRGB(255, 255, 255)
		crimbase.TextSize = 20.000
		crimbase.MouseButton1Click:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 95, 2055)
		end)

		tower.Name = "tower"
		tower.Parent = teleportcheats
		tower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tower.BackgroundTransparency = 1.000
		tower.Position = UDim2.new(0.10559006, 0, 0.584661722, 0)
		tower.Size = UDim2.new(0, 127, 0, 29)
		tower.Font = Enum.Font.SourceSans
		tower.Text = "Yard Tower"
		tower.TextColor3 = Color3.fromRGB(255, 255, 255)
		tower.TextSize = 20.000
		tower.MouseButton1Click:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822, 131, 2588)
		end)

		sever.Name = "sever"
		sever.Parent = teleportcheats
		sever.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		sever.BackgroundTransparency = 1.000
		sever.Position = UDim2.new(0.10559006, 0, 0.758175552, 0)
		sever.Size = UDim2.new(0, 127, 0, 29)
		sever.Font = Enum.Font.SourceSans
		sever.Text = "Sewer"
		sever.TextColor3 = Color3.fromRGB(255, 255, 255)
		sever.TextSize = 20.000
		sever.MouseButton1Click:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 79, 2311)
		end)

		teams.Name = "teams"
		teams.Parent = h9bprison
		teams.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		teams.BackgroundTransparency = 0.200
		teams.BorderSizePixel = 2
		teams.Position = UDim2.new(0.291787803, 0, 0.0154310176, 0)
		teams.Size = UDim2.new(0, 161, 0, 150)
		teams.Draggable = true
		teams.Active = true
		teams.Selectable = true

		title2.Name = "title2"
		title2.Parent = teams
		title2.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		title2.BackgroundTransparency = 0.500
		title2.Size = UDim2.new(0, 161, 0, 34)
		title2.Font = Enum.Font.SourceSansBold
		title2.Text = "Teams"
		title2.TextColor3 = Color3.fromRGB(255, 255, 255)
		title2.TextSize = 18.000

		cop.Name = "cop"
		cop.Parent = teams
		cop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		cop.BackgroundTransparency = 1.000
		cop.Position = UDim2.new(0.10559006, 0, 0.280000001, 0)
		cop.Size = UDim2.new(0, 127, 0, 29)
		cop.Font = Enum.Font.SourceSans
		cop.Text = "Guard"
		cop.TextColor3 = Color3.fromRGB(255, 255, 255)
		cop.TextSize = 20.000
		cop.MouseButton1Click:Connect(function()
			workspace.Remote.TeamEvent:FireServer("Bright blue")
		end)

		neutral.Name = "neutral"
		neutral.Parent = teams
		neutral.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		neutral.BackgroundTransparency = 1.000
		neutral.Position = UDim2.new(0.10559006, 0, 0.473333329, 0)
		neutral.Size = UDim2.new(0, 127, 0, 29)
		neutral.Font = Enum.Font.SourceSans
		neutral.Text = "Neutral"
		neutral.TextColor3 = Color3.fromRGB(255, 255, 255)
		neutral.TextSize = 20.000
		neutral.MouseButton1Click:Connect(function()
			workspace.Remote.TeamEvent:FireServer("Medium stone gray")
		end)

		inmate.Name = "inmate"
		inmate.Parent = teams
		inmate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		inmate.BackgroundTransparency = 1.000
		inmate.Position = UDim2.new(0.10559006, 0, 0.666666627, 0)
		inmate.Size = UDim2.new(0, 127, 0, 29)
		inmate.Font = Enum.Font.SourceSans
		inmate.Text = "Inmate"
		inmate.TextColor3 = Color3.fromRGB(255, 255, 255)
		inmate.TextSize = 20.000
		inmate.MouseButton1Click:Connect(function()
			workspace.Remote.TeamEvent:FireServer("Bright orange")
		end)

		credits.Name = "credits"
		credits.Parent = h9bprison
		credits.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		credits.BackgroundTransparency = 0.200
		credits.BorderSizePixel = 2
		credits.Position = UDim2.new(0.431163281, 0, 0.0154310176, 0)
		credits.Size = UDim2.new(0, 161, 0, 150)
		credits.Draggable = true
		credits.Active = true
		credits.Selectable = true

		title3.Name = "title3"
		title3.Parent = credits
		title3.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		title3.BackgroundTransparency = 0.500
		title3.Size = UDim2.new(0, 161, 0, 34)
		title3.Font = Enum.Font.SourceSansBold
		title3.Text = "Credits:"
		title3.TextColor3 = Color3.fromRGB(255, 255, 255)
		title3.TextSize = 18.000

		scripter.Name = "scripter"
		scripter.Parent = credits
		scripter.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		scripter.BackgroundTransparency = 0.500
		scripter.BorderSizePixel = 0
		scripter.Position = UDim2.new(0.0372670814, 0, 0.280000001, 0)
		scripter.Size = UDim2.new(0, 148, 0, 28)
		scripter.Font = Enum.Font.SourceSansBold
		scripter.Text = "Scripter: h9b"
		scripter.TextColor3 = Color3.fromRGB(255, 255, 255)
		scripter.TextSize = 18.000

		uimaker.Name = "uimaker"
		uimaker.Parent = credits
		uimaker.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		uimaker.BackgroundTransparency = 0.500
		uimaker.BorderSizePixel = 0
		uimaker.Position = UDim2.new(0.0372670814, 0, 0.479999989, 0)
		uimaker.Size = UDim2.new(0, 148, 0, 28)
		uimaker.Font = Enum.Font.SourceSansBold
		uimaker.Text = "UI Maker: h9b"
		uimaker.TextColor3 = Color3.fromRGB(255, 255, 255)
		uimaker.TextSize = 18.000

		github.Name = "github"
		github.Parent = credits
		github.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
		github.BackgroundTransparency = 0.500
		github.BorderSizePixel = 0
		github.Position = UDim2.new(0.0372670814, 0, 0.855949938, 0)
		github.Size = UDim2.new(0, 148, 0, 15)
		github.Font = Enum.Font.SourceSansBold
		github.Text = "github.com/h9b"
		github.TextColor3 = Color3.fromRGB(255, 255, 255)
		github.TextSize = 15.000

		while wait() do
			if _G.loopkillall == true then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Kill(v)
					end
				end
			end
			if _G.godmode == true then
				game.Players.LocalPlayer.Character.Humanoid.Name = 1
				local l = game.Players.LocalPlayer.Character["1"]:Clone()
				l.Parent = game.Players.LocalPlayer.Character
				l.Name = "Humanoid"
				game.Players.LocalPlayer.Character.Animate.Disabled = true
				wait()
				game.Players.LocalPlayer.Character.Animate.Disabled = false
				game.Players.LocalPlayer.Character["1"]:Destroy()
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				wait(5)
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				local savedteam = GetTeam()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
				workspace.CurrentCamera.CFrame = savedcamcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
		end
	end
else
	print('unsupported version')
end
