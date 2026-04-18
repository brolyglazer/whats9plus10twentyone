-- // Made by @Flames9925 | Edited by @NyxaSylph
local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)

local HttpService: HttpService = cloneref(game:GetService("HttpService"));
local Players: Players = cloneref(game:GetService("Players"));
local LPlayer = Players.LocalPlayer;

repeat task.wait() until game:IsLoaded() and (LPlayer and LPlayer.Character)

if typeof(getconnections) == "function" then
    for _, Conn in ipairs(getconnections(LPlayer.Idled)) do
        Conn:Disable()
    end
else
    warn("❌ Anti AFK Failed")
end

local Loader = {}

Loader.Repositories = {["brolyglazer"] = "https://raw.githubusercontent.com/brolyglazer/whats9plus10twentyone/main/",
	["brolyglazer"]   = "https://raw.githubusercontent.com/brolyglazer/meow/refs/heads/main/Vellure-main/Resources/Library.lua",
}

Loader.Files = {
    ["A Universal Time"] = { Author = "brolyglazer", File = "AUT/Main.lua", CreatorId = 6556072 },
}

function Loader:LoadByCreatorId(CreatorId)
    for GameName, Data in pairs(self.Files) do
        if Data.CreatorId == CreatorId then
            local Url = ("%s%s"):format(self.Repositories[Data.Author], Data.File)
            local Ok, Err = pcall(function()
                return loadstring(game:HttpGet(Url))()
            end)
            if Ok then
                print("✅ Loaded:", GameName, "by @" .. Data.Author)
            else
                warn("❌ Everything went south:", GameName, Err)
            end
            return
        end
    end

    warn([[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀
⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⡿⠛⠉⠉⠉⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀
⠀⠀⠀⣾⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀
⠀⠀⣿⣿⣿⠛⢿⣿⣿⡿⠟⠋⠉⠉⠙⠻⢿⣿⣿⡿⠛⣿⣿⣿⣿⣿⣿⡇
⠀⢸⣿⣿⣿⠀⠀⠈⠁⠀⢀⣴⣿⣿⣦⡀⠀⠈⠁⠀⠀⣿⣿⣿⣿⣿⣿⣿
⠀⣸⣿⣿⣿⣄⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿
⠀⣿⣿⣿⣿⣿⣷⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿

    UNSUPPORTED GAME - CLOWN DETECTED 🤡
    ]])
end

Loader:LoadByCreatorId(game.CreatorId)
return Loader
