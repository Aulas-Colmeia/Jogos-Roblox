local part = script.Parent

part.Touched:Connect(function (object)
	if object.Parent:FindFirstChild("Humanoid") then
		local humanoid = object.Parent:FindFirstChild("Humanoid")
		humanoid.Health = 0
	end
end)