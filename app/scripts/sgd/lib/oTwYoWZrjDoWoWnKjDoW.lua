local a=game.Players.LocalPlayer.PlayerGui:WaitForChild('Fakt_SGD').Drag.Main.Body.Start_butt;local b=false
while wait(0.5) do
	if b then return;print'biggergay';end
	print'luggi'
end
a.Changed:Connect(function()
	wait()
	if a.Text == "Start" then
		b = true
			print'gay'
	end
end)
