local Admins = {"deltax_"}
-- Admin System Legal (untuk game buatanmu sendiri)

local Admins = {"YourUsernameHere"} -- ganti username kamu
local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")

-- Pastikan kamu punya pedang bernama "Sword" di ServerStorage

Players.PlayerAdded:Connect(function(player)
	if table.find(Admins, player.Name) then
		
		player.Chatted:Connect(function(msg)
			msg = string.lower(msg)

			-- GIVE SWORD
			if msg == "!sword" then
				if ServerStorage:FindFirstChild("Sword") then
					local swordClone = ServerStorage.Sword:Clone()
					swordClone.Parent = player.Backpack
				end
			end

			-- HEAL
			if msg == "!heal" then
				local hum = player.Character and player.Character:FindFirstChild("Humanoid")
				if hum then hum.Health = hum.MaxHealth end
			end

			-- FLY
			if msg == "!fly" then
				local char = player.Character
				if char then
					local root = char:WaitForChild("HumanoidRootPart")
					local bv = Instance.new("BodyVelocity")
					bv.Parent = root
					bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
					bv.Velocity = Vector3.new(0, 60, 0)
					game:GetService("Debris"):AddItem(bv, 2)
				end
			end

			-- JAIL
			if msg == "!jail" then
				local char = player.Character
				if char then
					local jail = Instance.new("Part")
					jail.Size = Vector3.new(21, 12, 15)
					jail.Transparency = 0.7
					jail.Anchored = true
					jail.Color = Color3.fromRGB(100, 100, 100)
					jail.Position = char.HumanoidRootPart.Position
					jail.Parent = workspace

					local mesh = Instance.new("SpecialMesh", jail)
					mesh.MeshType = Enum.MeshType.Sphere
				end
			end

			-- FIRE
			if msg == "!fire" then
				local char = player.Character
				if char then
					local fire = Instance.new("Fire")
					fire.Size = 10
					fire.Heat = 15
					fire.Parent = char:WaitForChild("HumanoidRootPart")
				end
			end

			-- FREEZE
			if msg == "!freeze" then
				local char = player.Character
				if char then
					for _, v in ipairs(char:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Anchored = true
						end
					end
				end
			end

			-- ICE (membeku + efek visual)
			if msg == "!ice" then
				local char = player.Character
				if char then
					for _, v in ipairs(char:GetDescendants()) do
						if v:IsA("BasePart") then
							local ice = Instance.new("ParticleEmitter")
							ice.Texture = "rbxassetid://284205403" -- efek es
							ice.Rate = 20
							ice.Lifetime = NumberRange.new(1)
							ice.Speed = NumberRange.new(0)
							ice.Parent = v
							game:GetService("Debris"):AddItem(ice, 3)
						end
					end
				end
			end

			-- INVISIBLE
			if msg == "!invisible" then
				local char = player.Character
				if char then
					for _, v in ipairs(char:GetDescendants()) do
						if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
							v.Transparency = 1
						end
					end
				end
			end

		end)
	end
end)
-- ESP / Highlight Legal Untuk Game Kamu Sendiri
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function addESP(character)
	if character:FindFirstChild("HumanoidRootPart") then
		local highlight = Instance.new("Highlight")
		highlight.FillColor = Color3.fromRGB(0, 255, 0)
		highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
		highlight.FillTransparency = 0.5
		highlight.Adornee = character
		highlight.Parent = character
	end
end

local function setupPlayer(player)
	player.CharacterAdded:Connect(function(char)
		task.wait(1)
		addESP(char)
	end)
end

for _, p in ipairs(Players:GetPlayers()) do
	if p ~= LocalPlayer then
		setupPlayer(p)
	end
end

Players.PlayerAdded:Connect(function(p)
	if p ~= LocalPlayer then
		setupPlayer(p)
	end
end)
