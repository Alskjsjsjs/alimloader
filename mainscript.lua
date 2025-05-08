-- Cek game
if game.PlaceId ~= 17090350537 then return end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- === ESP (tampilkan nama pemain) ===
for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        local billboard = Instance.new("BillboardGui", player.Character:WaitForChild("Head"))
        billboard.Size = UDim2.new(0, 100, 0, 40)
        billboard.AlwaysOnTop = true
        billboard.Name = "ESP_Name"

        local label = Instance.new("TextLabel", billboard)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.Text = player.Name
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.TextStrokeTransparency = 0
        label.TextScaled = true
    end
end

-- Tambahkan ESP ke pemain yang baru join
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(char)
        local head = char:WaitForChild("Head")
        local billboard = Instance.new("BillboardGui", head)
        billboard.Size = UDim2.new(0, 100, 0, 40)
        billboard.AlwaysOnTop = true
        billboard.Name = "ESP_Name"

        local label = Instance.new("TextLabel", billboard)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.Text = player.Name
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.TextStrokeTransparency = 0
        label.TextScaled = true
    end)
end)

-- === Auto Collect Bond ===
RunService.RenderStepped:Connect(function()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("TouchTransmitter") and obj.Parent and obj.Parent:IsA("BasePart") and obj.Parent.Name:lower():find("bond") then
            firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj.Parent, 0)
            firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj.Parent, 1)
        end
    end
end)
