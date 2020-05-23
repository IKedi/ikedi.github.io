--|Multiplier:Wait time (if laggy)|,|AutoSell:false|,|By:IKedi|--
while wait() do
	local rem = game:GetService("ReplicatedStorage").Network
	if _G.sgd_kill then return end
	for i, o in ipairs(rem:GetChildren()) do
		if o.ClassName == 'RemoteEvent' then
			local _a_str = string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Currency.Fizz.Amount.Text, '/')
			if _a_str[1] == _a_str[2] then
				o:FireServer('SellFizz')
			end
			o:FireServer("TryFizz")
			for i, _c in ipairs(game:GetService("Workspace").Loots:GetChildren()) do
				o:FireServer("CollectLoot", _c)
			end
			wait(tonumber(_G.multiplier))
		end
	end  
end
