local part = script.Parent
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportModule = require(ReplicatedStorage:FindFirstChild("TeleportModule"))
local Players = game:GetService("Players")

local faseID = ID_DA_PROXIMA_FASE

part.Touched:Connect(function (object)
	if object.Parent:FindFirstChild("Humanoid") and object.Parent:FindFirstChild("Humanoid").Health == 0 then
		return
	end
	local player = Players:GetPlayerFromCharacter(object.Parent)
	if player and not player:GetAttribute("Teleporting") then
		player:SetAttribute("Teleporting", true)
		
		local teleportResult = TeleportModule.teleportWithRetry(faseID, {player})
		
		player:SetAttribute("Teleporting", nil)
		
	end
end)
