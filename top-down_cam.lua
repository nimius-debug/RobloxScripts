local cam = workspace.CurrentCamera
local player = game:GetService("Players").LocalPlayer
local char = player.CharacterAdded:Wait()
local HumanoidRootPart = char:WaitForChild("HumanoidRootPart")

cam.CameraType = Enum.CameraType.Scriptable
cam.FieldOfView = 100

--local cameraPart = Instance.new("Part")
--cameraPart.Transparency = 1
--cameraPart.CanCollide = false
--cameraPart.Parent = workspace



--local bodyPosition = Instance.new("BodyPosition")
--bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
--bodyPosition.Parent = cameraPart

local function topdowncam()
	
	--bodyPosition.Position = HumanoidRootPart.Position + Vector3.new(0, 20, 0)
	cam.CFrame = CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 20, 0), HumanoidRootPart.Position)
end

game:GetService("RunService").RenderStepped:Connect(topdowncam)