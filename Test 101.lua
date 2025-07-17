local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local RandomizeButton = Instance.new("TextButton")
local HideButton = Instance.new("TextButton")

-- UI Parent
ScreenGui.Name = "ZyferionHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Frame
Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.05, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 240, 0, 150)
Frame.Active = true
Frame.Draggable = true

-- Title
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Zyferion Hub - Grow A Garden ESP"
Title.TextColor3 = Color3.fromRGB(255, 60, 60)
Title.TextScaled = true
Title.BorderSizePixel = 0

-- Randomize ESP Button
RandomizeButton.Name = "RandomizeESP"
RandomizeButton.Parent = Frame
RandomizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
RandomizeButton.Position = UDim2.new(0.1, 0, 0.4, 0)
RandomizeButton.Size = UDim2.new(0.8, 0, 0, 30)
RandomizeButton.Font = Enum.Font.Gotham
RandomizeButton.Text = "🔍 Randomize ESP"
RandomizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RandomizeButton.TextScaled = true

-- Hide ESP Button
HideButton.Name = "HideESP"
HideButton.Parent = Frame
HideButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HideButton.Position = UDim2.new(0.1, 0, 0.7, 0)
HideButton.Size = UDim2.new(0.8, 0, 0, 30)
HideButton.Font = Enum.Font.Gotham
HideButton.Text = "🙈 Hide ESP"
HideButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HideButton.TextScaled = true

-- Button functionality placeholder
RandomizeButton.MouseButton1Click:Connect(function()
    print("🔍 Randomize ESP Clicked")
end)

HideButton.MouseButton1Click:Connect(function()
    print("🙈 Hide ESP Clicked")
end)
