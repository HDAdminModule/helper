-- // GUI TO LUA \\ --

-- // INSTANCES: 11 | SCRIPTS: 3 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.ToolUI \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["Name"] = [[ToolUI]]
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- // StarterGui.ToolUI.Insert \\ --
UI["2"] = Instance.new("TextBox", UI["1"])
UI["2"]["SelectionStart"] = 1
UI["2"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["BorderSizePixel"] = 5
UI["2"]["TextSize"] = 14
UI["2"]["Name"] = [[Insert]]
UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["2"]["BorderMode"] = Enum.BorderMode.Inset
UI["2"]["Size"] = UDim2.new(0, 200, 0, 50)
UI["2"]["Position"] = UDim2.new(0.38453, 15, 0.45549, -5)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Text"] = [[]]

-- // StarterGui.ToolUI.Insert.UIStroke \\ --
UI["3"] = Instance.new("UIStroke", UI["2"])
UI["3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

-- // StarterGui.ToolUI.Insert.EnterButton \\ --
UI["4"] = Instance.new("TextButton", UI["2"])
UI["4"]["TextWrapped"] = true
UI["4"]["BorderSizePixel"] = 0
UI["4"]["TextSize"] = 14
UI["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["TextScaled"] = true
UI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4"]["Size"] = UDim2.new(0, 174, 0, 50)
UI["4"]["Name"] = [[EnterButton]]
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Text"] = [[Enter]]
UI["4"]["Position"] = UDim2.new(0.05979, 0, 1.51607, 0)

-- // StarterGui.ToolUI.Insert.EnterButton.UIStroke \\ --
UI["5"] = Instance.new("UIStroke", UI["4"])
UI["5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["5"]["Thickness"] = 5

-- // StarterGui.ToolUI.Insert.EnterButton.LocalScript \\ --
UI["6"] = Instance.new("LocalScript", UI["4"])


-- // StarterGui.ToolUI.Insert.CloseButton \\ --
UI["7"] = Instance.new("ImageButton", UI["2"])
UI["7"]["BorderSizePixel"] = 0
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["Image"] = [[http://www.roblox.com/asset/?id=6790887263]]
UI["7"]["Size"] = UDim2.new(0, 52, 0, 51)
UI["7"]["BackgroundTransparency"] = 2
UI["7"]["Name"] = [[CloseButton]]
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Position"] = UDim2.new(1.0483, 0, -1.60551, 0)

-- // StarterGui.ToolUI.Insert.CloseButton.LocalScript \\ --
UI["8"] = Instance.new("LocalScript", UI["7"])


-- // StarterGui.ToolUI.HelpButton \\ --
UI["9"] = Instance.new("TextButton", UI["1"])
UI["9"]["TextWrapped"] = true
UI["9"]["BorderSizePixel"] = 0
UI["9"]["TextSize"] = 14
UI["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["TextScaled"] = true
UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["9"]["RichText"] = true
UI["9"]["Size"] = UDim2.new(0, 200, 0, 50)
UI["9"]["Name"] = [[HelpButton]]
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Text"] = [[Help]]
UI["9"]["Position"] = UDim2.new(0.40634, 0, 0.69541, 0)

-- // StarterGui.ToolUI.HelpButton.ImageLabel \\ --
UI["a"] = Instance.new("ImageLabel", UI["9"])
UI["a"]["Interactable"] = false
UI["a"]["BorderSizePixel"] = 0
UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["Image"] = [[http://www.roblox.com/asset/?id=19006609434]]
UI["a"]["Size"] = UDim2.new(0, 48, 0, 36)
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["Position"] = UDim2.new(0.0318, 0, 0.14, 0)

-- // StarterGui.ToolUI.HelpButton.LocalScript \\ --
UI["b"] = Instance.new("LocalScript", UI["9"])


-- // StarterGui.ToolUI.Insert.EnterButton.LocalScript \\ --
local function SCRIPT_6()
local script = UI["6"]
	script.Parent.MouseButton1Click:Connect(function() 
		game:GetService("ReplicatedStorage").NewTool:FireServer(script.Parent.Parent.Text)
	end)
end
task.spawn(SCRIPT_6)
-- // StarterGui.ToolUI.Insert.CloseButton.LocalScript \\ --
local function SCRIPT_8()
local script = UI["8"]
	local starter = game:GetService("StarterGui")
	local bindable = Instance.new("BindableFunction")
	
	function Callback(answer)
		if answer == "Yep!" then
			script.Parent.Parent.Parent:Destroy()
		elseif answer == "No" then
			print("k")
		end
	end
	
	bindable.OnInvoke = Callback
	
	script.Parent.MouseButton1Click:Connect(function()
	
	starter:SetCore("SendNotification",{
		Title = "Close GUI?",
		Text = "Are you sure you want to close GUI?",
			Icon = "http://www.roblox.com/asset/?id=15855918337",
		Duration = 10,
		Callback = bindable,
		Button1 = "Yep!",
		Button2 = "No"
	})
	end)
end
task.spawn(SCRIPT_8)
-- // StarterGui.ToolUI.HelpButton.LocalScript \\ --
local function SCRIPT_b()
local script = UI["b"]
	script.Parent.MouseButton1Click:Connect(function()
	setclipboard("https://raw.githubusercontent.com/HDAdminModule/helper/refs/heads/main/what%20weapons%3F")
		game.Players.LocalPlayer:Kick("https://raw.githubusercontent.com/HDAdminModule/helper/refs/heads/main/what%20weapons%3F")
	end)
end
task.spawn(SCRIPT_b)

return UI["1"], require;
