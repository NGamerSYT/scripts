if game.PlaceId == 8750997647 then
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Tapping Legends X", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "BY KOSMIC EXECUTOR"})

    -- Values

    _G.AutoTap = false
    _G.AutoRebirth = false
    _G.AutoHatch = false
    _G.HatchEgg = "Basic egg"

    -- Functions

    local function AutoTap()
        
        while _G.AutoTap == true do
            
            game:GetService('ReplicatedStorage').Remotes.Tap:FireServer()
            wait(.000000000000000000000000000000000000000000000000000000000000000000000000000000000001)

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

    local function equipBest()
        
        game:GetService('ReplicatedStorage').Remotes.EquipBest:InvokeServer()

    end

    -- Tabs

    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local AutoRebirthsTab = Window:MakeTab({
        Name = "AutoRebirths",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc",
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

    AutoRebirthsTab:AddLabel("For AutoRebirth need buy 'More Rebirths' in Ruby upgrades")

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 1",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(1)
        end    
    })

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 2k",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(6)
        end    
    })

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 40m",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(12)
        end    
    })

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 40b",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(17)
        end    
    })

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 2qd",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(26)
        end    
    })

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 100qd",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(28)
        end    
    })

    AutoRebirthsTab:AddToggle({
        Name = "AutoRebirth 5sp",
        Default = false,
        Callback = function(Value)
            _G.AutoRebirth = Value
            AutoRebirth(40)
        end    
    })

    MiscTab:AddButton({
        Name = "Equip Best Pets",
        Callback = function(Value)
            equipBest()
        end    
    })

    MiscTab:AddButton({
        Name = "Destroy",
        Callback = function(Value)
            OrionLib:Destroy()
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

    -- Toggles 2













    OrionLib:Init()
end
