local player = game.Players.LocalPlayer

-- Auto collect bond item
while true do
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Bond" and v:IsA("TouchTransmitter") then
            firetouchinterest(player.Character.HumanoidRootPart, v.Parent, 0)
            firetouchinterest(player.Character.HumanoidRootPart, v.Parent, 1)
        end
    end
    task.wait(2)
end
