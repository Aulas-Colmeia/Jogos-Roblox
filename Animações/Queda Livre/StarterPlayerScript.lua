local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://7125836271"
local playAnim = script.Parent.Humanoid:LoadAnimation(anim)


script.Parent.Humanoid.StateChanged:Connect(function(_,state)
	if state == Enum.HumanoidStateType.Landed then
		local playingAnimations = script.Parent.Humanoid:GetPlayingAnimationTracks()
		for i, track in pairs (playingAnimations) do
			track:Stop()
		end
		playAnim:Play()
	end
end)