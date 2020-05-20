--|Multiplier:doesn't work in this game.|,|AutoSell:0|,|By:IKedi|--
_G.sgd_kill = false
local rem = game.Players.LocalPlayer.ninjaEvent
while wait() do
	if _G.sgd_kill then return end
	rem:FireServer("swingKatana")
end
