local part = script.Parent

part.Touched:Connect(function (object)
	if object.Parent:FindFirstChild("Humanoid") then
		local humanoid = object.Parent:FindFirstChild("Humanoid")
		humanoid.WalkSpeed = 32
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://7229507149"
		local animationTrack = humanoid:LoadAnimation(animation)
		animationTrack:Play()
	end
end)





















