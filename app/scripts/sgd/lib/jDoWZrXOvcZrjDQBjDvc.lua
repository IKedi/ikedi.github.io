--Multiplier:30,AutoSell:Gems,By:IKedi--
local rem = game:GetService("ReplicatedStorage").Events.SendTexts
while wait() do
	if _G.sgd_kill then return end
	for i = 1, tonumber(_G.multiplier) do
		rem:FireServer("Phone")
		rem:FireServer("Game")
		rem:FireServer("Tablet")
		rem:FireServer("Computer")
	end
	if _G.sgd_autosell then
   	    for i, o in ipairs(workspace.Gems:GetChildren()) do
       		o.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       		wait(0.1)
       		o:Destroy()
	    end
	end
end
