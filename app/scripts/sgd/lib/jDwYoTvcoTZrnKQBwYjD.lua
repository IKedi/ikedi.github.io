--|Multiplier:doesn't work in this game.|--
_G.sgd_kill = false
local rem = game:GetService("ReplicatedStorage").Events.Train
while wait() do
	if _G.sgd_kill then return end
	rem:FireServer("Strength")
    wait(0.3)
    rem:FireServer("Endurance")
    wait(0.3)
    rem:FireServer("Psychic")
    wait(0.3)
end