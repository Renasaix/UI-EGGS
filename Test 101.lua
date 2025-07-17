-- Create UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZyferionHubUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 250, 0, 150)
MainFrame.Position = UDim2.new(0, 10, 0.5, -75)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- UI Corner
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "Zyferion Hub - Grow A Garden ESP"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

-- Randomize ESP Button
local RandomizeButton = Instance.new("TextButton")
RandomizeButton.Size = UDim2.new(0.9, 0, 0, 40)
RandomizeButton.Position = UDim2.new(0.05, 0, 0, 40)
RandomizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
RandomizeButton.Text = "🔍 Randomize ESP"
RandomizeButton.TextColor3 = Color3.new(1, 1, 1)
RandomizeButton.TextScaled = true
RandomizeButton.Font = Enum.Font.GothamBold
RandomizeButton.Parent = MainFrame

-- Hide ESP Button
local HideButton = Instance.new("TextButton")
HideButton.Size = UDim2.new(0.9, 0, 0, 40)
HideButton.Position = UDim2.new(0.05, 0, 0, 90)
HideButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HideButton.Text = "🙈 Hide ESP"
HideButton.TextColor3 = Color3.new(1, 1, 1)
HideButton.TextScaled = true
HideButton.Font = Enum.Font.GothamBold
HideButton.Parent = MainFrame

-- ESP functionality placeholder
local function toggleESP(enabled)
    for _, gui in pairs(workspace:GetDescendants()) do
        if gui:IsA("BillboardGui") and gui.Name == "PetESP" then
            gui.Enabled = enabled
        end
    end
end

RandomizeButton.MouseButton1Click:Connect(function()
    toggleESP(true)
end)

HideButton.MouseButton1Click:Connect(function()
    toggleESP(false)
end)
