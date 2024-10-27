-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local Mini = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ChangeLogs = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Description = Instance.new("TextLabel")
local Content = Instance.new("TextLabel")
local Check = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local head = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local username = Instance.new("TextLabel")
local UserInputService = game:GetService("UserInputService")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = ScreenGui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 400, 0, 300)

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = Main

local dragging = false
local startPos, startOffset

Main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		startPos = input.Position
		startOffset = Main.Position
		ScreenGui.Active = true 
	end
end)

Main.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
		startPos = nil
		startOffset = nil
		ScreenGui.Active = false
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - startPos
		Main.Position = UDim2.new(startOffset.X.Scale, startOffset.X.Offset + delta.X, startOffset.Y.Scale,  
			startOffset.Y.Offset + delta.Y)
	end
end)

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Main
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.00999999978, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Linux N"
Title.TextColor3 = Color3.fromRGB(206, 206, 206)
Title.TextSize = 43.000

Line.Name = "Line"
Line.Parent = Main
Line.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
Line.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.100000001, 0, 0.159999996, 0)
Line.Size = UDim2.new(0, 120, 0, 5)

Mini.Name = "Mini"
Mini.Parent = Main
Mini.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Mini.BorderColor3 = Color3.fromRGB(27, 42, 53)
Mini.BorderSizePixel = 0
Mini.Position = UDim2.new(0.688000023, 0, 0.0399999991, 0)
Mini.Size = UDim2.new(0, 40, 0, 40)
Mini.Font = Enum.Font.SourceSans
Mini.Text = "-"
Mini.TextColor3 = Color3.fromRGB(195, 195, 195)
Mini.TextSize = 50.000

UICorner_2.Parent = Mini

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Exit.BorderColor3 = Color3.fromRGB(27, 42, 53)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.829999983, 0, 0.0399999991, 0)
Exit.Size = UDim2.new(0, 40, 0, 40)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "×"
Exit.TextColor3 = Color3.fromRGB(195, 195, 195)
Exit.TextSize = 35.000

UICorner_3.Parent = Exit

ChangeLogs.Name = "ChangeLogs"
ChangeLogs.Parent = Main
ChangeLogs.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
ChangeLogs.BorderColor3 = Color3.fromRGB(27, 42, 53)
ChangeLogs.BorderSizePixel = 0
ChangeLogs.Position = UDim2.new(0.100000001, 0, 0.233333334, 0)
ChangeLogs.Size = UDim2.new(0, 228, 0, 196)

UICorner_4.Parent = ChangeLogs

Description.Name = "Description"
Description.Parent = ChangeLogs
Description.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(27, 42, 53)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0.210526317, 0, -0.0340909101, 0)
Description.Size = UDim2.new(0, 131, 0, 50)
Description.Font = Enum.Font.SourceSans
Description.Text = "更新日志"
Description.TextColor3 = Color3.fromRGB(227, 227, 227)
Description.TextSize = 24.000

Content.Name = "Content"
Content.Parent = ChangeLogs
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(-0.175438598, 0, 0.107954547, 0)
Content.Size = UDim2.new(0, 200, 0, 50)
Content.Font = Enum.Font.SourceSans
Content.Text = "1.+后悔电梯 \n 2.+添加脚本\n 3.+修复窗口 \n 4.+添加脚本"
Content.TextColor3 = Color3.fromRGB(227, 227, 227)
Content.TextSize = 19.000

Check.Name = "Check"
Check.Parent = Main
Check.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
Check.BorderSizePixel = 0
Check.Position = UDim2.new(0.716000021, 0, 0.713, 0)
Check.Size = UDim2.new(0, 98, 0, 53)
Check.Font = Enum.Font.SourceSans
Check.Text = "明白!"
Check.TextColor3 = Color3.fromRGB(255, 255, 255)
Check.TextSize = 24.000

UICorner_5.Parent = Check

head.Name = "head"
head.Parent = Main
head.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
head.BorderColor3 = Color3.fromRGB(0, 0, 0)
head.BorderSizePixel = 0
head.Position = UDim2.new(0.742500007, 0, 0.283333331, 0)
head.Size = UDim2.new(0, 75, 0, 75)

UICorner_6.CornerRadius = UDim.new(0, 60)
UICorner_6.Parent = head

username.Name = "username"
username.Parent = Main
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.BackgroundTransparency = 1.000
username.BorderColor3 = Color3.fromRGB(27, 42, 53)
username.BorderSizePixel = 0
username.Position = UDim2.new(0.587499976, 0, 0.513333321, 0)
username.Size = UDim2.new(0, 200, 0, 50)
username.Font = Enum.Font.SourceSans
username.Text = tostring(game.Players.LocalPlayer.Character)
username.TextColor3 = Color3.fromRGB(231, 231, 231)
username.TextSize = 17.000

local function getPlayerHeadImage(username)
	local player = game.Players:FindFirstChild(username)
	if player then
		local character = player.Character
		if character then
			local head = character:FindFirstChild("Head")
			if head then
				return "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420"
			end
		end
	end
	return ""
end

local playerUsername = tostring(game.Players.LocalPlayer.Character)
local headImage = getPlayerHeadImage(playerUsername)
if headImage ~= "" then
	local HeadImageLabel = Instance.new("ImageLabel")
	HeadImageLabel.Name = "HeadImageLabel"
	HeadImageLabel.Parent = head
	HeadImageLabel.BackgroundTransparency = 1
	HeadImageLabel.Size = UDim2.new(1, 0, 1, 0)
	HeadImageLabel.Image = headImage
end

Check.MouseButton1Click:connect(function()
	_G.BeiqiuCenter="开启脚本"
	loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/For-your/refs/heads/main/Main-%E5%86%AC%E5%87%8C%E4%B8%AD%E5%BF%83.Lua"))()
	Main:Destroy()
end)

Exit.MouseButton1Click:connect(function()
	Main:Destroy()
end)

local isMinimized = false

Mini.MouseButton1Click:Connect(function()
	if isMinimized then
		Main.Size = UDim2.new(0, 400, 0, 300)
		Line.Position = UDim2.new(0.100000001, 0, 0.159999996, 0)
		Title.Position = UDim2.new(0, 0, 0.00999999978, 0)
		Mini.Position = UDim2.new(0.688000023, 0, 0.0399999991, 0)
		Exit.Position = UDim2.new(0.829999983, 0, 0.0399999991, 0)
		Mini.TextSize = 50.000
		Mini.Text = "-"
		isMinimized = false
		ChangeLogs.Visible = true
		head.Visible = true
		username.Visible = true
		Check.Visible = true
	else
		Main.Size = UDim2.new(0, 300, 0, 70)
		Line.Position = UDim2.new(0.130000001, 0, 0.69288886, 0)
		Title.Position = UDim2.new(0, 0, 0.04, 0)
		Mini.Position = UDim2.new(0.62000023, 0, 0.1728888631, 0)
		Exit.Position = UDim2.new(0.779999983, 0, 0.1728888631, 0)
		Mini.TextSize = 35.000
		Mini.Text = "+"
		isMinimized = true
		ChangeLogs.Visible = false
		head.Visible = false
		username.Visible = false
		Check.Visible = false
	end
end)