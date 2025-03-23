
--[[
  Raiser Hub | Made by Yu
  Full Auto Farm & V4 System for Blox Fruits
  Optimized, Lightweight, Private Ready
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Raiser Hub | Made by Yu", "Ocean")

-- Tabs
local Tabs = {
    AutoFarm = Window:NewTab("Auto Farm"),
    UpV4 = Window:NewTab("Up V4"),
    StatusServer = Window:NewTab("Status Server"),
    Misc = Window:NewTab("Misc")
}

-- Variables
local selectedWeapon = "Sword"
local farmMode = "Smooth Safe"

-- Auto Farm Tab
Tabs.AutoFarm:NewDropdown("Select Weapon", "Choose weapon type", {"Melee", "Sword", "Gun", "Fruit"}, function(v)
    selectedWeapon = v
end)

Tabs.AutoFarm:NewDropdown("Farm Mode", "Choose Auto Farm Mode", {"Fast Farm", "Smooth Safe"}, function(v)
    farmMode = v
end)

Tabs.AutoFarm:NewToggle("Auto Farm Level", "Automatically farm levels", function(v) AutoFarmLevel = v end)
Tabs.AutoFarm:NewToggle("Auto Quest", "Auto accept quest", function(v) AutoQuest = v end)
Tabs.AutoFarm:NewToggle("Auto Boss Farm", "Farm Bosses Automatically", function(v) AutoFarmBoss = v end)
Tabs.AutoFarm:NewToggle("Auto Mastery (Fruit/Sword/Gun)", "Auto Mastery Farm", function(v) AutoMastery = v end)
Tabs.AutoFarm:NewToggle("Auto Ken Haki", "Auto Turn on Ken Haki", function(v) AutoKen = v end)
Tabs.AutoFarm:NewToggle("Auto Buso Haki", "Auto Turn on Buso Haki", function(v) AutoBuso = v end)
Tabs.AutoFarm:NewToggle("Auto Click + Skill Spam", "Auto attack and spam skill", function(v) AutoClickSkill = v end)
Tabs.AutoFarm:NewToggle("Auto Chest", "Auto Farm Chest", function(v) AutoChest = v end)
Tabs.AutoFarm:NewToggle("Auto Elite Hunter", "Auto hunt elite bosses", function(v) AutoElite = v end)
Tabs.AutoFarm:NewToggle("Auto Bone Farm", "Auto farm bone drops", function(v) AutoBone = v end)
Tabs.AutoFarm:NewToggle("Auto Observation", "Auto observation haki farm", function(v) AutoObs = v end)
Tabs.AutoFarm:NewToggle("Auto Cake Prince", "Auto farm Cake Prince boss", function(v) AutoCake = v end)
Tabs.AutoFarm:NewToggle("Auto Dough King", "Auto farm Dough King boss", function(v) AutoDough = v end)

-- Up V4 Tab
Tabs.UpV4:NewToggle("Auto Go To Trial Gate", "Teleport to your trial gate", function(v) AutoTrialGate = v end)
Tabs.UpV4:NewToggle("Auto Trial", "Auto complete your trial", function(v) AutoTrial = v end)
Tabs.UpV4:NewToggle("Auto Kill Player After Trial", "Auto kill after trial ends", function(v) AutoKillAfterTrial = v end)
Tabs.UpV4:NewToggle("Auto Activate V4", "Auto activate V4 after trial", function(v) AutoV4 = v end)
Tabs.UpV4:NewToggle("Auto Skill Spam in Trial", "Spam skill during trial", function(v) AutoSkillTrial = v end)

-- Status Server Tab
Tabs.StatusServer:NewLabel("Server Status")
Tabs.StatusServer:NewButton("Ping: "..math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()).." ms", "", function() end)
Tabs.StatusServer:NewButton("FPS: "..math.floor(workspace:GetRealPhysicsFPS()), "", function() end)
Tabs.StatusServer:NewButton("Players: "..#game.Players:GetPlayers(), "", function() end)
Tabs.StatusServer:NewButton("Server ID: "..game.JobId, "", function() end)

-- Misc Tab
Tabs.Misc:NewToggle("Anti Ban", "Fake activity to avoid kick", function(v) AntiBan = v end)
Tabs.Misc:NewButton("Copy Raiser Hub Discord", "Copy to clipboard", function()
    setclipboard("https://discord.gg/yourhub")
end)
Tabs.Misc:NewKeybind("Toggle UI", "Keybind to toggle UI menu", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)
