loadstring([[
local player = game:GetService("Players").LocalPlayer
if not player then return end

local character = player.Character or player.CharacterAdded:Wait()

-- R6 check
if not character:FindFirstChild("Torso") then
	warn("R6 only")
	return
end

local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://507771019" -- replace with your rat dance animation ID

local track = humanoid:LoadAnimation(animation)
track:Play()
]])()
