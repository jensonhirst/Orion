 game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local JailPart = workspace:WaitForChild("Jail")

-- RemoteEvents
local JailEvent = ReplicatedStorage:WaitForChild("JailEvent")
local ReleaseEvent = ReplicatedStorage:WaitForChild("ReleaseEvent")

-- Player ranks
local PlayerRanks = {
    ["YourUsername"] = "Owner",
    ["AdminFriend"] = "Admin",
    ["ModFriend"] = "Moderator"
}

-- Rank hierarchy
local hierarchy = {Player = 0, Moderator = 1, Admin = 2, Owner = 3}

-- Functions
local function HasAccess(player, requiredRank)
    local rank = PlayerRanks[player.Name]
    if not rank then return false end
    return hierarchy[rank] >= hierarchy[requiredRank]
end

local function JailPlayer(target)
    if target.Character then
        target.Character:MoveTo(JailPart.Position)
        for _, part in pairs(target.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Anchored = true
            end
        end
    end
end

local function ReleasePlayer(target)
    if target.Character then
        for _, part in pairs(target.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Anchored = false
            end
        end
        target.Character:MoveTo(Vector3.new(0,10,0))
    end
end

-- RemoteEvent listeners
JailEvent.OnServerEvent:Connect(function(player, targetName)
    if not HasAccess(player, "Moderator") then return end
    local target = Players:FindFirstChild(targetName)
    if target then JailPlayer(target) end
end)

ReleaseEvent.OnServerEvent:Connect(function(player, targetName)
    if not HasAccess(player, "Moderator") then return end
    local target = Players:FindFirstChild(targetName)
    if target then ReleasePlayer(target) end
end)

-- Optional: chat commands
Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        local args = msg:split(" ")
        local cmd = args[1]
        local targetName = args[2]
        local target = Players:FindFirstChild(targetName)
        if not target or not cmd then return end

        if cmd == "!jail" and HasAccess(player, "Moderator") then JailPlayer(target)
        elseif cmd == "!unjail" and HasAccess(player, "Moderator") then ReleasePlayer(target)
        elseif cmd == "!tp" and HasAccess(player, "Admin") then
            if player.Character and target.Character then
                player.Character:MoveTo(target.Character.PrimaryPart.Position)
            end
        elseif cmd == "!bring" and HasAccess(player, "Admin") then
            if player.Character and target.Character then
                target.Character:MoveTo(player.Character.PrimaryPart.Position)
            end
        end
    end)
end)
