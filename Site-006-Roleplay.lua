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

local Toggle =
    Tab:CreateToggle(
    {
        Name = "Mod Detector (METHOD 1)",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.ChatDetector = Value

            while _G.ChatDetector do
                print("User Detecting...")

                for i, v in pairs(game.Players:GetPlayers()) do
                    if
                        string.match(v.UserId, "38152945") or string.match(v.UserId, "938606828") or
                            string.match(v.UserId, "1666262200") or string.match(v.UserId, "1401904438")
                     then
                        game:GetService("StarterGui"):SetCore(
                            "SendNotification",
                            {
                                Title = "Mod Detector",
                                Text = "User detected: " .. v.Name .. "!"
                            }
                        )
                    end
                end

                wait(1)
            end
        end
    }
)

local Toggle =
    Tab:CreateToggle(
    {
        Name = "Mod Detector (METHOD 2)",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.ModDetector = Value

            while _G.ModDetector do
                print("Rank Detecting...")
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v.Team.Name == "Regulations Department" or string.match(v.UserId, "38152945") then
                        game:GetService("StarterGui"):SetCore(
                            "SendNotification",
                            {
                                Title = "Mod Detector",
                                Text = "User detected: " .. v.Name .. "!"
                            }
                        )
                    end
                end
                wait(1)
            end
        end
    }
)

local Toggle =
    Tab:CreateToggle(
    {
        Name = "Report all (Cover up traces)",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.Report = Value

            while _G.Report do
                print("Reporting all...")

                for i,v in pairs(game.Players:GetPlayers()) do
					if v and v.Character and v.Character:FindFirstChild("Head") and v.Character.Name ~= game.Players.LocalPlayer.Name then

						local args = {
							[1] = v.UserId,
							[2] = v.Name,
							[3] = "Exploiting"
						}

						game:GetService("ReplicatedStorage").Events.Remotes.NewReport:FireServer(unpack(args))

					end
				end
                wait(1)
            end
        end
    }
)

local Tab = Window:CreateTab("Player", 4483362458)
local Section = Tab:CreateSection("Main")

local Toggle =
    Tab:CreateToggle(
    {
        Name = "Connect lines to everyone",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.Lines = Value

            while _G.Lines do
                for i, v in pairs(game.Players:GetPlayers()) do
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
        Name = "Become a Zombie",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(515.037537, -52.6874046, 465.404388)

            game.Players.LocalPlayer.Character.UpperTorso.Anchored = true

            wait(1)

            game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
        end
    }
)

local Tab = Window:CreateTab("Teleports", 4483362458)
local Section = Tab:CreateSection("Main")

local Button =
    Tab:CreateButton(
    {
        Name = "Test Subject Zone",
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
        Name = "Nuke Shelter",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.274261, -63.7465668, 335.977386)

            game.Players.LocalPlayer.Character.UpperTorso.Anchored = true

            wait(1)

            game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
        end
    }
)

local Tab = Window:CreateTab("Combat", 4483362458)
local Section = Tab:CreateSection("Main")

local Input =
    Tab:CreateInput(
    {
        Name = "Kill:",
        PlaceholderText = "Username",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name == Text or v.DisplayName == Text and v.Name ~= game.Players.LocalPlayer.Name then
                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
                end
            end
        end
    }
)

local Input =
    Tab:CreateInput(
    {
        Name = "Fake Exploiter:",
        PlaceholderText = "Username",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            for i, v in pairs(game.Players:GetPlayers()) do
                if v and v.Character and v.Character:FindFirstChild("Head") and v.Name ~= Text then
                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
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
        Name = "Kill All (MUST HOLD A GUN)",
        Callback = function()
            for i, v in pairs(game.Players:GetPlayers()) do
                if
                    v and v.Character and v.Character:FindFirstChild("Head") and
                        v.Character.Name ~= game.Players.LocalPlayer.Name
                 then
                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
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
        Name = "Safe Kill All (MUST HOLD A GUN)",
        Callback = function()
            for i, v in pairs(game.Players:GetPlayers()) do
                if v and v.Character and v.Character:FindFirstChild("Head") then
                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
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
        Name = "Kill Test Subjects (MUST HOLD A GUN)",
        Callback = function()
            for i, v in pairs(game.Players:GetPlayers()) do
                if
                    v and v.Character and v.Character:FindFirstChild("Head") and
                        v.Character.Name ~= game.Players.LocalPlayer.Name and v.Team.Name == "Test Subject"
                 then
                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))

                    local args = {
                        [1] = Vector3.new(14.122259140014648, -55.53848648071289, -15.409262657165527),
                        [2] = v.Character.Head,
                        [3] = CFrame.new(
                            Vector3.new(13.51423454284668, -55.00370788574219, -15.545818328857422),
                            Vector3.new(0.3440513610839844, -0.0569915771484375, -0.9372196197509766)
                        )
                    }

                    game:GetService("ReplicatedStorage").Events.Remotes.Guns.CreateInstance:FireServer(unpack(args))
                end
            end
        end
    }
)

local Tab = Window:CreateTab("Teams", 4483362458)
local Section = Tab:CreateSection("Main")

local Button =
    Tab:CreateButton(
    {
        Name = "Innovation Department",
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
        Name = "Security Corps",
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
        Name = "Test Subjects",
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
        Name = "The Red Wolves",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370.580017, 56.1153717, 599.809814)

            game.Players.LocalPlayer.Character.UpperTorso.Anchored = true

            wait(1)

            game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
        end
    }
)

local Tab = Window:CreateTab("Map", 4483362458)
local Section = Tab:CreateSection("Main")

local Button =
    Tab:CreateButton(
    {
        Name = "Fix Map",
        Callback = function()
            for i, v in pairs(game:GetService("Workspace").Map.Flooring:GetChildren()) do
                if v and v.Position == Vector3.new(-67.67001342773438, -58.8499755859375, -18.825008392333984) then
                    v.CanCollide = true
                    v.Transparency = 0
                end
            end
        end
    }
)

local Button =
    Tab:CreateButton(
    {
        Name = "Create Safe Zone",
        Callback = function()
        	
        	local g = Instance.new("Part")
            g.Parent = workspace
            g.Anchored = true
            g.Position = Vector3.new(-67, -69, -16)
            g.Size = Vector3.new(289, 0, 167)
        	
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10, -65, -19)
            game.Players.LocalPlayer.Character.UpperTorso.Anchored = true

            wait(1)
            game.Players.LocalPlayer.Character.UpperTorso.Anchored = false

            for i, v in pairs(game:GetService("Workspace").Map.Flooring:GetChildren()) do
                if v and v.Position == Vector3.new(-67.67001342773438, -58.8499755859375, -18.825008392333984) then
                    v.CanCollide = false
                    v.Transparency = 1
                end
            end
        end
    }
)

local Tab = Window:CreateTab("Info", 4483362458)
local Section = Tab:CreateSection("Main")
