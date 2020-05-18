--|Multiplier:5|--
_G.sgd_kill = false
local rem = game.ReplicatedStorage.Swing
while wait() do
	if _G.sgd_kill then return end
	for i = 1, tonumber(_G.multiplier) do
		rem:FireServer(100000)
	end
end