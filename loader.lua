--[[

 ,,                                          
  db                                          
                                              
`7MM `7M'    ,A    `MF'    `7M'   `MF'pd*"*b. 
  MM   VA   ,VAA   ,V        VA   ,V (O)   j8 
  MM    VA ,V  VA ,V          VA ,V      ,;j9 
  MM     VVV    VVV            VVV    ,-='    
.JMML.    W      W              W    Ammmmmmm 
                                                     
]]

cloneref = cloneref or function(x) return x end

-- No, i will not make variables for services :3
repeat task.wait() until game:IsLoaded() and cloneref(game:GetService("ContentProvider")).RequestQueueSize <= 10

cloneref(game:GetService("Players")).LocalPlayer.Idled:Connect(function()
    cloneref(game:GetService("VirtualUser")):ClickButton2(Vector2.new())
end)

if isfile("IceWare/Version.txt") and readfile("IceWare/Version.txt") == "V1.0.0" then
    delfolder("IceWare")
end

local shared = {
    version = "V2.0.0",
    folders = {
        main = 'IceWare',
        games = 'IceWare/Games',
        keysystem = 'IceWare/Key System',
        assets = 'IceWare/Assets',
    };
}

for _, folder in next, shared.folders do
    if not isfolder(folder) then
        makefolder(folder)
    end
end

writefile("IceWare/Discord.txt", "https://discord.gg/sn2Etx6M8G")
writefile("IceWare/Version.txt", shared.version)

local games = {
    [{13822562292, 139048751758942, 133327835421432, 121510074321001}] = "https://raw.githubusercontent.com/Iceware-RBLX/rewrite/refs/heads/main/files/experiences/midnight%20chasers/init.lua", -- Midnight Chasers
    [{3351674303, 71775212858107}] = "https://raw.githubusercontent.com/Iceware-RBLX/rewrite/refs/heads/main/files/experiences/driving%20empire/init.lua", -- Driving Empire
    [{1554960397}] = "https://raw.githubusercontent.com/Iceware-RBLX/rewrite/refs/heads/main/files/experiences/car%20dealership%20tycoon/init.lua", -- Car Dealership Tycoon
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        local ok, err = pcall(function()
            loadstring(game:HttpGet(url))()
        end)
        if not ok then
            --warn("Failed 2 load" .. err)
        end
    end
end
