local esp_settings = {
    textsize = 8,
    colour = 255,255,255
}

local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui)

gui.Name = "Esp11";
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(esp_settings.colour)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(esp_settings.colour)

game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
    if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Esp11")==nil and v.TeamColor ~= game:GetService("Players").LocalPlayer.TeamColor then
          esp.Text = "{"..v.Name.."}"
          gui:Clone().Parent = v.Character.Head
    end
end
end)
