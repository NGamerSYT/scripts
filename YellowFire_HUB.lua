-- Сокращения --

local p = game.Players.LocalPlayer
local h = game.Workspace:WaitForChild(p.Name):WaitForChild('Humanoid')

-- Валюес --

local TestV = false

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

-- Other Tab --

local OtherTab = Instance.new("TextButton")
local cot = Instance.new("UICorner")
cot.Parent = OtherTab
cot.CornerRadius = UDim.new(0, 10)
OtherTab.Name = "Tabs.Other"
OtherTab.Parent = MainFrame
OtherTab.BackgroundColor3 = Color3.new(1, 0.47, 0)
OtherTab.Text = "Other"
OtherTab.TextSize = 15
OtherTab.BackgroundTransparency = .55
OtherTab.TextColor3 = Color3.new(1, 1, 1)
OtherTab.Position = UDim2.new(0, 5, 0, 80)
OtherTab.Size = UDim2.new(0, 135, 0, 40)


local OtherFrame = Instance.new("ScrollingFrame")
OtherFrame.Parent = MainFrame
OtherFrame.Name = "Frames.Other"
OtherFrame.BackgroundTransparency = 1
OtherFrame.Position = UDim2.new(0, 150, 0, 35)
OtherFrame.Size = UDim2.new(0, 440, 0, 345)
OtherFrame.ScrollBarThickness = 7
OtherFrame.CanvasSize = UDim2.new(0, 0, 1, 50)
OtherFrame.Visible = false


local Test = Instance.new("TextButton")
local ctb = Instance.new("UICorner")
local gtb = Instance.new("UIGradient")
ctb.Parent = Test
ctb.CornerRadius = UDim.new(0, 10)
gtb.Parent = Test
gtb.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) })
Test.Parent = OtherFrame
Test.Name = "Funtions.Test"
Test.Size = UDim2.new(0, 432, 0, 50)
Test.TextColor3 = Color3.new(1, 1, 1)
Test.BackgroundColor3 = Color3.new(1, 1, 1)
Test.BackgroundTransparency = .55
Test.Text = "Test"
Test.TextColor3 = Color3.new(1,1,1)
Test.TextSize = 20
Test.MouseButton1Click:Connect(function()
	if TestV == false then
		gtb.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0)) })
		TestV = true
		
		game.StarterGui:SetCore("SendNotification", {
			Title = "Test toggle";
			Text = "ON";
			Duration = 10;
		})
		
	else
		gtb.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) })
		TestV = false
		
		game.StarterGui:SetCore("SendNotification", {
			Title = "Test toggle";
			Text = "OFF";
			Duration = 10;
		})
		
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

OtherTab.MouseButton1Click:Connect(function()
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
