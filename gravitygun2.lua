local Decode = loadstring(game:GetService("HttpService"):GetAsync("https://chrome-circular-crowd.glitch.me/Decoder.lua"))();


local GravityGun = Decode('AACtIQRUb29sIQROYW1lIQtHcmF2aXR5IEd1biEER3JpcAQJCw0hC0dyaXBGb3J3YXJkCkMScjTsRne/7YOEviEHR3JpcFBvcwqgkiE+6JkBvzwO2D8hCUdyaXBSaWdodAoAAIA/8NQ6NKoGbjQhBkdyaXBVcApVjzU07YOEPuxGd78hCE1lc2hQYXJ0IQZIYW5kbGUh'
..'BkNGcmFtZQQWq6whCkNhbkNvbGxpZGUCIQhDYW5Ub3VjaCEIUG9zaXRpb24KzIYTw9CeLMH2Rs7CIQRTaXplCouHGkB66eM/6QKJQCEGTWVzaElkIRdyYnhhc3NldGlkOi8vNzQ0MjY4NTU5MSEITWVzaFNpemUKMMy+QZmzjEEDKylCIQlUZXh0dXJlSUQhF3JieGFz'
..'c2V0aWQ6Ly83NDQyNjk1NjM1IQpBdHRhY2htZW50IQRDbGF3BCSsrSELT3JpZW50YXRpb24KAAAAAAAAAAAAALRCCiDTZz4Q3AE/3kEIwCEEQmVhbSELQXR0YWNobWVudDAhC0F0dGFjaG1lbnQxIQVDb2xvcigCAAAAAP9kAAAAgD//ZAAhB0VuYWJsZWQhCkZhY2VD'
..'YW1lcmEiIQ1MaWdodEVtaXNzaW9uAwAAAAAAAPA/IQhTZWdtZW50cwMAAAAAAABZQCEHVGV4dHVyZSEXcmJ4YXNzZXRpZDovLzEyNzQzODAzNjMhDFRleHR1cmVTcGVlZAMAAAAAAAAkwCEMVHJhbnNwYXJlbmN5KQQAAAAAAACAPwAAAADNzEw9AAAAAAAAAAAzM3M/'
..'AAAAAAAAAAAAAIA/AACAPwAAAAAhBldpZHRoMAMAAAAAAAAAACEGV2lkdGgxAwAAAAAAAOA/BDyrrArEm14/yCEgv95BCMApAgAAAAAAAAAAAAAAAAAAgD8AAAAAAAAAAAQ/q6wKYIPdvmBgHr+YRQjAIQlQYXJ0aWNsZXMEQqusCotsZz7RIlu+MzOzvyEPUGFydGlj'
..'bGVFbWl0dGVyIQRQdWxsKAIAAAAA/zIAAACAP/8yACEERHJhZwMAAAAAAAAkQCERRW1pc3Npb25EaXJlY3Rpb24DAAAAAAAAFEAhCExpZmV0aW1lEQAAgD4AAIA+IQxMb2NrZWRUb1BhcnQhBFJhdGUDAAAAAAAASUAhCFJvdFNwZWVkEQAANMQAADREIQhSb3RhdGlv'
..'bhEAAAAAAAC0QykCAAAAAPp+Kj8AAAAAAACAP/p+Kj8AAAAAIQVTcGVlZBHNzMw9zczMPSEXcmJ4YXNzZXRpZDovLzc0NTA3NzIyNjEpAgAAAAAAAAAAAAAAAAAAgD8AAIA/AAAAACEFQmxhc3QoAwAAAAD/qmQAAEA//2QAAACAP/9kABHNzEw+zcxMPiEOTGlnaHRJ'
..'bmZsdWVuY2UpAwAAAAAAAAAAAAAAAJqZmT4AAEBAAAAAAAAAgD8AAAAAAAAAABEAAAAAAAAAACEGU3RyaWtlKAIAAAAA/zIAAACAP//OfwMAAAAAAECPQCkDAAAAAAAAAAAAAAAAZmZmPwAAAAAAAAAAAACAPwAAgD8AAAAAAwAAAAAAAABAIQVTb3VuZCEKQ2xhd3ND'
..'bG9zZSEHU291bmRJZCEXcmJ4YXNzZXRpZDovLzc0NDk0NTQ1OTQhCUNsYXdzT3BlbiEXcmJ4YXNzZXRpZDovLzc0NDk0NTQ2NjYhBERyb3AhF3JieGFzc2V0aWQ6Ly83NDQ5NDU0NTEzIQZQaWNrdXAhF3JieGFzc2V0aWQ6Ly83NDQ5NDU0ODY5IRdyYnhhc3NldGlk'
..'Oi8vNzQ0OTQ1NDc4OCEHTGF1bmNoMSENUGxheWJhY2tTcGVlZAMAAAAAAADyPyEXcmJ4YXNzZXRpZDovLzc0NDk0MzcwNDghB0xhdW5jaDIhF3JieGFzc2V0aWQ6Ly83NDQ5NDM3MTkxIQdMYXVuY2gzIRdyYnhhc3NldGlkOi8vNzQ0OTQzNjk4OCEHTGF1bmNoNCEX'
..'cmJ4YXNzZXRpZDovLzc0NDk0MzY5MDIhB0RyeUZpcmUhF3JieGFzc2V0aWQ6Ly83NDUxMDkwNzE4IQZWb2x1bWUhB0hvbGRpbmchBkxvb3BlZCEXcmJ4YXNzZXRpZDovLzc0NDk0MjMxOTUhBFJlZWwEgKusCotsZz4AAAAAAADAwCEDWGVuIQpCcmlja0NvbG9yB/kD'
..'BIirrAb/ZAAhCE1hdGVyaWFsAwAAAAAAAHJACutME8PkcDDBiv7Owgos0lI/ZTtKP8064T8hF3JieGFzc2V0aWQ6Ly83NDQyNjg1NjkwCoEmAkEtsvlArQuLQSEOV2VsZENvbnN0cmFpbnQhBVBhcnQwIQVQYXJ0MSEJQW5pbWF0aW9uIQRJZGxlIQtBbmltYXRpb25J'
..'ZCEXcmJ4YXNzZXRpZDovLzc0NDI4MDgxMDchBUdsYXNzBJarrAMAAAAAAICYQAq1uhPDhBQuwbGey8IKacBNPnUdNj4A1xo+AwAAAEAzM9M/IRdyYnhhc3NldGlkOi8vNzQ0MjY4NTc2NQqoCv4/itvgP0wuvz8hC1JlbW90ZUV2ZW50IQZCcmlkZ2UhF3JieGFzc2V0'
..'aWQ6Ly83NDc0MTQ0ODkzIQlMaW5lRm9yY2UhBlB1bGxleSETQXBwbHlBdENlbnRlck9mTWFzcyEJTWFnbml0dWRlAwAAAAAAAHlAIRBBbGlnbk9yaWVudGF0aW9uIQdIb2xkUm90IRVSZWFjdGlvblRvcnF1ZUVuYWJsZWQhDlJlc3BvbnNpdmVuZXNzAwAAAAAAADRA'
..'IQ1BbGlnblBvc2l0aW9uIQdIb2xkUG9zAwAAAAAAAE5ACgAAgD8AAAAAAAAAAAoAAAAAAACAPwAAAAAKAACAvwAAAAAAAAAAJQEABgACAwQFBgcICQoLDA0OAQkAAg8QERITFBMVFhcYGRobHB0eHwIEAAIgECEiIxUkJQMKACgpKhMrLC0uLzAxMjM0NTY3ODk6HwID'
..'AAIgEDsVPCUFCgAoKSoTKywtLi8wMTIzNDU9Nzg5Oh8CAwACIBA+FT8lBwoAKCkqEyssLS4vMDEyMzQ1Njc4OTofAgMAAkAQQRVCQwkPAAJEKEVGR0hJKhNKSy0uTCxNTk9QUVIXU1RVMVY1V0MJDgACWChZRkdISSoTSlotLlsuTCxNME9QUVIXXFRdJQkLAAJeKF8r'
..'LC0uWy4vMDEyM2A1YTc6OWIlCQsAAl4oXyssLS5bLi8wMTIzYDVhNzo5YiUJCwACXihfKywtLlsuLzAxMjNgNWE3OjliJQkLAAJeKF8rLC0uWy4vMDEyM2A1YTc6OWJjAgIAAmRlZmMCAgACZ2VoYwICAAJpZWpjAgIAAmtlbGMCAgACRGVtYwIDAAJub3BlcWMCAwAC'
..'cm9wZXNjAgMAAnRvcGV1YwIDAAJ2b3Bld2MCAwACeGV5ei5jAgQAAnt8LGV9ei4fAgMAAn4QfxWADgELAAKBgoMQhBITFBMohYaHFYgXiRmKG4uMHAAAjwECAAKQkZIOAQoAApMQlBITFBOGlRWWF5c1mBmZG5qMHwAAmwEBAAKcjwECAAJYkZ2eAQMAAp+gLKGiowED'
	..'AAKkpSymp6gBAgACqaaqEAQmAwQnCQYmBQYnCQgmBwgnCQwmCQ0mCQ4mCQ8mCR2NHB2OAiCNHyCOAiMnGyQnGw==')[1]

---------------------------------------------------------------------------------------------------------
-- Gravity Gun
-- CloneTrooper1019
-- September 14th, 2021
---------------------------------------------------------------------------------------------------------
-- Globals
---------------------------------------------------------------------------------------------------------

local Players = game:GetService("Players")
local Debris = game:GetService("Debris")

local tool = GravityGun
local handle = tool.Handle

local holdPos = tool.HoldPos
local holdRot = tool.HoldRot

local pulley = tool.Pulley
local bridge = tool.Bridge

local particles = handle.Particles
local blast = particles.Blast
local pull = particles.Pull
local reel = handle.Reel

local equipped = false
local activated = false
local holding = false

local character: Model?
local humanoid: Humanoid?

local idleTrack: AnimationTrack?
local blastTrack: AnimationTrack?
local targetPart: ObjectValue = Instance.new("ObjectValue")

local clawsOpen: boolean = false
local closeClawsAt: number = 0
local lastBlast: number = 0

local MAX_MASS = 150

---------------------------------------------------------------------------------------------------------
-- Functions
---------------------------------------------------------------------------------------------------------

local function findChild(object: Instance, className: string, name: string)
	for _,child in pairs(object:GetChildren()) do
		if child:IsA(className) and child.Name == name then
			return child
		end
	end
end

local function getSound(name: string): Sound
	return handle[name] :: Sound
end

local function playSound(name: string)
	local sound = getSound(name)
	sound:Play()
end

local function stopSound(name: string)
	local sound = getSound(name)
	sound:Stop()
end

local function loadAnimation(name: string?)
	local anim = name and tool:FindFirstChild(name)

	if anim and anim:IsA("Animation") then
		local character = tool.Parent
		local animator = character:FindFirstChildWhichIsA("Animator", true)

		if animator then
			return animator:LoadAnimation(anim)
		end
	end
end

local function setHolding(enabled: boolean)
	if holding == enabled then
		return
	end

	holding = enabled
	tool:SetAttribute("Holding", holding)

	for _,att in pairs(handle:GetChildren()) do
		if att:IsA("Attachment") and att.Name == "Claw" then
			local beam = att:FindFirstChildOfClass("Beam")

			if beam then
				beam.Enabled = enabled
			end
		end
	end
end

local function getHolder(object: Instance)
	local heldBy = findChild(object, "ObjectValue", "_HeldBy")
	local holding = heldBy and heldBy.Value

	if holding then
		local character = holding:FindFirstAncestorOfClass("Model")
		return Players:GetPlayerFromCharacter(character)
	end
end

local function setHolder(object: Instance, value: Instance?)
	local heldBy = findChild(object, "ObjectValue", "_HeldBy")

	if not heldBy then
		heldBy = Instance.new("ObjectValue")
		heldBy.Name = "_HeldBy"
		heldBy.Parent = object
	end

	heldBy.Value = value
end

local function dropObject()
	if not holding then
		return
	end

	local a0 = pulley.Attachment0
	local part = a0 and a0.Parent

	if part then
		setHolder(part, nil)
	end

	playSound("Drop")
	stopSound("Holding")

	setHolding(false)
	pull.Enabled = false

	pulley.Attachment0 = nil
	holdPos.Attachment0 = nil
	holdRot.Attachment1 = nil
end

local function blastCannon()
	local now = os.clock()

	if (now - lastBlast) < .5 then
		return
	end

	local part: BasePart = targetPart.Value :: BasePart
	local point = tool:GetAttribute("TargetPoint")

	local character = tool.Parent
	local player = Players:GetPlayerFromCharacter(character)

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local rootPart = humanoid and humanoid.RootPart

	if holding then
		dropObject()
	end

	if not rootPart then
		return
	end

	if part and point and player then
		local cofm = findChild(part, "Attachment", "_COFM")
		local mass = part.AssemblyMass
		local clear = {}

		if cofm and mass > MAX_MASS then
			cofm = nil
		end

		if not cofm then
			local tempAtt = Instance.new("Attachment")
			tempAtt.Name = "BlastPoint"
			tempAtt.Parent = part
			tempAtt.WorldPosition = point

			Debris:AddItem(tempAtt, .25)
			cofm = tempAtt
		end

		local newBlast = blast:Clone()
		newBlast.Parent = cofm
		newBlast.ZOffset = 1
		newBlast:Emit(100)

		Debris:AddItem(newBlast, .25)

		for _,strike in pairs(particles:GetChildren()) do
			if strike:IsA("Beam") and strike.Name == "Strike" then
				strike.Attachment1 = cofm
				table.insert(clear, strike)
			end
		end

		local offset = (point - rootPart.Position).Unit
		local bv = Instance.new("BodyVelocity")

		local impulse = offset * workspace.Gravity
		impulse /= math.max(1, mass / 4)

		bv.Velocity = part.AssemblyLinearVelocity + impulse
		bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
		bv.Parent = part

		Debris:AddItem(bv, .2)
		part:SetNetworkOwner(player)

		task.delay(.25, function ()
			for _,beam in pairs(clear) do
				if beam.Attachment1 == cofm then
					beam.Attachment1 = nil
				end
			end
		end)
	end

	local launch = math.random(1, 4)
	playSound("Launch" .. launch)

	if blastTrack then
		blastTrack:Play()
	end

	blast:Emit(100)
	lastBlast = now
end

local function updatePulley()
	local target: BasePart = targetPart.Value :: BasePart

	if not target then
		return
	end

	local cofm = findChild(target, "Attachment", "_COFM")

	if not cofm then
		cofm = Instance.new("Attachment")
		cofm.Position = target.CenterOfMass

		cofm.Name = "_COFM"
		cofm.Parent = target
	end

	if pull.Enabled then
		local mass = target.AssemblyMass

		if mass <= MAX_MASS then
			local player = Players:GetPlayerFromCharacter(tool.Parent)
			target:SetNetworkOwner(player)

			pulley.Attachment0 = cofm
			pulley.Attachment1 = reel

			return
		end
	end

	pulley.Attachment0 = nil
end

local function holdObject(a0)
	if holding then
		return	
	end

	local part = a0.Parent
	targetPart.Value = part

	stopSound("Pull")
	playSound("Pickup")
	playSound("Holding")

	holdPos.Attachment0 = a0
	holdPos.Attachment1 = reel

	holdRot.Attachment0 = a0
	holdRot.Attachment1 = reel

	setHolding(true)
	setHolder(part, tool)

	closeClawsAt = math.huge
end

---------------------------------------------------------------------------------------------------------
-- Event Handlers
---------------------------------------------------------------------------------------------------------

local function onTargetPartChanged(part: Instance?)
	if not part then
		closeClawsAt = os.clock() + 1
	elseif not clawsOpen then
		playSound("ClawsOpen")
		clawsOpen = true
	end

	updatePulley()
end

local function onBridgeEvent(player: Player, event: string, ...)
	if player ~= Players:GetPlayerFromCharacter(tool.Parent) then
		return
	end

	if event == "SetTarget" then
		if holding then
			return
		end

		local target = ...

		if typeof(target) ~= "Instance" then
			targetPart.Value = nil
			return
		end

		if not target:IsA("BasePart") then
			return
		end

		local part: BasePart = target :: BasePart
		local rootPart = part.AssemblyRootPart

		if rootPart:IsGrounded() then
			return
		end

		local model: Model = rootPart:FindFirstAncestorWhichIsA("Model")
		local humanoid = model and model:FindFirstChildOfClass("Humanoid")

		if humanoid then
			return
		end

		if getHolder(rootPart) then
			return
		end

		targetPart.Value = rootPart
	elseif event == "SetTargetPoint" then
		local pos = ...

		if typeof(pos) ~= "Vector3" then
			return
		end

		tool:SetAttribute("TargetPoint", pos)
	elseif event == "StartPull" then
		if holding then
			dropObject()
			return
		end

		if pull.Enabled then
			return
		end

		pull.Enabled = true
		playSound("Pull")
		updatePulley()

		while pull.Enabled do
			local a0 = pulley.Attachment0
			local pos = a0 and a0.Parent.Position
			local dist = pos and player:DistanceFromCharacter(pos)

			if dist and dist < 20 then
				holdObject(a0)
				break
			end

			task.wait(.1)
		end
	elseif event == "StopPull" then
		if holding then
			return
		end

		pull.Enabled = false
		updatePulley()
	end
end

local function onActivated()
	local character = tool.Parent
	local player = Players:GetPlayerFromCharacter(character)

	if not player then
		return
	end

	if holding then
		blastCannon()
		return
	end

	activated = true

	while activated do
		local targetPoint = tool:GetAttribute("TargetPoint")
		local targetPart = targetPart.Value

		if targetPoint and targetPart then
			if player:DistanceFromCharacter(targetPoint) < 24 then
				blastCannon()
				task.wait(.5)

				continue
			end
		end

		local now = os.clock()

		if now - lastBlast > .5 then
			if blastTrack then
				blastTrack:Play(0.1, 0.2, 1)
			end

			playSound("DryFire")
			lastBlast = now
		end

		task.wait(.5)
	end
end

local function onDeactivated()
	activated = false
end

local function onEquipped()
	idleTrack = loadAnimation("Idle")
	blastTrack = loadAnimation("Blast")

	if idleTrack then
		idleTrack:Play(0.3)
	end

	equipped = true

	while equipped do
		if clawsOpen and targetPart.Value == nil then
			local now = os.clock()

			if now > closeClawsAt then
				clawsOpen = false
				playSound("ClawsClose")
			end
		end

		task.wait(.2)
	end
end

local function onUnequipped()
	dropObject()

	if blastTrack then
		blastTrack:Stop()
		blastTrack = nil
	end

	if idleTrack then
		idleTrack:Stop(0.3)
		idleTrack = nil
	end

	pull.Enabled = false
	clawsOpen = false
	activated = false	
	equipped = false
end

tool.Equipped:Connect(onEquipped)
tool.Unequipped:Connect(onUnequipped)

tool.Activated:Connect(onActivated)
tool.Deactivated:Connect(onDeactivated)

bridge.OnServerEvent:Connect(onBridgeEvent)
targetPart.Changed:Connect(onTargetPartChanged)

NLS([[
warn("ye")
local tool = owner.Backpack:WaitForChild("Gravity Gun",10) or owner.Character:WaitForChild("Gravity Gun",10)
local bridge = tool:WaitForChild("Bridge")
local downStart = 0

local function onButton2Down()
	if tool:GetAttribute("Holding") then
		downStart = os.clock()
	else
		bridge:FireServer("StartPull")
	end
end

local function onButton2Up()
	if tool:GetAttribute("Holding") then
		local now = os.clock()

		if (now - downStart) < 0.2 then
			bridge:FireServer("StartPull")
		end
	else
		bridge:FireServer("StopPull")
	end
end

local function onEquipped(mouse: Mouse)
	local character = tool.Parent
	local lastTarget, lastPos
	
	local function onMouseIdle()
		local pos = mouse.Hit.Position
		local target = mouse.Target

		if target and target:IsGrounded() then
			target = nil
		end
		
		if target ~= lastTarget then
			bridge:FireServer("SetTarget", target)
			lastTarget = target
		end

		if not lastPos or (pos - lastPos).Magnitude > 0.1 then
			lastPos = pos
			bridge:FireServer("SetTargetPoint", pos)
		end
	end
	
	mouse.TargetFilter = character
	mouse.Idle:Connect(onMouseIdle)
	
	mouse.Button2Down:Connect(onButton2Down)
	mouse.Button2Up:Connect(onButton2Up)
end

tool.Equipped:Connect(onEquipped)]], owner.PlayerGui)

GravityGun.Parent = owner.Backpack
