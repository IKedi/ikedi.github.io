--|Multiplier:true@Auto sell (true, false)|,|AutoSell:use syn_mouse1click()|,|By:IKedi|

local st = game.Players.LocalPlayer.PlayerGui.Bin.UIs.CurrencyUi.Strength.Num
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

while wait() do
    if _G.sgd_kill then return;end
    local _g = false
    local _s = string.split(st.Text, '/')
    local _m = tonumber(_s[2])
    local _c = tonumber(_s[1])
    
    if _c == _m then _g = false else _g = true end
    
    if syn and _G.sgd_autosell then
        if _g then syn_mouse1click() end
        if _G.multiplier == 'true' and not _g then
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SellAll")
        end
    end
    
    for i, o in ipairs(workspace.FishCoins:GetChildren()) do
        o.CFrame = hrp.CFrame
    end
end