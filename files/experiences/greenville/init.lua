if identifyexecutor and (identifyexecutor():lower():find("solara") or identifyexecutor():lower():find("xeno")) then
    game.Players.LocalPlayer:Kick("Your executor is not supported, please use a better or executor \n\n https://weao.xyz")
    return
end

local key = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iceware-RBLX/rewrite/refs/heads/main/files/storage/key.lua"))()

key:Create("16fdf3bff83bcce0883b6fc77f36b4a6")
