
-- Raiser Hub | Made by Yu (REDzV2 UI Version)
repeat wait() until game:IsLoaded()

-- Anti-Ban Basic Bypass
pcall(function()
    hookfunction(Instance.new("RemoteEvent").FireServer, function() end)
    hookfunction(Instance.new("RemoteFunction").InvokeServer, function() end)
end)

-- Load REDzV2 UI Library
local REDzV2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHub/REDzV2/main/UI-Library.lua"))()
local Window = REDzV2:CreateWindow("Raiser Hub | Made by Yu")

-- Tabs
local TabFarm = Window:CreateTab("Auto Farm")
local TabV4 = Window:CreateTab("Up V4")
local TabStatus = Window:CreateTab("Status Server")
local TabMisc = Window:CreateTab("Misc")

-- Auto Farm Section
TabFarm:CreateLabel("Auto Farming Options")
TabFarm:CreateDropdown("Select Weapon", {"Melee", "Sword", "Gun", "Fruit"}, function(v)
    getgenv().SelectedWeapon = v
end)
TabFarm:CreateToggle("Auto Farm Level", false, function(v)
    getgenv().AutoFarmLevel = v
end)
TabFarm:CreateToggle("Auto Quest", false, function(v)
    getgenv().AutoQuest = v
end)
TabFarm:CreateToggle("Auto Farm Boss", false, function(v)
    getgenv().AutoFarmBoss = v
end)
TabFarm:CreateToggle("Auto Farm Mastery", false, function(v)
    getgenv().AutoFarmMastery = v
end)
TabFarm:CreateToggle("Auto Ken Haki", false, function(v)
    getgenv().AutoKenHaki = v
end)
TabFarm:CreateToggle("Auto Buso Haki", false, function(v)
    getgenv().AutoBusoHaki = v
end)
TabFarm:CreateToggle("Auto Click + Skill Spam", false, function(v)
    getgenv().AutoSkillSpam = v
end)
TabFarm:CreateToggle("Auto Farm Chest", false, function(v)
    getgenv().AutoChest = v
end)
TabFarm:CreateToggle("Auto Observation Farm", false, function(v)
    getgenv().AutoObservation = v
end)
TabFarm:CreateToggle("Auto Elite Hunter", false, function(v)
    getgenv().AutoEliteHunter = v
end)
TabFarm:CreateToggle("Auto Bone Farm", false, function(v)
    getgenv().AutoBone = v
end)
TabFarm:CreateToggle("Auto Cake Prince", false, function(v)
    getgenv().AutoCakePrince = v
end)
TabFarm:CreateToggle("Auto Dough King", false, function(v)
    getgenv().AutoDoughKing = v
end)

-- Up V4 Section
TabV4:CreateLabel("V4 Auto Up")
TabV4:CreateButton("Teleport To Trial Door", function()
    local myRace = game.Players.LocalPlayer.Data.Race.Value
    local raceDoors = {
        ["Human"] = CFrame.new(130.21, 1387.72, -13629.57),
        ["Angel"] = CFrame.new(197.38, 1387.72, -13747.07),
        ["Rabbit"] = CFrame.new(203.93, 1387.72, -13534.91),
        ["Demon"] = CFrame.new(273.78, 1387.72, -13640.24),
        ["Ghoul"] = CFrame.new(65.51, 1387.72, -13640.69),
        ["Cyborg"] = CFrame.new(200.53, 1387.72, -13465.53)
    }
    local cf = raceDoors[myRace]
    if cf then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
    end
end)
TabV4:CreateToggle("Auto Trial", false, function(v)
    getgenv().AutoTrial = v
end)
TabV4:CreateToggle("Auto Kill Player After Trial", false, function(v)
    getgenv().KillAfterTrial = v
end)
TabV4:CreateToggle("Auto Activate V4 After Trial", false, function(v)
    getgenv().AutoV4Active = v
end)

-- Status Server Section
TabStatus:CreateLabel("Server Info")
TabStatus:CreateLabel("Players: " .. #game.Players:GetPlayers())
TabStatus:CreateLabel("Ping: " .. math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()) .. " ms")

-- Misc Tab
TabMisc:CreateLabel("Misc Options")
TabMisc:CreateButton("Rejoin Server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
TabMisc:CreateButton("Server Hop", function()
    local ts = game:GetService("TeleportService")
    local players = game:GetService("Players")
    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, players.LocalPlayer)
end)
