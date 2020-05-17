local m_sb = game.Players.LocalPlayer.PlayerGui.Fakt_SGD.Drag.Main.Body.Start_butt
local a = false

while wait() do
	if a then return;end
	print'dont mine at night'
end

m_sb.Changed:Connect(function()
	if m_sb.Text == "Start" then
		a = true
	end
end
