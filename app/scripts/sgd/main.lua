local togkey = "f"
local stogkey = "g"
local guispeed = 0.3
local isblur = false
local plr = game.Players.LocalPlayer
local m = plr:GetMouse()
local gameid = game.PlaceId
local isopen = true
local ispro = false
local istabpro = false

local gamesup = false
local bigded = false

_G.multiplier = '1'
_G.sgd_kill = true
_G.sgd_autosell = true

local cboxempty = "http://www.roblox.com/asset/?id=4893785522"
local cboxchecked = "http://www.roblox.com/asset/?id=4893785781"

function notify(txt)
	if _G.sgd_shownotif == false then return;end
	game.StarterGui:SetCore("SendNotification", {Title = "SGD"; Text = txt;})
end

--Gui stuff

local SGD = Instance.new("ScreenGui")

local Top = Instance.new("Frame")
local Main = Instance.new("Frame")
local Body = Instance.new("Frame")

local Library = Instance.new("Frame")
local lib_holder = Instance.new("Frame")
local Credits = Instance.new("Frame")
local Settings = Instance.new("Frame")

local lib_scroll = Instance.new("ScrollingFrame")

--Textboxes
local Multiplier_box = Instance.new("TextBox")

local set_tkbox = Instance.new("TextBox")
local set_stkbox = Instance.new("TextBox")
local set_gsbox = Instance.new("TextBox")

--Buttons
local Close_butt = Instance.new("TextButton")
local Start_butt = Instance.new("TextButton")

local Lib_butt = Instance.new("TextButton")
local Credits_butt = Instance.new("TextButton")
local Settings_butt = Instance.new("TextButton")

local AS_cbox = Instance.new("ImageButton")
local set_blurcbox = Instance.new("ImageButton")

--Labels
local Multiplier_label = Instance.new("TextLabel")
local scredit_label = Instance.new("TextLabel")
local AS_label = Instance.new("TextLabel")
local lib_label = Instance.new("TextLabel")
local Credits_label = Instance.new("TextLabel")

local set_tklabel = Instance.new("TextLabel")
local set_stklabel = Instance.new("TextLabel")
local set_gslabel = Instance.new("TextLabel")
local set_blurlabel = Instance.new("TextLabel")



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
Top.Size = UDim2.new(0, 435, 0, 20)

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

Library.Name = "Library"
Library.Parent = Main
Library.BackgroundColor3 = Color3.fromRGB(55, 55, 75)
Library.BorderColor3 = Color3.fromRGB(0, 0, 0)
Library.BorderSizePixel = 2
Library.Position = UDim2.new(0, 0, 0.219999999, 0)
Library.Size = UDim2.new(0, 435, 0, 186)
Library.ZIndex = 2

lib_holder.Name = "lib_holder"
lib_holder.Parent = lib_scroll
lib_holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lib_holder.BackgroundTransparency = 1.000
lib_holder.Position = UDim2.new(0, 5, 0, 5)
lib_holder.Size = UDim2.new(0, 412, 10, 0)

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Credits.BorderColor3 = Color3.new(0, 0, 0)
Credits.BorderSizePixel = 2
Credits.Position = UDim2.new(0, 0, 0.150000006, 0)
Credits.Size = UDim2.new(0, 435, 0, 204)
Credits.ZIndex = 0

Settings.Name = "Settings"
Settings.Parent = Main
Settings.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Settings.BorderColor3 = Color3.new(0, 0, 0)
Settings.BorderSizePixel = 2
Settings.Position = UDim2.new(0, 0, 0.150000006, 0)
Settings.Size = UDim2.new(0, 435, 0, 204)

lib_scroll.Name = "lib_scroll"
lib_scroll.Parent = Library
lib_scroll.Active = true
lib_scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
lib_scroll.BackgroundColor3 = Color3.fromRGB(55, 55, 75)
lib_scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
lib_scroll.Position = UDim2.new(0, 0, 0.274193555, 0)
lib_scroll.Size = UDim2.new(0, 435, 0, 135)



--========================================================Textboxes



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

set_stkbox.Name = "set_stkbox"
set_stkbox.Parent = set_stklabel
set_stkbox.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.215686)
set_stkbox.BorderColor3 = Color3.new(0, 0, 0)
set_stkbox.Position = UDim2.new(1.04762578, 0, -0.000915072858, 0)
set_stkbox.Size = UDim2.new(0, 229, 0, 27)
set_stkbox.Font = Enum.Font.Code
set_stkbox.Text = ""
set_stkbox.TextColor3 = Color3.new(1, 1, 1)
set_stkbox.TextSize = 14
set_stkbox.TextStrokeTransparency = 0
set_stkbox.TextWrapped = true

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



--========================================================Buttons



Close_butt.Name = "Close_butt"
Close_butt.Parent = Top
Close_butt.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
Close_butt.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_butt.Position = UDim2.new(0.913, 12, 0.33, -7)
Close_butt.Size = UDim2.new(0, 26, 0, 18)
Close_butt.Font = Enum.Font.SourceSans
Close_butt.Text = "X"
Close_butt.TextColor3 = Color3.fromRGB(255, 255, 255)
Close_butt.TextScaled = true
Close_butt.TextSize = 14.000
Close_butt.TextWrapped = true

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

Lib_butt.Name = "Lib_butt"
Lib_butt.Parent = Main
Lib_butt.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
Lib_butt.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lib_butt.Position = UDim2.new(0.546000004, 5, 0.0179999992, 0)
Lib_butt.Size = UDim2.new(0, 60, 0, 25)
Lib_butt.ZIndex = 100
Lib_butt.Font = Enum.Font.SourceSans
Lib_butt.Text = "Games"
Lib_butt.TextColor3 = Color3.fromRGB(255, 255, 255)
Lib_butt.TextSize = 14.000
Lib_butt.TextWrapped = true

Credits_butt.Name = "Credits_butt"
Credits_butt.Parent = Main
Credits_butt.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.333333)
Credits_butt.BorderColor3 = Color3.new(0, 0, 0)
Credits_butt.Position = UDim2.new(0.694, 5, 0.018, 0)
Credits_butt.Size = UDim2.new(0, 60, 0, 25)
Credits_butt.Font = Enum.Font.SourceSans
Credits_butt.Text = "Credits"
Credits_butt.TextColor3 = Color3.new(1, 1, 1)
Credits_butt.TextSize = 14
Credits_butt.TextWrapped = true

Settings_butt.Name = "Settings_butt"
Settings_butt.Parent = Main
Settings_butt.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.333333)
Settings_butt.BorderColor3 = Color3.new(0, 0, 0)
Settings_butt.Position = UDim2.new(0.842, 5, 0.018, 0)
Settings_butt.Size = UDim2.new(0, 60, 0, 25)
Settings_butt.Font = Enum.Font.SourceSans
Settings_butt.Text = "Settings"
Settings_butt.TextColor3 = Color3.new(1, 1, 1)
Settings_butt.TextSize = 14
Settings_butt.TextWrapped = true

AS_cbox.Name = "AS_cbox"
AS_cbox.Parent = AS_label
AS_cbox.BackgroundColor3 = Color3.new(1, 1, 1)
AS_cbox.BackgroundTransparency = 1
AS_cbox.BorderColor3 = Color3.new(0, 0, 0)
AS_cbox.Position = UDim2.new(1.14842916, 0, -0.148148149, 0)
AS_cbox.Size = UDim2.new(0, 35, 0, 35)
AS_cbox.ZIndex = 100
AS_cbox.Image = cboxchecked

set_blurcbox.Name = "set_blurcbox"
set_blurcbox.Parent = set_blurlabel
set_blurcbox.BackgroundColor3 = Color3.new(1, 1, 1)
set_blurcbox.BackgroundTransparency = 1
set_blurcbox.BorderColor3 = Color3.new(0, 0, 0)
set_blurcbox.Position = UDim2.new(1.0469799, 0, -0.148148149, 0)
set_blurcbox.Size = UDim2.new(0, 35, 0, 35)
set_blurcbox.Image = cboxchecked



--========================================================Labels



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

scredit_label.Name = "scredit_label"
scredit_label.Parent = Main
scredit_label.BackgroundColor3 = Color3.new(1, 1, 1)
scredit_label.BackgroundTransparency = 1
scredit_label.Position = UDim2.new(-0.00100000005, 5, 0.00999999978, 0)
scredit_label.Size = UDim2.new(0, 233, 0, 27)
scredit_label.ZIndex = 1000
scredit_label.Font = Enum.Font.GothamBold
scredit_label.Text = "List of supported games -->"
scredit_label.TextColor3 = Color3.new(1, 1, 1)
scredit_label.TextScaled = true
scredit_label.TextSize = 14
scredit_label.TextStrokeTransparency = 0
scredit_label.TextWrapped = true
scredit_label.TextXAlignment = Enum.TextXAlignment.Left

AS_label.Name = "AS_label"
AS_label.Parent = Body
AS_label.BackgroundColor3 = Color3.new(1, 1, 1)
AS_label.BackgroundTransparency = 1
AS_label.Position = UDim2.new(0.0367816091, 0, 0.220588237, 15)
AS_label.Size = UDim2.new(0, 138, 0, 27)
AS_label.ZIndex = 100
AS_label.Font = Enum.Font.GothamBold
AS_label.Text = "Auto Sell"
AS_label.TextColor3 = Color3.new(1, 1, 1)
AS_label.TextScaled = true
AS_label.TextSize = 14
AS_label.TextStrokeTransparency = 0
AS_label.TextWrapped = true
AS_label.TextXAlignment = Enum.TextXAlignment.Left

lib_label.Name = "lib_label"
lib_label.Parent = Library
lib_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lib_label.BackgroundTransparency = 1.000
lib_label.Position = UDim2.new(0.0229885057, 0, -0.00818264857, 10)
lib_label.Size = UDim2.new(0, 415, 0, 36)
lib_label.ZIndex = 85
lib_label.Font = Enum.Font.GothamBold
lib_label.Text = "Supported Games (click to teleport)"
lib_label.TextColor3 = Color3.fromRGB(255, 255, 255)
lib_label.TextScaled = true
lib_label.TextSize = 14.000
lib_label.TextStrokeTransparency = 0.000
lib_label.TextWrapped = true

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

set_tklabel.Name = "set_tklabel"
set_tklabel.Parent = Settings
set_tklabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_tklabel.BackgroundTransparency = 1
set_tklabel.Position = UDim2.new(0.03, 0, 0.095, 0)
set_tklabel.Size = UDim2.new(0, 149, 0, 27)
set_tklabel.Font = Enum.Font.GothamBold
set_tklabel.Text = "Toggle key"
set_tklabel.TextColor3 = Color3.new(1, 1, 1)
set_tklabel.TextScaled = true
set_tklabel.TextSize = 14
set_tklabel.TextStrokeTransparency = 0
set_tklabel.TextWrapped = true
set_tklabel.TextXAlignment = Enum.TextXAlignment.Left

set_stklabel.Name = "set_stklabel"
set_stklabel.Parent = Settings
set_stklabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_stklabel.BackgroundTransparency = 1
set_stklabel.Position = UDim2.new(0.0299999993, 0, 0.354999989, 20)
set_stklabel.Size = UDim2.new(0, 149, 0, 27)
set_stklabel.ZIndex = 85
set_stklabel.Font = Enum.Font.GothamBold
set_stklabel.Text = "Script toggle"
set_stklabel.TextColor3 = Color3.new(1, 1, 1)
set_stklabel.TextScaled = true
set_stklabel.TextSize = 14
set_stklabel.TextStrokeTransparency = 0
set_stklabel.TextWrapped = true
set_stklabel.TextXAlignment = Enum.TextXAlignment.Left

set_gslabel.Name = "set_gslabel"
set_gslabel.Parent = Settings
set_gslabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_gslabel.BackgroundTransparency = 1
set_gslabel.Position = UDim2.new(0.03, 0, 0.223, 10)
set_gslabel.Size = UDim2.new(0, 149, 0, 27)
set_gslabel.Font = Enum.Font.GothamBold
set_gslabel.Text = "Gui speed"
set_gslabel.TextColor3 = Color3.new(1, 1, 1)
set_gslabel.TextScaled = true
set_gslabel.TextSize = 14
set_gslabel.TextStrokeTransparency = 0
set_gslabel.TextWrapped = true
set_gslabel.TextXAlignment = Enum.TextXAlignment.Left

set_blurlabel.Name = "set_blurlabel"
set_blurlabel.Parent = Settings
set_blurlabel.BackgroundColor3 = Color3.new(1, 1, 1)
set_blurlabel.BackgroundTransparency = 1
set_blurlabel.Position = UDim2.new(0.03, 0, 0.483, 30)
set_blurlabel.Size = UDim2.new(0, 149, 0, 27)
set_blurlabel.Font = Enum.Font.GothamBold
set_blurlabel.Text = "Blur"
set_blurlabel.TextColor3 = Color3.new(1, 1, 1)
set_blurlabel.TextScaled = true
set_blurlabel.TextSize = 14
set_blurlabel.TextStrokeTransparency = 0
set_blurlabel.TextWrapped = true

--EXTRA
local lib_grid = Instance.new("UIGridLayout")
lib_grid.Name = "lib_grid"
lib_grid.Parent = lib_holder
lib_grid.SortOrder = Enum.SortOrder.LayoutOrder
lib_grid.CellSize = UDim2.new(0, 412, 0, 25)

local blur = Instance.new("BlurEffect")
blur.Parent = game.Lighting
blur.Name = "SGD_Blur"
blur.Enabled = isblur

isopen = false
Top.Position = UDim2.new(Top.Position.X.Scale - 1, Top.Position.X.Offset, Top.Position.Y.Scale, Top.Position.Y.Offset)

game.CoreGui.ChildAdded:Connect(function(child)
	if child.Name == 'Fakt_SGD' then
		bigded = true
		SGD:Destroy()
	end
end)

local function visual()
	set_tkbox.PlaceholderText = togkey
	set_stkbox.PlaceholderText = stogkey
	set_gsbox.PlaceholderText = tostring(guispeed)
	Multiplier_box.Text = _G.multiplier
	return
end

local function num_encryption(input, encrypt)
	if encrypt then
		input = input:gsub('0', 'XO')
		input = input:gsub('1', 'oT')
		input = input:gsub('2', 'jD')
		input = input:gsub('3', 'QB')
		input = input:gsub('4', 'oE')
		input = input:gsub('5', 'oW')
		input = input:gsub('6', 'wY')
		input = input:gsub('7', 'nK')
		input = input:gsub('8', 'Zr')
		input = input:gsub('9', 'vc')
	else
		input = input:gsub('XO', '0')
		input = input:gsub('oT', '1')
		input = input:gsub('jD', '2')
		input = input:gsub('QB', '3')
		input = input:gsub('oE', '4')
		input = input:gsub('oW', '5')
		input = input:gsub('wY', '6')
		input = input:gsub('nK', '7')
		input = input:gsub('Zr', '8')
		input = input:gsub('vc', '9')
	end
	return input
end

gameid = num_encryption(tostring(gameid), true)

local function gensupgames()
	local _gid = game:HttpGet('https://api.github.com/repos/IKedi/ikedi.github.io/contents/app/scripts/sgd/lib')

	_gid = string.split(_gid, '"name"')

	for i, oof in ipairs(_gid) do
		if i ~= 1 then
			_gid = string.split(oof, '"')[2]
			_gid = string.split(_gid, '.')[1]
			_gid = num_encryption(_gid, false)

			if _gid == num_encryption(tostring(gameid), false) then
				gamesup = true 
			end

			local _gamename = game:GetService("MarketplaceService"):GetProductInfo(_gid).Name

			local gen = Instance.new("TextButton")

			gen.Name = _gid
			gen.Parent = lib_holder
			gen.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
			gen.BorderColor3 = Color3.fromRGB(0, 0, 0)
			gen.Position = UDim2.new(1.02590752, 0, 0.676739275, 0)
			gen.Size = UDim2.new(0, 228, 0, 50)
			gen.ZIndex = 0
			gen.Font = Enum.Font.GothamBold
			gen.Text = _gamename..' ('.._gid..')'
			gen.TextColor3 = Color3.fromRGB(255, 255, 255)
			gen.TextScaled = true
			gen.TextSize = 14.000
			gen.TextStrokeTransparency = 0.000
			gen.TextWrapped = true

			gen.MouseButton1Click:Connect(function()
				game:GetService("TeleportService"):Teleport(gen.Name,plr)
			end)

			local _cs = lib_scroll.CanvasSize
			lib_scroll.CanvasSize = UDim2.new(_cs.X.Scale, _cs.X.Offset, _cs.Y.Scale, _cs.Y.Offset + 30)
		end
	end
	if not gamesup then
		notify('This game is not supported.')
		for i, _o in ipairs(Body:GetChildren()) do
			_o.Visible = false
		end
	end
end
gensupgames()
wait(0.1)

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
		local _e = set.split(set, ',')
		---
		_G.multiplier = string.split(string.split(_e[1], '|')[2], ':')[2]
		if string.split(string.split(_e[1], '|')[2], ':')[2]:find('@') then
			Multiplier_label.Text = string.split(string.split(string.split(_e[1], '|')[2], ':')[2], '@')[2]
			_G.multiplier = string.split(string.split(string.split(_e[1], '|')[2], ':')[2], '@')[1]
		end
		scredit_label.Text = 'Script made by '..string.split(string.split(_e[3], '|')[2], ':')[2]
		
		local __ascheck = string.split(string.split(_e[2], '|')[2], ':')[2]

		if __ascheck == 'false' then
			AS_label:Destroy()
		elseif __ascheck ~= 'false' and __ascheck ~= 'true' then
			AS_label.Text = __ascheck
		end
		---
		return
	end
	sc()
	if gamesup then sa() end
	visual()
	return
end

getsettings()

-----
local function run()
	if _G.sgd_kill then
		_G.sgd_kill = false
		Start_butt.Text = 'Stop'
		loadstring(game:HttpGet("http://ikedi.github.io/app/scripts/sgd/lib/"..gameid..".lua"))()
	else
		Start_butt.Text = 'Start'
		_G.sgd_kill = true
	end
end

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
	if bigded then return;end
	k = k:lower()
	if k == togkey then
		togglegui()
	elseif k == stogkey then
		run()
	else
		return
	end
end)

Start_butt.MouseButton1Click:Connect(function()
	run()
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

Lib_butt.MouseButton1Click:Connect(function()
	if Lib_butt.BackgroundColor3 == Color3.fromRGB(45, 45, 75) then
		Lib_butt.BackgroundColor3 = Color3.fromRGB(55, 55, 85)
		Library:TweenPosition(UDim2.new(0, 0, 0.219999999, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
	else
		Lib_butt.BackgroundColor3 = Color3.fromRGB(45, 45, 75)
		Library:TweenPosition(UDim2.new(0, 0, 0.999, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
	end
end)

Close_butt.MouseButton1Click:Connect(function()
	bigded = true
	SGD:Destroy()
end)
--------------
set_tkbox.Changed:Connect(function()
	if string.sub(set_tkbox.Text,1,1) then
		set_tkbox.Text = string.sub(set_tkbox.Text,1,1)
	end
end)

set_stkbox.Changed:Connect(function()
	if string.sub(set_stkbox.Text,1,1) then
		set_stkbox.Text = string.sub(set_stkbox.Text,1,1)
	end
end)
--------------
set_tkbox.FocusLost:Connect(function()
	if set_tkbox.Text == '' then return;end
	togkey = set_tkbox.Text
	visual()
end)
set_stkbox.FocusLost:Connect(function()
	if set_stkbox.Text == '' then return;end
	stogkey = set_stkbox.Text
	visual()
end)
set_gsbox.FocusLost:Connect(function()
	if set_gsbox.Text == '' then return;end
	guispeed = set_gsbox.Text
	visual()
end)
Multiplier_box.Changed:Connect(function()
	_G.multiplier = Multiplier_box.Text
end)
set_blurcbox.MouseButton1Click:Connect(function()
	if isblur then
		set_blurcbox.Image = cboxempty
		isblur = false
		blur.Enabled = false
	else
		set_blurcbox.Image = cboxchecked
		isblur = true
		blur.Enabled = true
	end
	visual()
end)
AS_cbox.MouseButton1Click:Connect(function()
	if _G.sgd_autosell then
		AS_cbox.Image = cboxempty
		_G.sgd_autosell = false
	else
		AS_cbox.Image = cboxchecked
		_G.sgd_autosell = true
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

if not gamesup then
	Lib_butt.BackgroundColor3 = Color3.fromRGB(45, 45, 75)
	Library:TweenPosition(UDim2.new(0, 0, 0.999, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, guispeed)
end
