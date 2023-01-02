-- i was too lazy to put all the buttons into different sections, feel free to do it yourself
-- https://github.com/shlexware/Rayfield/blob/main/Documentation.md

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local Window =
	Rayfield:CreateWindow(
	{
		Name = "Impulse Cheats - Site 006 Roleplay",
		LoadingTitle = "Rayfield Interface Suite",
		LoadingSubtitle = "UI by Rayfield",
		ConfigurationSaving = {
			Enabled = true,
			FolderName = nil,
			FileName = "Impulse Cheats"
		},
		KeySystem = false,
		KeySettings = {
			Title = "Impulse Cheats",
			Subtitle = "Key System",
			Note = "Temporary key - hPrf5s1",
			FileName = "ImpulseKey",
			SaveKey = true,
			GrabKeyFromSite = false,
			Key = "hPrf5s1"
		}
	}
)

Rayfield:Notify(
	{
		Title = "Impulse Cheats",
		Content = "Impulse Cheats loaded! Enjoy :) ඞ",
		Duration = 6.5,
		Image = 4483362458,
		Actions = {
			Ignore = {
				Name = "Okay!",
				Callback = function()
					print("Impulse Loaded!")
				end
			}
		}
	}
)

local Tab = Window:CreateTab("Main", 4483362458)
local Section = Tab:CreateSection("Main")

local Button =
	Tab:CreateButton(
	{
		Name = "Become a Zombie",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(515.037537, -52.6874046, 465.404388)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = true
			
			wait(1)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Teleport to Test Subject Zone",
		Callback = function()
			
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10, -56, -19)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = true
			
			wait(1)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Teleport to criminal thing",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370.580017, 56.1153717, 599.809814)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = true
			
			wait(1)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Teleport to criminal thing",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.274261, -63.7465668, 335.977386)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = true
			
			wait(1)
			
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Kill All (MUST HOLD A GUN)",
		Callback = function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v and v.Character and v.Character:FindFirstChild("Head") and v.Character.Name ~= game.Players.LocalPlayer.Name and v.Character.Name ~= "ISabelleBitsyBunny" and v.Character.Name ~= "RamenNoodles1930" and v.Character.Name ~= "Aqxorus" and v.Character.Name ~= "EternalYeets" and v.Character.Name ~= "hungryfragilesurfer" then

					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
					
					local args = {
						[1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
						[2] = v.Character.Head,
						[3] = CFrame.new(Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422), Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766))
					}

					game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
				end
			end
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Join Innovation Department",
		Callback = function()
			local args = {
				[1] = "Innovation Department"
			}

			game:GetService("ReplicatedStorage").Events.Remotes.UI.Teams:FireServer(unpack(args))
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Join Security Corps",
		Callback = function()
			local args = {
				[1] = "Security Corps"
			}

			game:GetService("ReplicatedStorage").Events.Remotes.UI.Teams:FireServer(unpack(args))
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Join Test Subject",
		Callback = function()
			local args = {
				[1] = "Test Subject"
			}

			game:GetService("ReplicatedStorage").Events.Remotes.UI.Teams:FireServer(unpack(args))
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Connect lines to everyone",
		Callback = function()
			_G.toggledog = true

			while _G.toggledog do
				for i,v in pairs(game.Players:GetPlayers()) do
					if v and v.Character and v.Character:FindFirstChild("Head") then

						local args = {
							[1] = v.Name
						}

						game:GetService("ReplicatedStorage").Events.Remotes.Testing.TagEtc:FireServer(unpack(args))
						
					end
				end
				wait()
			end
			
		end
	}
)

local Button =
	Tab:CreateButton(
	{
		Name = "Stop Connect lines to everyone",
		Callback = function()
			_G.toggledog = false

			while _G.toggledog do
				for i,v in pairs(game.Players:GetPlayers()) do
					if v and v.Character and v.Character:FindFirstChild("Head") then

						local args = {
							[1] = v.Name
						}

						game:GetService("ReplicatedStorage").Events.Remotes.Testing.TagEtc:FireServer(unpack(args))
					end
				end
				wait()
			end
			
		end
	}
)
