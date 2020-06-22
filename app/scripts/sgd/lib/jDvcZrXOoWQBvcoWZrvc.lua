--Multiplier:30,AutoSell:true,By:IKedi--
while wait() do
	if _G.sgd_kill then return end
	for i = 1, tonumber(_G.multiplier) do
		game:GetService("ReplicatedStorage").DrinksGives.Give18:FireServer()
	end
	if _G.sgd_autosell then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-4920.07861, 3764.83008, -1057.08215, -0.137502, -5.09118259e-08, 0.990501463, -7.72833104e-08, 1, 4.06715337e-08, -0.990501463, -7.09568155e-08, -0.137502))
	end
end
