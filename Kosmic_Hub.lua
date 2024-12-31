 
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "KOSMIC HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

    -- Functions

    local function Speed(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end

    local function Jump(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end

    -- Tabs

    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    PlayerTab:AddSlider({
        Name = "Speed",
        Min = 16,
        Max = 10000,
        Default = 16,
        Color = Color3.fromRGB(255,255,255),
        Increment = 5,
        ValueName = "Speed",
        Callback = function(Value)
            Speed(Value)
        end    
    })

    PlayerTab:AddSlider({
        Name = "Jump Power",
        Min = 50,
        Max = 10000,
        Default = 50,
        Color = Color3.fromRGB(255,255,255),
        Increment = 10,
        ValueName = "Power",
        Callback = function(Value)
            Jump(Value)
        end    
    })

    -- Blox Fruits

    local BloxFruitsTab = Window:MakeTab({
        Name = "Blox Fruits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    BloxFruitsTab:AddSlider({
        Name = "Speed Multiplier",
        Min = 1,
        Max = 100,
        Default = 1,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Multiplier",
        Callback = function(Value)
            if game.PlaceId == 2753915549 then
                game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
            else
                print("You are not in Blox Fruits")
            end
        end    
    })

    BloxFruitsTab:AddSlider({
        Name = "Dash Length",
        Min = 1,
        Max = 100,
        Default = 1,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Length",
        Callback = function(Value)
            if game.PlaceId == 2753915549 then
                game.Players.LocalPlayer.Character:SetAttribute("DashLength", Value)
            else
                print("You are not in Blox Fruits")
            end
        end    
    })

    -- Tapping Legends X

    local TappingLegendsXTab = Window:MakeTab({
        Name = "Tapping Legends X",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    TappingLegendsXTab:AddToggle({
        Name = "Auto Tap",
        Default = false,
        Callback = function(Value)
            while Value == true do
                if game.PlaceId == 8750997647 then
                    game:GetService('ReplicatedStorage').Remotes.Tap:FireServer()
                else
                    print("You are not in Tapping Legends X")
                end
                wait(.0000000000000000000000000000000000001)
            end
        end
    })
