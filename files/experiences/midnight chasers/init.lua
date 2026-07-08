if identifyexecutor and (identifyexecutor():lower():find("solara") or identifyexecutor():lower():find("xeno")) then
    game.Players.LocalPlayer:Kick("Your executor is not supported, please use a better or executor \n\n https://weao.xyz")
    return
end

local key = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iceware-RBLX/rewrite/refs/heads/main/files/storage/key.lua"))()

key:Create("bb0ddec488ffaaa951b239c94d320547")
