local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Blox Fruits | KOSMIC EXECUTOR",
    Icon = 0,
    LoadingTitle = "Blox Fruits | KOSMIC EXECUTOR",
    LoadingSubtitle = "by KOSMIC EXECUTOR",
    Theme = "Default",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
 })

 local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image

 local WalkSpeedSlider = PlayerTab:CreateSlider({
    Name = "Walk Speed Multiplier",
    Range = {1, 100},
    Increment = 1,
    Suffix = "Multiplier",
    CurrentValue = 1,
    Flag = "Slider1",
    Callback = function(Value)
        game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
    end,
 })


 local JumpHeightSlider = PlayerTab:CreateSlider({
   Name = "Jump Height",
   Range = {50, 500},
   Increment = 50,
   Suffix = "Height",
   CurrentValue = 50,
   Flag = "Slider3",
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

 local DashLengthSlider = PlayerTab:CreateSlider({
   Name = "Dash Length",
   Range = {1, 1000},
   Increment = 1,
   Suffix = "Length",
   CurrentValue = 1,
   Flag = "Slider2",
   Callback = function(Value)
       game.Players.LocalPlayer.Character:SetAttribute("DashLength", Value)
   end,
})
