if TextBox.Text == key then
    Status.Text = "Key Accepted"
    print("Key accepted, loading mainscript.lua...")
    wait(1)
    ScreenGui:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Alskjsjsjs/alimloader/main/mainscript.lua"))()
else
    Status.Text = "Key Salah"
end
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Pastikan karakter sudah tersedia
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

-- Pastikan HumanoidRootPart tersedia
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
