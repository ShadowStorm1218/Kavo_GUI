local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowStorm1218/Kavo_GUI/main/Kavo_UI.lua"))()
local Window = Library.CreateLib("Vertex", "GrapeTheme")

--Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player Funtions")

--VARIABLES
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
local playertpvar = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame



--Speed (Slider)
PlayerSection:NewSlider("Speed", "Adjust speed power", 500, 16, function(speed) -- 500 (MaxValue) | 0 (MinValue)
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    _G.WS = speed;
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = _G.WS;
    end)
    Humanoid.WalkSpeed = _G.WS;
end)
--Jump (Slider)
PlayerSection:NewSlider("Jump", "Adust Jump Power", 500, 50, function(jump) -- 500 (MaxValue) | 0 (MinValue)
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    _G.JP = jump;
    Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
    Humanoid.JumpPower = _G.JP;
    end)
    Humanoid.JumpPower = _G.JP;
end)
