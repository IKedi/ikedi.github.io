--|Multiplier:30|,|AutoSell:true|,|By:IKedi|
while wait() do
	if _G.sgd_kill then return end
	for i = 1, tonumber(_G.multiplier) do
		game:GetService("ReplicatedStorage").DrinksGives.Give18:FireServer()
	end
	if _G.sgd_autosell then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-4920.73242, 3766.93262, -1055.36194))
	end
end
