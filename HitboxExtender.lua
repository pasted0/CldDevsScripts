
local function notification(Title,Text,Duration)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = Title,
    Text = Text,
    Duration = Duration
})
end

local cas = game:FindService("ContextActionService")




getgenv().hitbox = true

local function casfunc(actionName, inputState)
  if actionName == "enableHitboxs" and inputState == Enum.UserInputState.Begin then
      if getgenv().hitbox ~= true then
          getgenv().hitbox = true
          else
              getgenv().hitbox = false
      end
  end
end


notification("Credits", "Made by @Pasted0 on discord (CLD Devs on top)", 5)

cas:BindAction("enableHitboxs", casfunc, true, Enum.KeyCode.H)
cas:SetTitle("enableHitboxs", "Enable hitboxs!")
While task.wait() do
repeat
task.wait()
for _,v in game.Players:GetPlayers() do
if v ~= game:FindService("Players").LocalPlayer and v.Character and v.Character:WaitForChild("HumanoidRootPart") then
if getgenv().hitbox == true then
v.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(30,30,30)
v.Character:WaitForChild("HumanoidRootPart").CanCollide = false
v.Character:WaitForChild("HumanoidRootPart").Transparency = 0
else
v.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(1,2,1)
end
end
end
until not getgenv().hitbox
end
