if game.PlaceId == 8750997647 then
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Tapping Legends X", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    -- Values

    _G.AutoTap = false
    _G.AutoRebirth = false
    _G.AutoHatch = false
    _G.HatchEgg = "Basic egg"

    -- Functions

    local function AutoTap()
        
        while _G.AutoTap == true do
            
            game:GetService('ReplicatedStorage').Remotes.Tap:FireServer()
            wait(.0000000000000000000000000000000000001)

        end

    end

    local function AutoRebirth(count)
        
        while _G.AutoRebirth == true do
            
            game:GetService('ReplicatedStorage').Remotes.Rebirth:FireServer(count)
            wait(.001)

        end

    end

    local function AutoHatch()
        
        while _G.AutoHatch == true do
            
            game:GetService('ReplicatedStorage').Remotes.BuyEgg:FireServer(_G.HatchEgg, 1)
            wait(.001)

        end

    end

    -- Tabs

    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Toggles 1

    FarmTab:AddToggle({
        Name = "AutoTap",
        Default = false,
        Callback = function(Value)
            _G.AutoTap = Value
            AutoTap()
        end    
    })

    FarmTab:AddToggle({
        Name = "AutoRebirth 1",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(1)
        end    
    })

    FarmTab:AddToggle({
        Name = "AutoRebirth 2",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(1)
        end    
    })

    FarmTab:AddToggle({
        Name = "AutoRebirth 3",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(1)
        end    
    })

    FarmTab:AddToggle({
        Name = "AutoHatch",
        Default = false,
        Callback = function(Value)
            _G.AutoHatch = Value
            AutoHatch()
        end    
    })

    -- Dropdowns

    FarmTab:AddDropdown({
        Name = "Select egg",
        Default = "Basic egg",
        Options = {"Basic egg", "Rare egg"},
        Callback = function(Value)
            _G.HatchEgg = Value
            print(_G.HatchEgg)
        end    
    })

else

  game.StarterGui:SetCore("SendNotification",  {
        Title = "Script";
        Text = "You not in Tapping Legends X";
        Duration = 30;
  })
  
end
