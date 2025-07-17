local player = game:GetService("Players").LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Destroy existing if re-executed
if gui:FindFirstChild("ZyferionHubUI") then
    gui:FindFirstChild("ZyferionHubUI"):Destroy()
end

-- Create UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZyferionHubUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = gui

local Frame = Instance.new("Frame")
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(0, 260, 0, 160)
Frame.Position = UDim2.new(0.05, 0, 0.3, 0)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 32)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.TextColor3 = Color3.fromRGB(255, 65, 65)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.Text = "Zyferion Hub - Grow A Garden ESP"
Title.Parent = Frame

local RandomizeBtn = Instance.new("TextButton")
RandomizeBtn.Size = UDim2.new(0.8, 0, 0, 35)
RandomizeBtn.Position = UDim2.new(0.1, 0, 0.45, 0)
RandomizeBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
RandomizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
RandomizeBtn.Font = Enum.Font.Gotham
RandomizeBtn.TextScaled = true
RandomizeBtn.Text = "🔍 Randomize ESP"
RandomizeBtn.Parent = Frame

local HideBtn = Instance.new("TextButton")
HideBtn.Size = UDim2.new(0.8, 0, 0, 35)
HideBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
HideBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
HideBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HideBtn.Font = Enum.Font.Gotham
HideBtn.TextScaled = true
HideBtn.Text = "🙈 Hide ESP"
HideBtn.Parent = Frame

-- Basic button feedback
RandomizeBtn.MouseButton1Click:Connect(function()
    warn("🔍 Randomize ESP clicked")
end)

HideBtn.MouseButton1Click:Connect(function()
    warn("🙈 Hide ESP clicked")
end)
