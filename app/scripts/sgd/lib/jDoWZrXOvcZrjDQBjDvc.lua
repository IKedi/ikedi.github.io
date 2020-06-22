--Multiplier:50,AutoSell:false,By:IKedi--
local rem = game:GetService("ReplicatedStorage").Events.SendTexts
while wait() do
	if _G.sgd_kill then return end
	for i = 1, tonumber(_G.multiplier) do
		rem:FireServer("Phone")
		rem:FireServer("Game")
		rem:FireServer("Tablet")
		rem:FireServer("Computer")
	end
end
