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

		-- Папки

local FolderMusic = Instance.new("Folder")
FolderMusic.Name = "Musics"
FolderMusic.Parent = MainFrame

local FolderYF = Instance.new("Folder")
FolderYF.Name = "YellowFire"
FolderYF.Parent = FolderMusic

local FolderKS = Instance.new("Folder")
FolderKS.Parent = FolderMusic
FolderKS.Name = "Ksenon ..?"

local FolderSD = Instance.new("Folder")
FolderSD.Parent = FolderMusic
FolderSD.Name = "Shadowraze ..?"

		-- Музыка YellowFire

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

		-- Музыка Ksenon

		-- Музыка Shadowraze

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

-- FreeCam

--!nonstrict
------------------------------------------------------------------------
-- Freecam
-- Cinematic free camera for spectating and video production.
------------------------------------------------------------------------

local pi    = math.pi
local abs   = math.abs
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sign  = math.sign
local sqrt  = math.sqrt
local tan   = math.tan

local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = Workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

local FFlagUserExitFreecamBreaksWithShiftlock
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserExitFreecamBreaksWithShiftlock")
	end)
	FFlagUserExitFreecamBreaksWithShiftlock = success and result
end

local FFlagUserShowGuiHideToggles
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserShowGuiHideToggles")
	end)
	FFlagUserShowGuiHideToggles = success and result
end

------------------------------------------------------------------------

local FREECAM_ENABLED_ATTRIBUTE_NAME = "FreecamEnabled"
local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}

local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300

local PITCH_LIMIT = rad(90)

local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0

------------------------------------------------------------------------

local Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

------------------------------------------------------------------------

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0

local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)

------------------------------------------------------------------------

local Input = {} do
	local thumbstickCurve do
		local K_CURVATURE = 2.0
		local K_DEADZONE = 0.15

		local function fCurve(x)
			return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
		end

		local function fDeadzone(x)
			return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
		end

		function thumbstickCurve(x)
			return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
		end
	end

	local gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}

	local keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}

	local mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
	local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
	local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
	local FOV_WHEEL_SPEED    = 1.0
	local FOV_GAMEPAD_SPEED  = 0.25
	local NAV_ADJ_SPEED      = 0.75
	local NAV_SHIFT_MUL      = 0.25

	local navSpeed = 1

	function Input.Vel(dt)
		navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.X),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve(-gamepad.Thumbstick1.Y)
		)*NAV_GAMEPAD_SPEED

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		)*NAV_KEYBOARD_SPEED

		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

		return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.Y),
			thumbstickCurve(-gamepad.Thumbstick2.X)
		)*PAN_GAMEPAD_SPEED
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
		local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		local function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		local function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
		end

		local function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
				Enum.KeyCode.W, Enum.KeyCode.U,
				Enum.KeyCode.A, Enum.KeyCode.H,
				Enum.KeyCode.S, Enum.KeyCode.J,
				Enum.KeyCode.D, Enum.KeyCode.K,
				Enum.KeyCode.E, Enum.KeyCode.I,
				Enum.KeyCode.Q, Enum.KeyCode.Y,
				Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
			ContextActionService:UnbindAction("FreecamMouseWheel")
			ContextActionService:UnbindAction("FreecamGamepadButton")
			ContextActionService:UnbindAction("FreecamGamepadTrigger")
			ContextActionService:UnbindAction("FreecamGamepadThumbstick")
		end
	end
end

------------------------------------------------------------------------

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))

	local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

	cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
	cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
	cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame 
	Camera.FieldOfView = cameraFov
end

local function CheckMouseLockAvailability()
	local devAllowsMouseLock = Players.LocalPlayer.DevEnableMouseLock
	local devMovementModeIsScriptable = Players.LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable
	local userHasMouseLockModeEnabled = GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch
	local userHasClickToMoveEnabled =  GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove
	local MouseLockAvailable = devAllowsMouseLock and userHasMouseLockModeEnabled and not userHasClickToMoveEnabled and not devMovementModeIsScriptable

	return MouseLockAvailable
end

------------------------------------------------------------------------

local PlayerState = {} do
	local mouseBehavior
	local mouseIconEnabled
	local cameraType
	local cameraFocus
	local cameraCFrame
	local cameraFieldOfView
	local screenGuis = {}
	local coreGuis = {
		Backpack = true,
		Chat = true,
		Health = true,
		PlayerList = true,
	}
	local setCores = {
		BadgesNotificationsActive = true,
		PointsNotificationsActive = true,
	}

	-- Save state and set up for freecam
	function PlayerState.Push()
		for name in pairs(coreGuis) do
			coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
		end
		for name in pairs(setCores) do
			setCores[name] = StarterGui:GetCore(name)
			StarterGui:SetCore(name, false)
		end
		local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if playergui then
			for _, gui in pairs(playergui:GetChildren()) do
				if gui:IsA("ScreenGui") and gui.Enabled then
					screenGuis[#screenGuis + 1] = gui
					gui.Enabled = false
				end
			end
		end

		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = false

		if FFlagUserExitFreecamBreaksWithShiftlock and CheckMouseLockAvailability() then
			mouseBehavior = Enum.MouseBehavior.Default
		else
			mouseBehavior = UserInputService.MouseBehavior
		end
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	-- Restore state
	function PlayerState.Pop()
		for name, isEnabled in pairs(coreGuis) do
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
		end
		for name, isEnabled in pairs(setCores) do
			StarterGui:SetCore(name, isEnabled)
		end
		for _, gui in pairs(screenGuis) do
			if gui.Parent then
				gui.Enabled = true
			end
		end

		Camera.FieldOfView = cameraFieldOfView
		cameraFieldOfView = nil

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

local function StartFreecam()
	if FFlagUserShowGuiHideToggles then
		script:SetAttribute(FREECAM_ENABLED_ATTRIBUTE_NAME, true)
	end

	local cameraCFrame = Camera.CFrame
	cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

local function StopFreecam()
	if FFlagUserShowGuiHideToggles then
		script:SetAttribute(FREECAM_ENABLED_ATTRIBUTE_NAME, false)
	end

	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
end

------------------------------------------------------------------------

do
	local enabled = false

	local function ToggleFreecam()
		if enabled then
			StopFreecam()
		else
			StartFreecam()
		end
		enabled = not enabled
	end

	local function CheckMacro(macro)
		for i = 1, #macro - 1 do
			if not UserInputService:IsKeyDown(macro[i]) then
				return
			end
		end
		ToggleFreecam()
	end

	local function HandleActivationInput(action, state, input)
		if state == Enum.UserInputState.Begin then
			if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
				CheckMacro(FREECAM_MACRO_KB)
			end
		end
		return Enum.ContextActionResult.Pass
	end

	ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])

	if FFlagUserShowGuiHideToggles then
		script:SetAttribute(FREECAM_ENABLED_ATTRIBUTE_NAME, enabled)
		script:GetAttributeChangedSignal(FREECAM_ENABLED_ATTRIBUTE_NAME):Connect(function()
			local attributeValue = script:GetAttribute(FREECAM_ENABLED_ATTRIBUTE_NAME)

			if typeof(attributeValue) ~= "boolean" then
				script:SetAttribute(FREECAM_ENABLED_ATTRIBUTE_NAME, enabled)
				return
			end

			-- If the attribute's value and `enabled` var don't match, pick attribute value as 
			-- source of truth
			if attributeValue ~= enabled then
				if attributeValue then
					StartFreecam()
					enabled = true
				else
					StopFreecam()
					enabled = false
				end
			end
		end)
	end
end
