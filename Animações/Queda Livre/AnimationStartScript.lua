local part = script.Parent

part.Touched:Connect(function (object)
	if object.Parent:FindFirstChild("Humanoid") then
		local humanoid = object.Parent:FindFirstChild("Humanoid")
		local startDiveAnimation = Instance.new("Animation")
		startDiveAnimation.AnimationId = "rbxassetid://7125657258"
		local animationTrack = humanoid:LoadAnimation(startDiveAnimation)
		animationTrack:Play()
		animationTrack.Stopped:Connect(function()
			animationTrack:AdjustSpeed(0)
			animationTrack.TimePosition = animationTrack.Length
		end)
	end
end)
