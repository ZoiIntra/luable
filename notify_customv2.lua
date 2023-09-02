local NotificationLibrary = {}
local LuableNotifyV2GUI = Instance.new("ScreenGui"); LuableNotifyV2GUI.Name = "LuableNotifyV2"; LuableNotifyV2GUI.Parent = game.CoreGui; LuableNotifyV2GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
function NotificationLibrary:Notify(TitleText, Desc, ImageSet, Color, Delay)
    local Notification = Instance.new("Frame")
	local Line = Instance.new("Frame")
	local Icon = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Description = Instance.new("TextLabel")
	local UICorner1 = Instance.new("UICorner")
	local UICorner2 = Instance.new("UICorner")
	Notification.Name = "Notification"
	Notification.Parent = LuableNotifyV2GUI
	Notification.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(1, 5, 0, 75)
	Notification.Size = UDim2.new(0, 450, 0, 60)
	UICorner1.Name = "UICorner1"
	UICorner1.Parent = Notification
	Line.Name = "Line"
	Line.Parent = Notification
	Line.BackgroundColor3 = Color
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 0.938461304, 0)
	Line.Size = UDim2.new(0, 0, 0, 4)
	UICorner2.Name = "UICorner2"
	UICorner2.Parent = Line
	Icon.Name = "Icon"
	Icon.Parent = Notification
	Icon.BackgroundTransparency = 1.000
	Icon.Position = UDim2.new(0.0258302614, 0, 0.0897435844, 0)
	Icon.Size = UDim2.new(0, 44, 0, 49)
	Icon.Image = "rbxassetid://"..tostring(ImageSet)
	Icon.ScaleType = Enum.ScaleType.Fit
	UICorner.CornerRadius = UDim.new(0, 20)
	UICorner.Parent = Icon
	Title.Name = "Title"
	Title.Parent = Notification
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.161, 0, 0.155, 0)
	Title.Size = UDim2.new(0, 205, 0, 15)
	Title.Text = TitleText
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 12.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	local StrokeFrame = Instance.new("UIStroke")
    StrokeFrame.Name = "StrokeFrame"
    StrokeFrame.Parent = Notification
    StrokeFrame.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    StrokeFrame.Color = Color
    StrokeFrame.LineJoinMode = Enum.LineJoinMode.Round
    StrokeFrame.Thickness = 3
    StrokeFrame.Transparency = 0
    StrokeFrame.Enabled = true
    StrokeFrame.Archivable = true
	Description.Name = "Description"
	Description.Parent = Notification
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.Position = UDim2.new(0.161, 0, 0.483, 0)
	Description.Size = UDim2.new(0, 205, 0, 18)
	Description.Text = Desc
	Description.TextColor3 = Color
	Description.TextSize = 12.000
	Description.TextStrokeTransparency = 0.500
	Description.TextXAlignment = Enum.TextXAlignment.Left
	    Notification:TweenPosition(UDim2.new(1, -400, 0, 75), "Out", "Sine", 0.35)
	    wait(0.35)
	    Line:TweenSize(UDim2.new(0, 450, 0, 4), "Out", "Linear", Delay)
	    wait(Delay)
	    Notification:TweenPosition(UDim2.new(1, 5, 0, 75), "Out", "Sine", 0.35)
	    wait(0.35)
	    Notification:Destroy()
end
return NotificationLibrary
