local cool = {
    2547373189,
    12192471,
    1
}

local url = game:HttpGet("https://raw.githubusercontent.com/Lixalidy/Test1/main/Main/Extra/whitelists")
local success, err = pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character then
            if table.find(cool,v.UserId) then
                v.Character.Humanoid.DisplayName = "[👑]"..v.DisplayName
            elseif string.find(url,v.UserId) then
                v.Character.Humanoid.DisplayName = "[⭐]"..v.DisplayName
            elseif not v.Character.Head:FindFirstChild("OriginalSize") then
                v.Character.Humanoid.DisplayName = "[🔒]"..v.DisplayName
            end
        end
    end
end)
