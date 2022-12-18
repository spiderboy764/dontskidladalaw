local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/trendyylol/holder/main/cattoware"))()

local window = library:CreateWindow("Ruin", Vector2.new(492, 400), Enum.KeyCode.RightBracket)
local tab = window:CreateTab("Main")
local tab2 = window:CreateTab("Rage")
local tab3 = window:CreateTab("Teleports")
local tab4 = window:CreateTab("Watermark")
local tab5 = window:CreateTab("Character")
local tab6 = window:CreateTab("Settings")
local watermark = library:CreateWatermark("Ruin v1 |{fps}| {game}")

local sector = tab:CreateSector("Silent Aim")
local toggle = sector:AddToggle("Toggle Silent", false, function(bool)
    DaHoodSettings.SilentAim = bool
end)
local toggle = sector:AddToggle("Toggle FOV", false, function(bool)
    Aiming.ShowFOV = bool
end)
local toggle = sector:AddToggle("Toggle Visible Check", false, function(bool)
    Aiming.VisibleCheck = bool
end)
local slider = sector:AddSlider("FOV Size", 0, 10, 100, 1, function(bool)
    Aiming.FOV = bool
end)
local dropdown = sector:AddDropdown("Silent Aim Part", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, "Silent Aim Part", function(value)
    Aiming.Aimpart = value
end)
local textbox = sector:AddTextbox("Prediction 0.157-0.235", "", function(bool)
    Aiming.Prediction = bool
end)

local sector3 = tab5:CreateSector("Player")
local slider = sector3:AddSlider("FOV Camera", 75, 75, 120, 1, function(text)
    workspace.CurrentCamera.FieldOfView = (text)
end)
local button = sector3:AddButton("Realistic Speed Glitch (X)", function(bool)
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == "x" then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)
end)

local button = sector3:AddButton("FLY (X)", function(bool)
    loadstring(game:HttpGet("https://pastebin.com/raw/sUA9m6M6"))()
end)

local button = sector3:AddButton("Client Sided Headless", function(bool)
    getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1
    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
end)

local button = sector3:AddButton("Client Sided Korblox", function(bool)
	local ply = game.Players.LocalPlayer
	local chr = ply.Character
	chr.RightLowerLeg.MeshId = "902942093"
	chr.RightLowerLeg.Transparency = "1"
	chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	chr.RightFoot.MeshId = "902942089"
	chr.RightFoot.Transparency = "1"
end)

local button = sector3:AddButton("Trash Talk (J)", function(bool)
    local plr = game.Players.LocalPlayer
    repeat wait() until plr.Character
    local char = plr.Character
    
    local garbage = {
        "ur bad";
        "sonney boy";
        "ez";
        "my grandma has more skill than you";
        "seed";
        "sit son";
        "trash";
        "LOL";
        "LMAO";
        "imagine being you right now";
        "xd";
        "don't try LOL";
        "you lose";
        "why do you even try";
        "I didn't think being this bad was possible";
        "leave";
        "no skill";
        "so sad man.";
        "bad";
        "you're nothing";
        "lol";
        "so trash";
        "so bad";
        "ur salty";
        "salty";
        "look he's mad";
        "cry more";
        "keep crying";
        "cry baby";
        "hahaha I won";
        "no one likes u";
        "run 1s seed";
        "thank you for your time";
        "you were so close!";
        "better luck next time!";
        "rodent";
        "HAHA";
        "ill 5-0";
        "just quit";
        "time to take out the trash";
        "did you get worse?";
        "I'm surprised you haven't quit yet";
    
    
    
    
    
    
    
    
    
    
    
    }
    
    
    function TrashTalk(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
            garbage[math.random(1,#garbage)],
            "All"
        )
        end
    end
     
    game:GetService("UserInputService").InputBegan:connect(TrashTalk)
    end)

local sector = tab3:CreateSector("Teleports")
local button = sector:AddButton("Double Barrel", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local button = sector:AddButton("Revolver", function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local button = sector:AddButton("Shotgun", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

local button = sector:AddButton("Tactical Shotgun", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end)

local button = sector:AddButton("Smg", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local button = sector:AddButton("RPG", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
end)

local button = sector:AddButton("Armor", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
end)

local button = sector:AddButton("PopCorn", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local button = sector:AddButton("Casino 1v1", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
end)

local button = sector:AddButton("Bank", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
end)

local button = sector:AddButton("Main Food", function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
end)

local sector = tab4:CreateSector("UI Settings")
local toggle = sector:AddToggle("FPS Shower", false, function(bool)
    watermark.Visible = bool
end)

local Aiming = loadstring(game:HttpGet("https://pastebin.com/raw/3A9wdSkL"))()
Aiming.TeamCheck(false)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = true,
    AimLock = false,
    Prediction = 0.157,
    AimLockKeybind = Enum.KeyCode.E
}
getgenv().DaHoodSettings = DaHoodSettings

function Aiming.Check()
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end

    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    if (KOd or Grabbed) then
        return false
    end

    return true
end

local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        local SelectedPart = Aiming.SelectedPart

        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            return (k == "Hit" and Hit or SelectedPart)
        end
    end

    return __index(t, k)
end)

RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
        local SelectedPart = Aiming.SelectedPart

        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
end)
local sector = tab2:CreateSector("Rage")
local button = sector:AddButton("Spin Bot (C)", function(bool)
    loadstring(game:HttpGet("https://pastebin.com/raw/VtD1G37T"))()
end)
local button2 = sector:AddButton("Anti-Lock (Z)", function(bool)
    local userInput = game:service('UserInputService')
    local runService = game:service('RunService')
    
    userInput.InputBegan:connect(function(Key)
        if Key.KeyCode == Enum.KeyCode.Z then
            Enabled = not Enabled
            if Enabled == true then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
                    runService.Stepped:wait()
                until Enabled == false
            end
        end
    end)
end)
local textbox = sector:AddTextbox("Anti-Lock Speed -0.10 -0.60", "", function(a)
        		
    getgenv().Multiplier = a

end, {
    ["clear"] = false,
})

local button = sector1:AddButton("FIX Anti-Lock", function(bool)
    
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:Connect(function(child)
            if child:IsA("Script") then 
                wait(0.1)
                if child:FindFirstChild("LocalScript") then
                    child.LocalScript:FireServer()
                end
            end
        end)
    end)

end)
getgenv().HideConsoleInfo = true
