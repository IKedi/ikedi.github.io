if game.CoreGui:FindFirstChild("SGD") then
	Game.CoreGui["SGD"]:Destroy()
end

local Shitgamedestroyer = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local Main = Instance.new("Frame")
local button = Instance.new("TextButton")
local amount = Instance.new("TextBox")
local label = Instance.new("TextLabel")

Shitgamedestroyer.Name = "SGD"
Shitgamedestroyer.Parent = game.CoreGui
Shitgamedestroyer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Top.Name = "Top"
Top.Parent = Shitgamedestroyer
Top.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.176471)
Top.BorderColor3 = Color3.new(0, 0, 0)
Top.Position = UDim2.new(0.438020825, 0, 0.732334018, 0)
Top.Size = UDim2.new(0, 259, 0, 10)
Top.BorderMode = Enum.BorderMode.Inset
Top.Selectable = true
Top.Active = true
Top.Draggable = true

Main.Name = "Main"
Main.Parent = Top
Main.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.Position = UDim2.new(-0.00213360786, 0, 1.04304075, 0)
Main.Size = UDim2.new(0, 259, 0, 67)
Main.BorderMode = Enum.BorderMode.Inset

button.Name = "button"
button.Parent = Main
button.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.294118)
button.BorderColor3 = Color3.new(0, 0, 0)
button.Position = UDim2.new(0.734415531, 0, 0.240525886, 0)
button.Size = UDim2.new(0, 57, 0, 37)
button.Font = Enum.Font.SourceSans
button.Text = "Enable"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 14

amount.Name = "amount"
amount.Parent = Main
amount.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.215686)
amount.BorderColor3 = Color3.new(0, 0, 0)
amount.Position = UDim2.new(0.33898595, 0, 0.391707242, 0)
amount.Size = UDim2.new(0, 81, 0, 18)
amount.Font = Enum.Font.SourceSans
amount.Text = "2"
amount.TextColor3 = Color3.new(1, 1, 1)
amount.TextSize = 14

label.Name = "label"
label.Parent = Main
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Position = UDim2.new(-0.00388998957, 0, 0.365980476, 0)
label.Size = UDim2.new(0, 89, 0, 17)
label.Font = Enum.Font.SourceSans
label.Text = "Multiplier"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 14

local a = false
local gid = game.PlaceId

local function bladesim()
	local rem = game.ReplicatedStorage.Swing
	while true do
	    if a then return end
		for i = 1, tonumber(amount.Text) do
		    rem:FireServer(100000)
		end
    	wait()
	end
end
local function ninjalegends()
	local rem = game.Players.LocalPlayer.ninjaEvent
	while true do
	    if a then return end
		rem:FireServer("swingKatana")
    	wait()
	end
end
local function textingsim()
	local rem = game:GetService("ReplicatedStorage").Events.SendTexts
	while true do
	    if a then return end
		for i = 1, tonumber(amount.Text) do
		    rem:FireServer("Phone")
			rem:FireServer("Game")
			rem:FireServer("Tablet")
			rem:FireServer("Computer")
		end
    	wait()
	end
end

local function start(a)
	if gid == 4458733955 then
		if a == false then amount.Text = 5 end
		if a then bladesim() end
	elseif gid == 3956818381 then
		if a == false then amount.Visible = false label.Text = "Multiplier doesn't work in this game" label.TextXAlignment = Enum.TextXAlignment.Left end
		if a then ninjalegends() end
	elseif gid == 2580982329 then
		if a == false then amount.Text = 50 end
		if a then textingsim() end
	else
		amount.Visible = false
		button.Visible = false
		label.Text = "Game not supported. Destorying gui in 5 seconds..."
		wait(5)
		Shitgamedestroyer:Destroy()
	end
end

button.MouseButton1Click:Connect(function()
	if button.Text == "Enable" then
		button.Text = "Disable"
		a = false
		start(true)
	else
		a = true
		button.Text = "Enable"
	end
end)

start(false)
