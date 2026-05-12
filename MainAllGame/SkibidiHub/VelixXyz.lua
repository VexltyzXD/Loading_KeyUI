--// ULTIMATE PREMIUM KEY SYSTEM
--// FULL MOBILE + PC OPTIMIZED

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

--// CONFIG
local UI_NAME = "Velix Hub"
local SCRIPT_VERSION = "v3.0"

local LOAD_SCRIPT = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/VexltyzXD/BloxFruits/refs/heads/Premium/TrueV1(BloxFruits).lua"))()'

local DISCORD_LINK = "https://discord.gg/example"
local GETKEY_LINK = "https://linkvertise.com/yourkey"

--// KEYS
local VALID_KEYS = {
	["key123"] = 3600,
	["vip456"] = 7200,
	["premium789"] = 999999,
	["owner999"] = 999999999
}

local KEY_FILE = "PremiumKeyData.json"

--// DEVICE
local isMobile = UserInputService.TouchEnabled

--// GUI
local gui = Instance.new("ScreenGui")
gui.Name = "UltimatePremiumUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player:WaitForChild("PlayerGui")

--// FPS
local FPS = 60

task.spawn(function()
	while task.wait(1) do
		FPS = math.floor(1 / RunService.RenderStepped:Wait())
	end
end)

--// RAINBOW
local Rainbow = Color3.fromRGB(255,0,0)

task.spawn(function()
	while true do
		for i = 0,1,0.01 do
			Rainbow = Color3.fromHSV(i,1,1)
			task.wait()
		end
	end
end)

--// SOUND
local click = Instance.new("Sound",gui)
click.SoundId = "rbxassetid://9118823102"
click.Volume = 1

local notifySound = Instance.new("Sound",gui)
notifySound.SoundId = "rbxassetid://4590662766"
notifySound.Volume = 1

local function Play()
	click:Play()
end

--// NOTIFY
local function Notify(text)

	notifySound:Play()

	local frame = Instance.new("Frame")
	frame.Parent = gui
	frame.Size = UDim2.new(0,320,0,40)
	frame.Position = UDim2.new(1,350,1,-70)
	frame.BackgroundColor3 = Color3.fromRGB(10,10,10)

	local stroke = Instance.new("UIStroke",frame)
	stroke.Color = Rainbow

	Instance.new("UICorner",frame)

	local label = Instance.new("TextLabel")
	label.Parent = frame
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1,0,1,0)
	label.Text = text
	label.Font = Enum.Font.GothamBold
	label.TextSize = 13
	label.TextColor3 = Color3.new(1,1,1)

	TweenService:Create(frame,TweenInfo.new(.35),{
		Position = UDim2.new(1,-330,1,-70)
	}):Play()

	task.wait(3)

	TweenService:Create(frame,TweenInfo.new(.35),{
		Position = UDim2.new(1,350,1,-70)
	}):Play()

	task.wait(.4)

	frame:Destroy()
end

Notify("Success!"..player.Name)

--// PARTICLES
local emojis = {"✨","🔥","💀","⚡","🎉","🌈"}

task.spawn(function()

	while task.wait(.08) do

		local p = Instance.new("TextLabel")
		p.Parent = gui

		p.BackgroundTransparency = 1
		p.Text = emojis[math.random(1,#emojis)]

		p.TextSize = math.random(16,26)

		p.Position = UDim2.new(math.random(),0,-0.1,0)

		p.Size = UDim2.new(0,30,0,30)

		p.TextColor3 = Rainbow

		TweenService:Create(p,TweenInfo.new(6),{
			Position = UDim2.new(p.Position.X.Scale,0,1.2,0),
			Rotation = math.random(-360,360),
			TextTransparency = 1
		}):Play()

		game.Debris:AddItem(p,6)
	end
end)

--// MAIN
local frame = Instance.new("Frame")
frame.Parent = gui

frame.Size = isMobile
	and UDim2.new(.92,0,.58,0)
	or UDim2.new(0,520,0,360)

frame.Position = UDim2.new(.5,-260,.5,-180)

frame.BackgroundColor3 = Color3.fromRGB(10,10,10)

Instance.new("UICorner",frame).CornerRadius = UDim.new(0,14)

local mainStroke = Instance.new("UIStroke",frame)
mainStroke.Thickness = 2

task.spawn(function()
	while true do
		mainStroke.Color = Rainbow
		task.wait()
	end
end)

--// TOPBAR
local top = Instance.new("Frame")
top.Parent = frame
top.Size = UDim2.new(1,0,0,45)
top.BackgroundColor3 = Color3.fromRGB(15,15,15)

Instance.new("UICorner",top).CornerRadius = UDim.new(0,14)

local title = Instance.new("TextLabel")
title.Parent = top
title.BackgroundTransparency = 1
title.Size = UDim2.new(1,0,1,0)
title.Text = UI_NAME
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBlack
title.TextSize = 18

--// CLOSE
local close = Instance.new("TextButton")
close.Parent = top
close.Size = UDim2.new(0,30,0,30)
close.Position = UDim2.new(1,-38,.5,-15)

close.Text = "X"

close.BackgroundColor3 = Color3.fromRGB(255,70,70)
close.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner",close)

--// TYPING TEXT
local typing = Instance.new("TextLabel")
typing.Parent = frame

typing.BackgroundTransparency = 1
typing.Size = UDim2.new(1,0,0,25)
typing.Position = UDim2.new(0,0,.16,0)

typing.Font = Enum.Font.GothamBold
typing.TextSize = 14
typing.TextColor3 = Color3.new(1,1,1)

local fullText = "Hello! | Blox Fruits | By Vexltyz"

task.spawn(function()

	while true do

		for i = 1,#fullText do
			typing.Text = string.sub(fullText,1,i)
			task.wait(.03)
		end

		task.wait(2)

		for i = #fullText,1,-1 do
			typing.Text = string.sub(fullText,1,i)
			task.wait(.01)
		end
	end
end)

--// KEYBOX
local keyBox = Instance.new("TextBox")
keyBox.Parent = frame

keyBox.Size = UDim2.new(.82,0,0,42)
keyBox.Position = UDim2.new(.09,0,.35,0)

keyBox.PlaceholderText = "Enter Premium Key..."
keyBox.Text = ""

keyBox.BackgroundColor3 = Color3.fromRGB(20,20,20)
keyBox.TextColor3 = Color3.new(1,1,1)

keyBox.Font = Enum.Font.GothamBold
keyBox.TextSize = 14

Instance.new("UICorner",keyBox)

local keyStroke = Instance.new("UIStroke",keyBox)

--// VERIFY
local verify = Instance.new("TextButton")
verify.Parent = frame

verify.Size = UDim2.new(.82,0,0,42)
verify.Position = UDim2.new(.09,0,.54,0)

verify.Text = "VERIFY KEY"

verify.BackgroundColor3 = Color3.fromRGB(0,170,255)
verify.TextColor3 = Color3.new(1,1,1)

verify.Font = Enum.Font.GothamBlack
verify.TextSize = 14

Instance.new("UICorner",verify)

local verifyStroke = Instance.new("UIStroke",verify)

--// DISCORD
local discord = Instance.new("TextButton")
discord.Parent = frame

discord.Size = UDim2.new(.38,0,0,32)
discord.Position = UDim2.new(.09,0,.73,0)

discord.Text = "DISCORD"

discord.BackgroundColor3 = Color3.fromRGB(88,101,242)
discord.TextColor3 = Color3.new(1,1,1)

discord.Font = Enum.Font.GothamBold

Instance.new("UICorner",discord)

--// GET KEY
local getkey = Instance.new("TextButton")
getkey.Parent = frame

getkey.Size = UDim2.new(.38,0,0,32)
getkey.Position = UDim2.new(.53,0,.73,0)

getkey.Text = "GET KEY FREE"

getkey.BackgroundColor3 = Color3.fromRGB(255,170,0)
getkey.TextColor3 = Color3.new(1,1,1)

getkey.Font = Enum.Font.GothamBold

Instance.new("UICorner",getkey)

local dStroke = Instance.new("UIStroke",discord)
local gStroke = Instance.new("UIStroke",getkey)

--// INFO
local infoFrame = Instance.new("Frame")
infoFrame.Parent = frame

infoFrame.Size = UDim2.new(.82,0,0,115)
infoFrame.Position = UDim2.new(.09,0,.84,0)

infoFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)

Instance.new("UICorner",infoFrame)

local infoStroke = Instance.new("UIStroke",infoFrame)

local info = Instance.new("TextLabel")
info.Parent = infoFrame

info.Size = UDim2.new(1,-10,1,-10)
info.Position = UDim2.new(0,5,0,5)

info.BackgroundTransparency = 1

info.TextXAlignment = Enum.TextXAlignment.Left
info.TextYAlignment = Enum.TextYAlignment.Top

info.Font = Enum.Font.Code
info.TextSize = 12
info.TextColor3 = Color3.new(1,1,1)

--// LANGUAGE
local english = true

local translate = Instance.new("TextButton")
translate.Parent = infoFrame

translate.Size = UDim2.new(0,80,0,22)
translate.Position = UDim2.new(1,-85,0,5)

translate.Text = "VIET"

translate.BackgroundColor3 = Color3.fromRGB(0,170,255)
translate.TextColor3 = Color3.new(1,1,1)

translate.Font = Enum.Font.GothamBold
translate.TextSize = 11

Instance.new("UICorner",translate)

--// RAINBOW UPDATE
task.spawn(function()

	while true do

		keyStroke.Color = Rainbow
		verifyStroke.Color = Rainbow
		dStroke.Color = Rainbow
		gStroke.Color = Rainbow
		infoStroke.Color = Rainbow

		task.wait()
	end
end)

--// KEY SYSTEM
local CurrentKey = nil
local KeyExpire = 0

local function FormatTime(seconds)

	local h = math.floor(seconds / 3600)
	local m = math.floor((seconds % 3600) / 60)
	local s = math.floor(seconds % 60)

	return string.format("%02d:%02d:%02d",h,m,s)
end

local function SaveKey(key,timeLeft)

	if writefile then

		local data = {
			Key = key,
			Expire = os.time() + timeLeft
		}

		writefile(KEY_FILE,HttpService:JSONEncode(data))
	end
end

local function LoadKey()

	if isfile and isfile(KEY_FILE) then

		local success,data = pcall(function()
			return HttpService:JSONDecode(readfile(KEY_FILE))
		end)

		if success and data then

			local remain = data.Expire - os.time()

			if remain > 0 then

				CurrentKey = data.Key
				KeyExpire = remain

				return true
			end
		end
	end

	return false
end

--// AUTO LOGIN
if LoadKey() then

	Notify("Auto Login Success!")

	task.wait(.5)

	loadstring(game:HttpGet("https://YOURSCRIPT"))()
end

--// CLIENT
local clientVersion = identifyexecutor and identifyexecutor() or "Unknown"

task.spawn(function()

	while task.wait(1) do

		local status = KeyExpire > 0 and "ACTIVE" or "NOT ACTIVE"

		if KeyExpire > 0 then
			KeyExpire -= 1
		end

		if english then

			info.Text =
				"FPS : "..FPS..
				"\nTIME : "..os.date("%X")..
				"\nUI : "..UI_NAME..
				"\nSCRIPT VERSION : "..SCRIPT_VERSION..
				"\nUSER : "..player.Name..
				"\nKEY STATUS : "..status..
				"\nKEY TIME : "..FormatTime(KeyExpire)..
				"\nCLIENT : "..clientVersion..
				"\nDEVICE : "..(isMobile and "MOBILE" or "PC")..
				"\nSCRIPT STATUS : ONLINE"

		else

			info.Text =
				"FPS : "..FPS..
				"\nTHỜI GIAN : "..os.date("%X")..
				"\nUI : "..UI_NAME..
				"\nPHIÊN BẢN : "..SCRIPT_VERSION..
				"\nNGƯỜI DÙNG : "..player.Name..
				"\nTRẠNG THÁI KEY : "..status..
				"\nTHỜI GIAN KEY : "..FormatTime(KeyExpire)..
				"\nCLIENT : "..clientVersion..
				"\nTHIẾT BỊ : "..(isMobile and "MOBILE" or "PC")..
				"\nTRẠNG THÁI SCRIPT : ONLINE"
		end

		if KeyExpire <= 0 and CurrentKey then

			Notify("Key Expired!")

			task.wait(1)

			player:Kick("Key Expired")
		end
	end
end)

--// FX
local function FX(btn)

	btn.MouseButton1Click:Connect(function()

		Play()

		local r = Instance.new("Frame")
		r.Parent = btn

		r.AnchorPoint = Vector2.new(.5,.5)
		r.Position = UDim2.new(.5,0,.5,0)

		r.Size = UDim2.new(0,0,0,0)

		r.BackgroundColor3 = Color3.new(1,1,1)
		r.BackgroundTransparency = .5

		Instance.new("UICorner",r).CornerRadius = UDim.new(1,0)

		TweenService:Create(r,TweenInfo.new(.4),{
			Size = UDim2.new(2,0,2,0),
			BackgroundTransparency = 1
		}):Play()

		game.Debris:AddItem(r,.4)
	end)
end

FX(close)
FX(verify)
FX(discord)
FX(getkey)
FX(translate)

--// CLOSE
close.MouseButton1Click:Connect(function()

	TweenService:Create(frame,TweenInfo.new(.45,Enum.EasingStyle.Back),{
		Size = UDim2.new(0,0,0,0),
		Rotation = 10,
		BackgroundTransparency = 1
	}):Play()

	task.wait(.5)

	gui.Enabled = false
end)

--// VERIFY
verify.MouseButton1Click:Connect(function()

	local keyTime = VALID_KEYS[keyBox.Text]

	if keyTime then

		CurrentKey = keyBox.Text
		KeyExpire = keyTime

		SaveKey(CurrentKey,KeyExpire)

		Notify("Valid Key! Loading Script...")

		TweenService:Create(frame,TweenInfo.new(.45,Enum.EasingStyle.Back),{
			Size = UDim2.new(0,0,0,0),
			Rotation = -10,
			BackgroundTransparency = 1
		}):Play()

		task.wait(.6)

		loadstring(game:HttpGet("https://YOURSCRIPT"))()

	else

		Notify("Invalid Key Kicked.")

		task.wait(1)

		player:Kick("Wrong Premium Key")
	end
end)

--// DISCORD
discord.MouseButton1Click:Connect(function()

	if setclipboard then
		setclipboard(DISCORD_LINK)
	end

	Notify("Discord Link Copied!")
end)

--// GET KEY
getkey.MouseButton1Click:Connect(function()

	if setclipboard then
		setclipboard(GETKEY_LINK)
	end

	Notify("Get Key Link Copied!")
end)

--// TRANSLATE
translate.MouseButton1Click:Connect(function()

	english = not english

	translate.Text = english and "VIET" or "ENG"

	Notify(english and "Language Changed To English" or "Đã Chuyển Sang Tiếng Việt")
end)

--// DRAG
local dragging
local dragStart
local startPos

top.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then

		dragging = true
		dragStart = input.Position
		startPos = frame.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)

	if dragging then

		local delta = input.Position - dragStart

		frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

UserInputService.InputEnded:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then

		dragging = false
	end
end)
--------------------------------------------------
--// ADVANCED WEBHOOK STATUS
--------------------------------------------------

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

--------------------------------------------------
--// WEBHOOK
--------------------------------------------------

local WEBHOOK =
	"https://discord.com/api/webhooks/1503653902942208091/6a4HVen7vgbeePJJNGNTdlJbbc8CvfIX1czYV0Rp3Y0VHrLy3XlhA8RClN6x5bLlmbSK"

--------------------------------------------------
--// KEY TIME
--------------------------------------------------

local KeyExpire = 3600
-- 3600 = 1 giờ

--------------------------------------------------
--// FORMAT TIME
--------------------------------------------------

local function FormatTime(seconds)

	local h = math.floor(seconds / 3600)
	local m = math.floor((seconds % 3600) / 60)
	local s = math.floor(seconds % 60)

	return string.format(
		"%02d:%02d:%02d",
		h,m,s
	)
end

--------------------------------------------------
--// SEND FUNCTION
--------------------------------------------------

local function SendWebhook()

	local gameName = "Unknown"

	pcall(function()

		gameName =
			MarketplaceService:GetProductInfo(
				game.PlaceId
			).Name
	end)

	local device =
		UserInputService.TouchEnabled
		and "Mobile"
		or "PC"

	local client =
		identifyexecutor
		and identifyexecutor()
		or "Roblox"

	local data = {

		["content"] = [[
🔥 USER OPENED PREMIUM UI

👤 USER : ]]..player.Name..[[

🎮 GAME : ]]..gameName..[[

📱 DEVICE : ]]..device..[[

💻 CLIENT : ]]..client..[[

⏳ KEY TIME LEFT : ]]..
FormatTime(KeyExpire)..[[

📡 STATUS : ONLINE
]]
	}

	local json =
		HttpService:JSONEncode(data)

	request({

		Url = WEBHOOK,

		Method = "POST",

		Headers = {

			["Content-Type"] =
				"application/json"
		},

		Body = json
	})
end

--------------------------------------------------
--// SEND
--------------------------------------------------

SendWebhook()
