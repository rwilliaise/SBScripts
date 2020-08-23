local Players = game:GetService("Players")

local Tool = Instance.new("Tool")
local Handle = Instance.new("Part")
local Mesh = Instance.new("FileMesh")
local Sound = Instance.new("Sound")
local Animation = Instance.new("Animation")
local Sounds =
{
	"32727625",
	"32727646",
	"32727664",
	"32727673"
}

Tool.Activated:Connect(function()
	if Tool.Enabled then
		local AnimationTrack = Players.THKY.Character.Humanoid:LoadAnimation(Animation)
		
		Sound.SoundId = "rbxassetid://" .. Sounds[math.random(1,#Sounds)]
		Sound:Play()
		AnimationTrack:Play()
	end
end)

--i've broken luau style guide for readability
Mesh.MeshId = "rbxassetid://32316679"
Mesh.TextureId = "rbxassetid://32316694"

Handle.Name = "Handle"
Handle.Size = Vector3.new(1,1,1)

Sound.Volume = 1

Animation.AnimationId = "rbxassetid://32729591"

Tool.Name = "Bugle"
Tool.TextureId = "rbxassetid://32316702"

Mesh.Parent = Handle
Sound.Parent = Handle
Handle.Parent = Tool
Animation.Parent = Tool
Tool.Parent = Players.THKY.Backpack
