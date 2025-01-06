-- Сокращения --

local p = game.Players.LocalPlayer
local h = game.Workspace:WaitForChild(p.Name):WaitForChild('Humanoid')

-- Валюес --

local GVPlay = false
local MSPlay = false

-- Основное --

local sg = Instance.new("ScreenGui")
sg.Parent = p.PlayerGui
sg.Name = "YellowFire"

local MainFrame = Instance.new("Frame")
local cmf = Instance.new("UICorner")
local gmf = Instance.new("UIGradient")
cmf.Parent = MainFrame
cmf.CornerRadius = UDim.new(0, 10)
gmf.Parent = MainFrame
gmf.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0)) })
MainFrame.Name = "Main"
MainFrame.Parent = sg
MainFrame.Size = UDim2.new(0, 600, 0, 400)
MainFrame.Transparency = .55
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)

local title = Instance.new("TextLabel")
title.Parent = MainFrame
title.Name = "Labels.Title"
title.Text = "YellowFire HUB"
title.TextSize = 18
title.TextColor3 = Color3.new(1, 1, 1)
title.Position = UDim2.new(0, 90, 0, 15)
title.BackgroundTransparency = 1

local close = Instance.new("TextButton")
local ccb = Instance.new("UICorner")
ccb.CornerRadius = UDim.new(0, 10)
ccb.Parent = close
close.Text = "x"
close.Size = UDim2.new(0, 30, 0, 30)
close.Parent = MainFrame
close.TextSize = 18
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.BackgroundTransparency = .55
close.Position = UDim2.new(0, 568, 0, 2)
close.TextColor3 = Color3.new(1,1,1)
close.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
end)

-- Музыка --

local FolderMusic = Instance.new("Folder")
FolderMusic.Name = "Musics"
FolderMusic.Parent = MainFrame

local FolderYF = Instance.new("Folder")
FolderYF.Name = "YellowFire"
FolderYF.Parent = FolderMusic

local GolosVremeni = Instance.new("Sound")
GolosVremeni.Parent = FolderYF
GolosVremeni.Name = "Голос Времени"
GolosVremeni.SoundId = "rbxassetid://112284399361243"
GolosVremeni.Volume = .1

local Mineshield = Instance.new("Sound")
Mineshield.Parent = FolderYF
Mineshield.Name = "Mineshield"
Mineshield.SoundId = "rbxassetid://122735642671172"
Mineshield.Volume = .1

-- Player Tab -- 

local PlayerTab = Instance.new("TextButton")
local cpt = Instance.new("UICorner")
cpt.Parent = PlayerTab
cpt.CornerRadius = UDim.new(0, 10)
PlayerTab.Name = "Tabs.Player"
PlayerTab.Parent = MainFrame
PlayerTab.BackgroundColor3 = Color3.new(1, 0.47, 0)
PlayerTab.Text = "Player"
PlayerTab.TextSize = 15
PlayerTab.BackgroundTransparency = .55
PlayerTab.TextColor3 = Color3.new(1, 1, 1)
PlayerTab.Position = UDim2.new(0, 5, 0, 35)
PlayerTab.Size = UDim2.new(0, 135, 0, 40)


local PlayerFrame = Instance.new("ScrollingFrame")
PlayerFrame.Parent = MainFrame
PlayerFrame.Name = "Frames.Player"
PlayerFrame.BackgroundTransparency = 1
PlayerFrame.Position = UDim2.new(0, 150, 0, 35)
PlayerFrame.Size = UDim2.new(0, 440, 0, 345)
PlayerFrame.ScrollBarThickness = 7
PlayerFrame.CanvasSize = UDim2.new(0, 0, 1, 50)


local NrmlSpeed = Instance.new("TextButton")
local cns = Instance.new("UICorner")
cns.Parent = NrmlSpeed
cns.CornerRadius = UDim.new(0, 10)
NrmlSpeed.Parent = PlayerFrame
NrmlSpeed.Name = "Funtions.NormalSpeed"
NrmlSpeed.Size = UDim2.new(0, 432, 0, 50)
NrmlSpeed.TextColor3 = Color3.new(1, 1, 1)
NrmlSpeed.BackgroundColor3 = Color3.new(1, .5, 0)
NrmlSpeed.BackgroundTransparency = .55
NrmlSpeed.Text = "Set Normal Speed"
NrmlSpeed.TextSize = 20
NrmlSpeed.MouseButton1Click:Connect(function()
	h.WalkSpeed = 16
end)


local NrmlJP = Instance.new("TextButton")
local cnjp = Instance.new("UICorner")
cnjp.Parent = NrmlJP
cnjp.CornerRadius = UDim.new(0, 10)
NrmlJP.Parent = PlayerFrame
NrmlJP.Name = "Funtions.NormalJump"
NrmlJP.Size = UDim2.new(0, 432, 0, 50)
NrmlJP.Position = UDim2.new(0,0,0, 60)
NrmlJP.TextColor3 = Color3.new(1, 1, 1)
NrmlJP.BackgroundColor3 = Color3.new(1, .5, 0)
NrmlJP.BackgroundTransparency = .55
NrmlJP.Text = "Set Normal Jump Power"
NrmlJP.TextSize = 20
NrmlJP.MouseButton1Click:Connect(function()
	h.JumpPower = 50
	h.JumpHeight = 7.2
end)

-- Music Tab --

local MusicTab = Instance.new("TextButton")
local cot = Instance.new("UICorner")
cot.Parent = MusicTab
cot.CornerRadius = UDim.new(0, 10)
MusicTab.Name = "Tabs.Music"
MusicTab.Parent = MainFrame
MusicTab.BackgroundColor3 = Color3.new(1, 0.47, 0)
MusicTab.Text = "Music"
MusicTab.TextSize = 15
MusicTab.BackgroundTransparency = .55
MusicTab.TextColor3 = Color3.new(1, 1, 1)
MusicTab.Position = UDim2.new(0, 5, 0, 80)
MusicTab.Size = UDim2.new(0, 135, 0, 40)


local OtherFrame = Instance.new("ScrollingFrame")
OtherFrame.Parent = MainFrame
OtherFrame.Name = "Frames.Music"
OtherFrame.BackgroundTransparency = 1
OtherFrame.Position = UDim2.new(0, 150, 0, 35)
OtherFrame.Size = UDim2.new(0, 440, 0, 345)
OtherFrame.ScrollBarThickness = 7
OtherFrame.CanvasSize = UDim2.new(0, 0, 1, 50)
OtherFrame.Visible = false


local GVP = Instance.new("TextLabel")
GVP.Parent = OtherFrame
GVP.Name = "Labels.YF"
GVP.Size = UDim2.new(0, 432, 0, 50)
GVP.TextColor3 = Color3.new(1, 1, 1)
GVP.BackgroundColor3 = Color3.new(1, 1, 1)
GVP.BackgroundTransparency = 1
GVP.Text = "by YellowFire"
GVP.TextColor3 = Color3.new(1,1,1)
GVP.TextSize = 20


local GVP = Instance.new("TextButton")
local ctb = Instance.new("UICorner")
local gtb = Instance.new("UIGradient")
ctb.Parent = GVP
ctb.CornerRadius = UDim.new(0, 10)
gtb.Parent = GVP
gtb.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) })
GVP.Parent = OtherFrame
GVP.Name = "Funtions.GV"
GVP.Size = UDim2.new(0, 432, 0, 50)
GVP.TextColor3 = Color3.new(1, 1, 1)
GVP.BackgroundColor3 = Color3.new(1, 1, 1)
GVP.BackgroundTransparency = .55
GVP.Text = "Голос Времени"
GVP.Position = UDim2.new(0, 0, 0, 60)
GVP.TextColor3 = Color3.new(1,1,1)
GVP.TextSize = 20
GVP.MouseButton1Click:Connect(function()
	if GVPlay == false then
		gtb.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0)) })
		GVPlay = true

		game.StarterGui:SetCore("SendNotification", {
			Title = "Голос Времени";
			Text = "Включён";
			Duration = 10;
		})

		GolosVremeni:Play()

	else
		gtb.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) })
		GVPlay = false

		game.StarterGui:SetCore("SendNotification", {
			Title = "Голос Времени";
			Text = "Остановлен";
			Duration = 10;
		})

		GolosVremeni:Stop()

	end
end)

local MSP = Instance.new("TextButton")
local cms = Instance.new("UICorner")
local gms = Instance.new("UIGradient")
cms.Parent = MSP
cms.CornerRadius = UDim.new(0, 10)
gms.Parent = MSP
gms.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) })
MSP.Parent = OtherFrame
MSP.Position = UDim2.new(0, 0, 0, 120)
MSP.Name = "Funtions.MS"
MSP.Size = UDim2.new(0, 432, 0, 50)
MSP.TextColor3 = Color3.new(1, 1, 1)
MSP.BackgroundColor3 = Color3.new(1, 1, 1)
MSP.BackgroundTransparency = .55
MSP.Text = "Mineshield"
MSP.TextColor3 = Color3.new(1,1,1)
MSP.TextSize = 20
MSP.MouseButton1Click:Connect(function()
	if MSPlay == false then
		gms.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0)) })
		MSPlay = true

		game.StarterGui:SetCore("SendNotification", {
			Title = "MineShield";
			Text = "Включён";
			Duration = 10;
		})

		Mineshield:Play()

	else
		gms.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) })
		MSPlay = false

		game.StarterGui:SetCore("SendNotification", {
			Title = "MineShield";
			Text = "Остановлен";
			Duration = 10;
		})

		Mineshield:Stop()

	end
end)

-- DestroyTab --

local DestroyTab = Instance.new("TextButton")
local cdt = Instance.new("UICorner")
cdt.Parent = DestroyTab
cdt.CornerRadius = UDim.new(0, 10)
DestroyTab.Name = "Tabs.Destroy"
DestroyTab.Parent = MainFrame
DestroyTab.BackgroundColor3 = Color3.new(1, 0.25, 0)
DestroyTab.Text = "Destroy"
DestroyTab.TextSize = 15
DestroyTab.BackgroundTransparency = .55
DestroyTab.TextColor3 = Color3.new(1, 1, 1)
DestroyTab.Position = UDim2.new(0, 5, 0, 352)
DestroyTab.Size = UDim2.new(0, 135, 0, 40)
DestroyTab.MouseButton1Click:Connect(function()
	sg:Destroy()
end)

-- Премещение по табам --

PlayerTab.MouseButton1Click:Connect(function()
	PlayerFrame.Visible = true
	OtherFrame.Visible = false
end)

MusicTab.MouseButton1Click:Connect(function()
	PlayerFrame.Visible = false
	OtherFrame.Visible = true
end)

-- Перемещение --

local dragging = false
local dragInput
local dragStart
local startPos

MainFrame.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

MainFrame.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

-- Закрытие и открывание --

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.RightAlt then
		if MainFrame.Visible == true then
			MainFrame.Visible = false
		else
			MainFrame.Visible = true
		end
	end
end)
