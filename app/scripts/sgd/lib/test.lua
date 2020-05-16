local m_sb = game.Players.LocalPlayer.PlayerGui.Fakt_SGD.Main.Body.Start_butt
while wait() do
	m_sb.Changed:Connect(function()
		if m_sb.Text == "Start" then return end
	end
	print'dont mine at night'
end
