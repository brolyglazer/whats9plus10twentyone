local Games = {
    [6556072] = "AUT/Main.lua",
    [35566755] = "VS/Main.lua",
    [6042520] = "99nigt/Main.lua",
    [36015593] = "HuntyZ/main.lua",
    [883342755] = "BXZ/Main.lua",
    [34970628] = "WL2/Main.lua",
    [32416851] = "MC/Main.lua",
}

local base = "https://raw.githubusercontent.com/brolyglazer/whats9plus10twentyone/main/"

local creator = game.CreatorId
local file = Games[creator]

if not file then
    warn("Unsupported game")
    return
end

local url = base .. file

local ok, err = pcall(function()
    loadstring(game:HttpGet(url))()
end)

if ok then
    print("Loaded:", file)
else
    warn("Error loading:", err)
end

