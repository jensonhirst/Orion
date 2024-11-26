local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "سكربت ماب البيوت", HidePremium = false, IntroText = "BROOKHAVEN", SaveConfig = true, ConfigFolder = "M7"})
OrionLib:MakeNotification({
	Name = "شكرا على استخدامك للسكربت",
	Content = "اصبر حتى يشتغل السكربت",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Tab = Window:MakeTab({
	Name = "تحكم البيت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "فتح /قفل الشبابيك",
	Callback = function()
local args = {
    [1] = "Curtains"
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Player1sHous1e"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "فتح / قفل الكراج",
	Callback = function()
local args = {
    [1] = "GarageDoor"
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Player1sHous1e"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "فتح / قفل باب البيت",
	Callback = function()
local args = {
    [1] = "LockDoors"
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Player1sHous1e"):FireServer(unpack(args))
  	end    
})
local Section = Tab:AddSection({
	Name = "ملاحظه لازم تكون داخل بيتك عشان تحظر نفسك"
})
Tab:AddButton({
	Name = "حظر نفسك من بيتك",
	Callback = function()
local args = {
    [1] = "BanPlayerFromHouse",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "ازاله الحظر من بيتك",
	Callback = function()
local args = {
    [1] = "UnBanPlayerFromHouse",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
local Tab = Window:MakeTab({
	Name = "تحكم البيوت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "ملاحظه اذا سويت سبام كل ثانيه تضغط زر بتبلع طرد بس مو باند"
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 42",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 24
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 32",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 23
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 22",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 22
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 12",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 21
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 20",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 20
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 91",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 19
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 81",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 18
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 71",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 17
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 61",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 16
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 51",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 15
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 41",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 14
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 31",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 13
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 21",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 12
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 11",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 11
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 10",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 10
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 9",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 9
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 8",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 8
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 7",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 7
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 6",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 6
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 5",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 5
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 4",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 4
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 3",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 3
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 2",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 2
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "اعطاء نفسك تحكم في بيت رقم 1",
	Callback = function()
local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 1
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  	end    
})
local Tab = Window:MakeTab({
	Name = "ازاله التحكم من نفسك",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 42",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 24
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 32",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 23
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 22",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 22
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 12",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 21
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
local Section = Tab:AddSection({
	Name = "الطبقه الاولى"
})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 20",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 20
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 91",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 19
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 81",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 18
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 71",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 17
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 61",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 16
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 51",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 15
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 41",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 14
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 31",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 13
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 21",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 12
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 11",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 11
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
local Section = Tab:AddSection({
	Name = "الطبقه الثانيه"
})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 01",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 10
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 9",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 9
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 8",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 8
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 7",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 7
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 6",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 6
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 5",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 5
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 4",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 4
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 3",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 3
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 2 ",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 2
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
Tab:AddButton({
	Name = "ازاله من نفسك التحكم في بيت رقم 1 ",
	Callback = function()
local args = {
    [1] = "RemovePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 1
}

game:GetService("ReplicatedStorage").JK.TR:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

})
local Tab = Window:MakeTab({
	Name = "الشخصيه",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "",
	Callback = function()
      		print("button pressed")
  	end    
})
