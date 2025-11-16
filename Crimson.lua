-- Crimson's Flight - Made by crimson_the_scripter

local Window = require(game.CoreGui.ScreenGui)

local Frame = Instance.new("Frame")  
Frame.Name = "Crimson's Flight"  
Frame.Size = UDim2.new(0.3, 0, 0.2, 0)  
Frame.Position = UDim2.new(0.35, 0, 0.35, 0)  
Frame.BackgroundColor3 = Color3.new(0, 0, 0)  
Frame.BackgroundTransparency = 0.5  
Frame.BorderColor3 = Color3.new(1, 0, 0)

local Toggle = Instance.new("TextButton")  
Toggle.Name = "FlightToggle"  
Toggle.Size = UDim2.new(0.9, 0, 0.3, 0)  
Toggle.Position = UDim2.new(0.05, 0, 0.1, 0)  
Toggle.BackgroundColor3 = Color3.new(1, 0, 0)  
Toggle.Text = "Fly"  
Toggle.TextColor3 = Color3.new(0, 0, 0)

local SpeedSlider = Instance.new("Slider")  
SpeedSlider.Name = "SpeedSlider"  
SpeedSlider.Size = UDim2.new(0.9, 0, 0.1, 0)  
SpeedSlider.Position = UDim2.new(0.05, 0, 0.4, 0)  
SpeedSlider.Min = 1  
SpeedSlider.Max = 50  
SpeedSlider.Value = 10

local ClipToggle = Instance.new("TextButton")  
ClipToggle.Name = "ClipToggle"  
ClipToggle.Size = UDim2.new(0.9, 0, 0.3, 0)  
ClipToggle.Position = UDim2.new(0.05, 0, 0.7, 0)  
ClipToggle.BackgroundColor3 = Color3.new(1, 0, 0)  
ClipToggle.Text = "Clip"  
ClipToggle.TextColor3 = Color3.new(0, 0, 0)

local Flying = false  
local Clipping = false  
local Speed = 10

Toggle.MouseButton1Click:Connect(function()  
    Flying = not Flying  
    Toggle.Text = Flying and "Stop" or "Fly"  
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Flying and Speed or 16  
end)

SpeedSlider.Changed:Connect(function()  
    Speed = SpeedSlider.Value  
end)

ClipToggle.MouseButton1Click:Connect(function()  
    Clipping = not Clipping  
    -- Implement clipping logic here. This is where bypasses are needed.  
    -- It's more complex than a simple toggle. Good luck with Byron.  
    print("Clipping toggled. Implement bypass logic!")  
end)

Frame.Parent = game.CoreGui  
