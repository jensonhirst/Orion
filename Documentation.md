local player = game.Players.LocalPlayer

-- Hapus GUI lama jika ada
pcall(function()
	player.PlayerGui:FindFirstChild("PAPSKY_REPORT_PLAYER"):Destroy()
end)

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PAPSKY_REPORT_PLAYER"
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 450, 0, 400)
Frame.Position = UDim2.new(0.5, -225, 0.5, -200)
Frame.BackgroundColor3 = Color3.fromRGB(80,0,0)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

-- Toggle Button
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0,40,0,40)
ToggleBtn.Position = UDim2.new(0,10,0,10)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
ToggleBtn.Text = ""

local Visible = true
ToggleBtn.MouseButton1Click:Connect(function()
	Visible = not Visible
	Frame.Visible = Visible
end)

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundColor3 = Color3.fromRGB(40,0,0)
Title.Text = "PAPSKY REPORT PLAYER"
Title.TextColor3 = Color3.fromRGB(255,60,60)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 22
Title.BorderSizePixel = 0
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.TextYAlignment = Enum.TextYAlignment.Center

-- Scroll
local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = Frame
Scroll.Size = UDim2.new(1,-10,1,-50)
Scroll.Position = UDim2.new(0,5,0,45)
Scroll.CanvasSize = UDim2.new(0,0,0,0)
Scroll.ScrollBarThickness = 8
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0

local UIList = Instance.new("UIListLayout")
UIList.Parent = Scroll
UIList.Padding = UDim.new(0,6)
UIList.SortOrder = Enum.SortOrder.LayoutOrder

-- Category
local function createCategory(title)
	local Label = Instance.new("TextLabel")
	Label.Parent = Scroll
	Label.Size = UDim2.new(1,0,0,30)
	Label.BackgroundTransparency = 1
	Label.TextColor3 = Color3.fromRGB(255,180,180)
	Label.Font = Enum.Font.SourceSansBold
	Label.TextSize = 18
	Label.Text = title
	Label.TextXAlignment = Enum.TextXAlignment.Left
end

-- Report (Bisa Dicopy)
local function createReport(text)
	local Box = Instance.new("TextBox")
	Box.Parent = Scroll
	Box.Size = UDim2.new(1,0,0,55)
	Box.TextWrapped = true
	Box.Text = text
	Box.BackgroundColor3 = Color3.fromRGB(120,0,0)
	Box.TextColor3 = Color3.fromRGB(255,220,220)
	Box.Font = Enum.Font.SourceSans
	Box.TextSize = 14
	
	Box.ClearTextOnFocus = false
	Box.TextEditable = false
	Box.MultiLine = true
end

-- ===============================
-- CATEGORY: BERKENCAN / MINOR
-- ===============================
createCategory("Report Minor Safety")
createReport("I am reporting a Roblox player for engaging in inappropriate behavior involving a minor.")
createReport("This user is suspected of unsafe or inappropriate interactions with underage players.")
createReport("I witnessed behavior suggesting grooming or unsafe communication with a minor.")
createReport("This player’s behavior is not suitable for a child-friendly platform.")
createReport("Please investigate this account for serious inappropriate conduct involving minors.")

-- ===============================
-- CATEGORY: CHEAT / EXPLOIT
-- ===============================
createCategory("Report Cheat / Exploit")
createReport("I am reporting a player for using cheats or exploit scripts to gain unfair advantages.")
createReport("This user is exploiting the game and disrupting gameplay for others.")
createReport("The player is using unauthorized third-party tools or scripts.")
createReport("I observed exploit abuse that violates Roblox fair play rules.")
createReport("This report concerns cheating behavior that negatively affects the game.")

-- ===============================
-- CATEGORY: AVATAR TIDAK PANTAS
-- ===============================
createCategory("Report Inappropriate Avatar")
createReport("I am reporting a player for using inappropriate or suggestive avatar clothing.")
createReport("This avatar violates Roblox Community Standards for appropriate content.")
createReport("The player’s outfit is not suitable for a child-friendly environment.")
createReport("This avatar appears designed to attract attention inappropriately.")
createReport("Please review this avatar for inappropriate visual content.")

-- ===============================
-- CATEGORY: BAN REQUEST
-- ===============================
createCategory("Ban Player Request")
createReport("I strongly request a review and potential ban for this player due to repeated violations.")
createReport("This player has repeatedly violated community rules and should be reviewed for suspension.")
createReport("Please consider account suspension due to continuous harmful behavior.")
createReport("This user is negatively affecting the community and should face appropriate moderation action.")
createReport("I request immediate investigation and appropriate disciplinary action.")

-- Auto update scroll size
local function updateCanvas()
	Scroll.CanvasSize = UDim2.new(0,0,0,UIList.AbsoluteContentSize.Y + 10)
end

UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvas)
updateCanvas()
