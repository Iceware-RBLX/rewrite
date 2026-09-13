if identifyexecutor and (identifyexecutor():lower():find("solara") or identifyexecutor():lower():find("xeno")) then
    game.Players.LocalPlayer:Kick("Your executor is not supported, please use a better executor \n\n https://weao.xyz")
    return
end

local key = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iceware-RBLX/rewrite/refs/heads/main/files/storage/key.lua"))()

key:Create("366f2753870d3f9fd209e7304e03c997")
