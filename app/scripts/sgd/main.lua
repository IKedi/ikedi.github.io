if game.CoreGui:FindFirstChild("Fakt_SGD") then
	game.CoreGui["Fakt_SGD"]:Destroy()
end
if game.Lighting:FindFirstChild("SGD_Blur") then
	game.Lighting.SGD_Blur:Destroy()
end

local togkey = "f"
local guispeed = 0.3
local isblur = false
local plr = game.Players.LocalPlayer
local m = plr:GetMouse()
local gameid = game.PlaceId
local isopen = true
local ispro = false
local istabpro = false
_G.multiplier = '1'

function notify(txt)
	if _G.sgd_shownotif == false then return;end
	game.StarterGui:SetCore("SendNotification", {Title = "SGD"; Text = txt;})
end

local SGD = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local Main = Instance.new("Frame")
local Body = Instance.new("Frame")
local Multiplier_label = Instance.new("TextLabel")
local Start_butt = Instance.new("TextButton")
local Multiplier_box = Instance.new("TextBox")
local Settings = Instance.new("Frame")
local set_tklabel = Instance.new("TextLabel")
local set_tkbox = Instance.new("TextBox")
local set_gslabel = Instance.new("TextLabel")
local set_gsbox = Instance.new("TextBox")
local set_blurlabel = Instance.new("TextLabel")
local set_blurcbox = Instance.new("ImageButton")
local Credits = Instance.new("Frame")
local Credits_label = Instance.new("TextLabel")
local Settings_butt = Instance.new("TextButton")
local Credits_butt = Instance.new("TextButton")

SGD.Name = "Fakt_SGD"
SGD.Parent = game.CoreGui
SGD.ResetOnSpawn = false
SGD.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Top.Name = "Top"
Top.Parent = SGD
Top.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.215686)
Top.BorderColor3 = Color3.new(0, 0, 0)
Top.BorderSizePixel = 2
Top.Position = UDim2.new(0.19479166, 0, 0.322269827, 0)
Top.Size = UDim2.new(0, 435, 0, 15)

Main.Name = "Main"
Main.Parent = Top
Main.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0, 0, 1, 0)
Main.Size = UDim2.new(0, 435, 0, 240)

Body.Name = "Body"
Body.Parent = Main
Body.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Body.BorderColor3 = Color3.new(0, 0, 0)
Body.BorderSizePixel = 2
Body.Position = UDim2.new(0, 0, 0.150000006, 0)
Body.Size = UDim2.new(0, 435, 0, 204)
Body.ZIndex = 100

Multiplier_label.Name = "Multiplier_label"
Multiplier_label.Parent = Body
Multiplier_label.BackgroundColor3 = Color3.new(1, 1, 1)
Multiplier_label.BackgroundTransparency = 1
Multiplier_label.Position = UDim2.new(0.0114942528, 0, 0, 15)
Multiplier_label.Size = UDim2.new(0, 149, 0, 27)
Multiplier_label.Font = Enum.Font.GothamBold
Multiplier_label.Text = "Multiplier"
Multiplier_label.TextColor3 = Color3.new(1, 1, 1)
Multiplier_label.TextScaled = true
Multiplier_label.TextSize = 14
Multiplier_label.TextStrokeTransparency = 0
Multiplier_label.TextWrapped = true

Start_butt.Name = "Start_butt"
Start_butt.Parent = Body
Start_butt.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.333333)
Start_butt.BorderColor3 = Color3.new(0, 0, 0)
Start_butt.Position = UDim2.new(0.237072617, 0, 0.643137097, 0)
Start_butt.Size = UDim2.new(0, 228, 0, 50)
Start_butt.Font = Enum.Font.GothamBold
Start_butt.Text = "Start"
Start_butt.TextColor3 = Color3.new(1, 1, 1)
Start_butt.TextScaled = true
Start_butt.TextSize = 14
Start_butt.TextStrokeTransparency = 0
Start_butt.TextWrapped = true

Multiplier_box.Name = "Multiplier_box"
Multiplier_box.Parent = Body
Multiplier_box.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.215686)
Multiplier_box.BorderColor3 = Color3.new(0, 0, 0)
Multiplier_box.Position = UDim2.new(0.402589858, 0, 0, 15)
Multiplier_box.Size = UDim2.new(0, 229, 0, 27)
Multiplier_box.Font = Enum.Font.Code
Multiplier_box.Text = ""
Multiplier_box.TextColor3 = Color3.new(1, 1, 1)
Multiplier_box.TextSize = 14
Multiplier_box.TextStrokeTransparency = 0
Multiplier_box.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = Main
Settings.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Settings.BorderColor3 = Color3.new(0, 0, 0)
Settings.BorderSizePixel = 2
Settings.Position = UDim2.new(0, 0, 0.150000006, 0)
Settings.Size = UDim2.new(0, 435, 0, 204)

set_tklabel.Name = "set_tklabel"
set_tklabel.Parent = Settings
set_tklabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_tklabel.BackgroundTransparency = 1
set_tklabel.Position = UDim2.new(0.0367816091, 0, 0.232745051, 0)
set_tklabel.Size = UDim2.new(0, 149, 0, 27)
set_tklabel.Font = Enum.Font.GothamBold
set_tklabel.Text = "Toggle key"
set_tklabel.TextColor3 = Color3.new(1, 1, 1)
set_tklabel.TextScaled = true
set_tklabel.TextSize = 14
set_tklabel.TextStrokeTransparency = 0
set_tklabel.TextWrapped = true
set_tklabel.TextXAlignment = Enum.TextXAlignment.Left

set_tkbox.Name = "set_tkbox"
set_tkbox.Parent = set_tklabel
set_tkbox.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.215686)
set_tkbox.BorderColor3 = Color3.new(0, 0, 0)
set_tkbox.Position = UDim2.new(1.04762578, 0, -0.000915072858, 0)
set_tkbox.Size = UDim2.new(0, 229, 0, 27)
set_tkbox.Font = Enum.Font.Code
set_tkbox.Text = ""
set_tkbox.TextColor3 = Color3.new(1, 1, 1)
set_tkbox.TextSize = 14
set_tkbox.TextStrokeTransparency = 0
set_tkbox.TextWrapped = true

set_gslabel.Name = "set_gslabel"
set_gslabel.Parent = Settings
set_gslabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_gslabel.BackgroundTransparency = 1
set_gslabel.Position = UDim2.new(0.0367816091, 0, 0.428823501, 0)
set_gslabel.Size = UDim2.new(0, 149, 0, 27)
set_gslabel.Font = Enum.Font.GothamBold
set_gslabel.Text = "Gui speed"
set_gslabel.TextColor3 = Color3.new(1, 1, 1)
set_gslabel.TextScaled = true
set_gslabel.TextSize = 14
set_gslabel.TextStrokeTransparency = 0
set_gslabel.TextWrapped = true
set_gslabel.TextXAlignment = Enum.TextXAlignment.Left

set_gsbox.Name = "set_gsbox"
set_gsbox.Parent = set_gslabel
set_gsbox.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.215686)
set_gsbox.BorderColor3 = Color3.new(0, 0, 0)
set_gsbox.Position = UDim2.new(1.04762578, 0, -0.000915072858, 0)
set_gsbox.Size = UDim2.new(0, 229, 0, 27)
set_gsbox.Font = Enum.Font.Code
set_gsbox.Text = ""
set_gsbox.TextColor3 = Color3.new(1, 1, 1)
set_gsbox.TextSize = 14
set_gsbox.TextStrokeTransparency = 0
set_gsbox.TextWrapped = true

set_blurlabel.Name = "set_blurlabel"
set_blurlabel.Parent = Settings
set_blurlabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_blurlabel.BackgroundTransparency = 1
set_blurlabel.Position = UDim2.new(0.0367816091, 0, 0.629803836, 0)
set_blurlabel.Size = UDim2.new(0, 149, 0, 27)
set_blurlabel.Font = Enum.Font.GothamBold
set_blurlabel.Text = "Blur"
set_blurlabel.TextColor3 = Color3.new(1, 1, 1)
set_blurlabel.TextScaled = true
set_blurlabel.TextSize = 14
set_blurlabel.TextStrokeTransparency = 0
set_blurlabel.TextWrapped = true

set_blurcbox.Name = "set_blurcbox"
set_blurcbox.Parent = set_blurlabel
set_blurcbox.BackgroundColor3 = Color3.new(1, 1, 1)
set_blurcbox.BackgroundTransparency = 1
set_blurcbox.BorderColor3 = Color3.new(0, 0, 0)
set_blurcbox.Position = UDim2.new(1.0469799, 0, -0.148148149, 0)
set_blurcbox.Size = UDim2.new(0, 35, 0, 35)
set_blurcbox.Image = "http://www.roblox.com/asset/?id=4893785522"

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Credits.BorderColor3 = Color3.new(0, 0, 0)
Credits.BorderSizePixel = 2
Credits.Position = UDim2.new(0, 0, 0.150000006, 0)
Credits.Size = UDim2.new(0, 435, 0, 204)
Credits.ZIndex = 0

Credits_label.Name = "Credits_label"
Credits_label.Parent = Credits
Credits_label.BackgroundColor3 = Color3.new(1, 1, 1)
Credits_label.BackgroundTransparency = 1
Credits_label.Position = UDim2.new(0, 10, 0, 10)
Credits_label.Size = UDim2.new(0, 415, 0, 37)
Credits_label.Font = Enum.Font.GothamBold
Credits_label.Text = ""
Credits_label.TextColor3 = Color3.new(1, 1, 1)
Credits_label.TextSize = 30
Credits_label.TextStrokeTransparency = 0
Credits_label.TextXAlignment = Enum.TextXAlignment.Left
Credits_label.TextYAlignment = Enum.TextYAlignment.Top

Settings_butt.Name = "Settings_butt"
Settings_butt.Parent = Main
Settings_butt.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.333333)
Settings_butt.BorderColor3 = Color3.new(0, 0, 0)
Settings_butt.Position = UDim2.new(0.760999978, 11, 0.0460000001, -6)
Settings_butt.Size = UDim2.new(0, 88, 0, 25)
Settings_butt.Font = Enum.Font.SourceSans
Settings_butt.Text = "Settings"
Settings_butt.TextColor3 = Color3.new(1, 1, 1)
Settings_butt.TextSize = 14
Settings_butt.TextWrapped = true

Credits_butt.Name = "Credits_butt"
Credits_butt.Parent = Main
Credits_butt.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.333333)
Credits_butt.BorderColor3 = Color3.new(0, 0, 0)
Credits_butt.Position = UDim2.new(0.544908047, 11, 0.0460000001, -6)
Credits_butt.Size = UDim2.new(0, 88, 0, 25)
Credits_butt.Font = Enum.Font.SourceSans
Credits_butt.Text = "Credits"
Credits_butt.TextColor3 = Color3.new(1, 1, 1)
Credits_butt.TextSize = 14
Credits_butt.TextWrapped = true

local blur = Instance.new("BlurEffect")
blur.Parent = game.Lighting
blur.Name = "SGD_Blur"
blur.Enabled = isblur

isopen = false
Top.Position = UDim2.new(Top.Position.X.Scale - 1, Top.Position.X.Offset, Top.Position.Y.Scale, Top.Position.Y.Offset)

local function visual()
	set_tkbox.PlaceholderText = togkey
	set_gsbox.PlaceholderText = tostring(guispeed)
	Multiplier_box.Text = _G.multiplier
	return
end

local function num_encryption(arg1, arg2)
	if arg2 then
		arg1 = arg1:gsub('0', 'XO')
		arg1 = arg1:gsub('1', 'oT')
		arg1 = arg1:gsub('2', 'jD')
		arg1 = arg1:gsub('3', 'QB')
		arg1 = arg1:gsub('4', 'oE')
		arg1 = arg1:gsub('5', 'oW')
		arg1 = arg1:gsub('6', 'wY')
		arg1 = arg1:gsub('7', 'nK')
		arg1 = arg1:gsub('8', 'Zr')
		arg1 = arg1:gsub('9', 'vc')
	else
		arg1 = arg1:gsub('XO', '0')
		arg1 = arg1:gsub('oT', '1')
		arg1 = arg1:gsub('jD', '2')
		arg1 = arg1:gsub('QB', '3')
		arg1 = arg1:gsub('oE', '4')
		arg1 = arg1:gsub('oW', '5')
		arg1 = arg1:gsub('wY', '6')
		arg1 = arg1:gsub('nK', '7')
		arg1 = arg1:gsub('Zr', '8')
		arg1 = arg1:gsub('vc', '9')
	end
	return arg1
end

gameid  = num_encryption(tostring(gameid), true)

if not string.find(game:HttpGet("https://github.com/IKedi/ikedi.github.io/tree/master/app/scripts/sgd/lib"), gameid..'.lua') then
	notify('This game is not supported.')
	SGD:Destroy()
	return
end

-----
local function getsettings()
	local function sc()
		local _int = 0
		local a = game:HttpGet("https://ikedi.github.io/app/scripts/sgd/credits.txt")
		local b = string.split(a, "|")
		local c = string.split(b[2], '?')
		_int = b[1]
		for i = 1, _int do
			local _a = string.split(c[i + 1], ':')
			Credits_label.Text = Credits_label.Text.._a[2]..': '.._a[1]..'\n'
		end
		return
	end
	local function sa()
		local a = game:HttpGet("http://ikedi.github.io/app/scripts/sgd/lib/"..gameid..".lua")
		local set = string.split(a, '--')[2]
		local s = string.split(set, '|')[2]
		---
		_G.multiplier = string.split(s, ':')[2]
		---
		return
	end
	sc()
	sa()
	visual()
	return
end
getsettings()
-----

local function togglegui()
	if ispro then return;end
	if isopen then
		if isblur then blur.Enabled = false;end
		ispro = true
		Top:TweenPosition(UDim2.new(Top.Position.X.Scale - 1, Top.Position.X.Offset, Top.Position.Y.Scale, Top.Position.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
		wait(guispeed)
		isopen = false
		ispro = false
	else
		if isblur then blur.Enabled = true;end
		ispro = true
		Top:TweenPosition(UDim2.new(Top.Position.X.Scale + 1, Top.Position.X.Offset, Top.Position.Y.Scale, Top.Position.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
		wait(guispeed)
		isopen = true
		ispro = false
	end
end

m.KeyDown:Connect(function(k)
	k = k:lower()
	if k == togkey then
		togglegui()
	end
end)

Start_butt.MouseButton1Click:Connect(function()
	if Start_butt.Text == 'Start' then
		Start_butt.Text = 'Stop'
		loadstring(game:HttpGet("http://ikedi.github.io/app/scripts/sgd/lib/"..gameid..".lua"))()
	else
		_G.sgd_kill = true
		Start_butt.Text = 'Start'
	end
end)

Settings_butt.MouseButton1Click:Connect(function()
	if Settings_butt.BackgroundColor3 == Color3.fromRGB(45, 45, 75) then
		Settings_butt.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
		Settings:TweenPosition(UDim2.new(0, 0, 0.15, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
	else
		Settings_butt.BackgroundColor3 = Color3.fromRGB(45, 45, 75)
		Settings:TweenPosition(UDim2.new(0, 435, 0.15, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
	end
	
	Credits_butt.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
	Credits:TweenPosition(UDim2.new(0, 0, 0.15, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
end)
Credits_butt.MouseButton1Click:Connect(function()
	if Credits_butt.BackgroundColor3 == Color3.fromRGB(45, 45, 75) then
		Credits_butt.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
		Credits:TweenPosition(UDim2.new(0, 0, 0.15, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
	else
		Credits_butt.BackgroundColor3 = Color3.fromRGB(45, 45, 75)
		Credits:TweenPosition(UDim2.new(0, 435, 0.15, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
	end
	
	Settings_butt.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
	Settings:TweenPosition(UDim2.new(0, 0, 0.15, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
end)

set_tkbox.Changed:Connect(function()
	if string.sub(set_tkbox.Text,1,1) then
		set_tkbox.Text = string.sub(set_tkbox.Text,1,1)
	end
end)
set_tkbox.FocusLost:Connect(function()
	togkey = set_tkbox.Text
	visual()
end)
set_gsbox.FocusLost:Connect(function()
	guispeed = set_gsbox.Text
	visual()
end)
Multiplier_box.Changed:Connect(function()
	_G.multiplier = Multiplier_box.Text
end)
set_blurcbox.MouseButton1Click:Connect(function()
	if isblur then
		set_blurcbox.Image = "http://www.roblox.com/asset/?id=4893785522"
		isblur = false
		blur.Enabled = false
	else
		set_blurcbox.Image = "http://www.roblox.com/asset/?id=4893785781"
		isblur = true
		blur.Enabled = true
	end
	visual()
end)

----------
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
	local delta = input.Position - dragStart
	Top.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
Top.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Top.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
Top.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
----------

visual()
togglegui()
