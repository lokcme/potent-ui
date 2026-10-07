--!strict
-- Potent UI - ejemplo base (fork Rayfield Gen2, MPL-2.0)
-- Uso en Studio: pon src como ModuleScript "Potent" en ReplicatedStorage

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Potent = require(ReplicatedStorage:WaitForChild("Potent"))

local window = Potent:CreateWindow({
	name = "Potent",
	subtitle = "v1 fork Gen2",
	sidebarLayout = true,
	-- theme ya defaultea a "potent", puedes forzar: theme = "potent"
	configuration = {
		autoSave = true,
		autoLoad = true,
		fileName = "PotentConfig",
	},
})

window:CreateSection({ name = "General" })

local home = window:CreateTab({ name = "Home" })
home:CreateSection({ name = "Gameplay" })

home:CreateToggle({
	name = "Auto Sprint",
	value = true,
	callback = function(v) print("Sprint:", v) end,
})

home:CreateSlider({
	name = "Field of View",
	range = { 70, 120 },
	increment = 1,
	value = 90,
	suffix = "°",
	callback = function(v) workspace.CurrentCamera.FieldOfView = v end,
})

home:CreateButton({
	name = "Reset character",
	callback = function() game.Players.LocalPlayer.Character:BreakJoints() end,
})

window:Navigate("Home")
return window
