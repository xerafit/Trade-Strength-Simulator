local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MAIN", "DarkTheme")
local Tab = Window:NewTab("Main")
local Farming = Tab:NewSection("Farming")
local Boxes = Tab:NewSection("Boxes")

local sac1Running = false local sac2Running = false local sac3Running = false local sac4Running = false  local asc1Running = false local asc2Running = false local asc3Running = false local asc4Running = false
local running = false local box2Running = false local box3Running = false local box5Running = false local box6Running = false local box7Running = false local box8Running = false

local function ensureSlotOneSelected()
    local player = game.Players.LocalPlayer
    if not player.Character then return end

    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        local slotOneTool = backpack:WaitForChild("Weight")
        if slotOneTool and not player.Character:FindFirstChildOfClass("Tool") then
            player.Character.Humanoid:EquipTool(slotOneTool)
        end
    end
end

local autoSelectRunning = false

Farming:NewButton("Auto Select", "", function() 
    autoSelectRunning = not autoSelectRunning
    while autoSelectRunning do
        ensureSlotOneSelected()
        wait(0.5)
    end
end)

Farming:NewButton("Auto Strength", "auto strength", function() while wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("st"):FireServer() end print("Clicked") end) 
Farming:NewButton("Sac 1", "erm what the sigma1", function() sac1Running = true while sac1Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("sac1"):FireServer() end print("Clicked") end)
Farming:NewButton("Sac 2", "erm what the sigma2", function() sac2Running = true while sac2Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("sac2"):FireServer() end print("Clicked") end)
Farming:NewButton("Sac 3", "erm what the sigma3", function() sac3Running = true while sac3Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("sac3"):FireServer() end print("Clicked") end)
Farming:NewButton("Sac 4", "erm what the sigma4", function() sac4Running = true while sac4Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("sac4"):FireServer() end print("Clicked") end)
Farming:NewButton("Asc 1", "what the sigma1", function() asc1Running = true while asc1Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("asc1"):FireServer() end print("Clicked") end)
Farming:NewButton("Asc 2", "what the sigma2", function() asc2Running = true while asc2Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("asc2"):FireServer() end print("Clicked") end)
Farming:NewButton("Asc 3", "what the sigma3", function() asc3Running = true while asc3Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("asc3"):FireServer() end print("Clicked") end)
Farming:NewButton("Asc 4", "what the sigma4", function() asc4Running = true while asc4Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromLocalForServer"):WaitForChild("Get"):WaitForChild("asc4"):FireServer() end print("Clicked") end)
Farming:NewButton("Stop Sac 1", "", function() sac1Running = false print("sac1 stopped") end)
Farming:NewButton("Stop Sac 2", "", function() sac2Running = false print("sac2 stopped") end)
Farming:NewButton("Stop Sac 3", "", function() sac3Running = false print("sac3 stopped") end)
Farming:NewButton("Stop Sac 4", "", function() sac4Running = false print("sac4 stopped") end)
Farming:NewButton("Stop Asc 1", "", function() asc1Running = false print("asc1 stopped") end)
Farming:NewButton("Stop Asc 2", "", function() asc2Running = false print("asc2 stopped") end)
Farming:NewButton("Stop Asc 3", "", function() asc3Running = false print("asc3 stopped") end)
Farming:NewButton("Stop Asc 4", "", function() asc4Running = false print("asc4 stopped") end)

Boxes:NewButton("Box 1", "", function() running = true while running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box1"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 2", "", function() box2Running = true while box2Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box2"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 3", "", function() box3Running = true while box3Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box3"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 4", "", function() box4Running = true while box4Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box4"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 5", "", function() box5Running = true while box5Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box5"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 6", "", function() box6Running = true while box6Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box6"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 7", "", function() box7Running = true while box7Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box7"):FireServer() end print("Clicked") end)
Boxes:NewButton("Box 8", "", function() box8Running = true while box8Running and wait() do game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FromServerForLocal"):WaitForChild("Box"):WaitForChild("box8"):FireServer() end print("Clicked") end)
Boxes:NewButton("Stop Box 1", "stop box1", function() running = false print("Box1 stopped") end)
Boxes:NewButton("Stop Box 2", "stop box2", function() box2Running = false print("Box2 stopped") end)
Boxes:NewButton("Stop Box 3", "stop box3", function() box3Running = false print("Box3 stopped") end)
Boxes:NewButton("Stop Box 4", "stop box4", function() box4Running = false print("Box4 stopped") end)
Boxes:NewButton("Stop Box 5", "stop box5", function() box5Running = false print("Box5 stopped") end)
Boxes:NewButton("Stop Box 6", "stop box6", function() box6Running = false print("Box6 stopped") end)
Boxes:NewButton("Stop Box 7", "stop box7", function() box7Running = false print("Box7 stopped") end)
Boxes:NewButton("Stop Box 8", "stop box8", function() box8Running = false print("Box8 stopped") end)
