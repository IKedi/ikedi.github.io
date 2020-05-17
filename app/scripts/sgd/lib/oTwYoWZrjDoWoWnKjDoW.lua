local a=game.Players.LocalPlayer.PlayerGui:WaitForChild('Fakt_SGD').Drag.Main.Body.Start_butt;local b=false
while wait(0.5) do
	if b then return;end
	print'luggi'
end
a.Changed:Connect(function()
	if a.Text == "Start" then
		b = true
	end
end)
