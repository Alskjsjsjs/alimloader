if game.PlaceId ~= 17090350537 then
    game.Players.LocalPlayer:Kick("Script ini hanya untuk game Dead Rails.")
    return
end

-- UI Login dengan key check
local key = "Alimkey"
local player = game.Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
ScreenGui.Name = "LoginUI"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

local TextBox = Instance.new("TextBox", Frame)
TextBox.PlaceholderText = "Enter Key"
TextBox.Size = UDim2.new(1, -20, 0, 40)
TextBox.Position = UDim2.new(0, 10, 0, 20)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.ClearTextOnFocus = false

local Status = Instance.new("TextLabel", Frame)
Status.Size = UDim2.new(1, -20, 0, 30)
Status.Position = UDim2.new(0, 10, 0, 70)
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.fromRGB(255, 0, 0)
Status.Text = ""

-- Auto submit when key is entered
TextBox.FocusLost:Connect(function(enter)
    if enter then
        if TextBox.Text == key then
            Status.Text = "Key Accepted"
            wait(1)
            ScreenGui:Destroy()
            -- Muat script utama di sini:
            loadstring(game:HttpGet("https://raw.githubusercontent.com/username/repo/main/mainscript.lua"))()
        else
            Status.Text = "Key Salah"
        end
    end
end)
