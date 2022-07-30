--[[
	A SIMPLIFIED SPRITESHEET HANDLER
	@NAME: SimpleSprite
	@AUTHOR: 0bBinary
	@VERSION: 1.01
	
	---
	
	Please do not edit the module unless you know what you're doing, okay? :)
	
	---
	
	API:
		table Handler:New(instance ImageLabel, string AssetURL, table{width,height} Size)
			This will create a new 'handler' for the spritesheet you want to use.
			ImageLabel must be an ImageLabel or an ImageButton.
			AssetURL must be a string which references an Asset. Can be either a full URL ('http://www.roblox.com/asset/?id=') or just a reference ('rbxassetid://')
			Size is a table with 2 variables; Width and Height. This will represent the SPRITESHEET SIZE rather than the IMAGELABEL size.
			
			Example: local table = handler:New(script.Parent,"http://www.roblox.com/asset/?id=5146732111",{width = 800, height = 800})
		
		bool table:Display(... ID(or Name))
			This will make the ImageLabel display that ID or the custom name, if one was given.
			Returns true if successful, returns false if unsuccessful.
			
			Example: local success = table:Display(1)
			
		bool table:SetName(int ID, string Name)
			This will add a custom name to the given sprite ID.
			Returns true if successful, returns false if unsuccessful.
			
			This will NOT protect overwrites, so watch out.
			
			Example: local success = table:SetName(1,"First Sprite")
			
		Vector2 table:GetVector(... ID(or Name))
			Returns the Vector2 of the provided ID, or nil if the ID wasn't found.
			
			Example: local vector = table:GetVector(1)
		
		-- FUNCTIONS INTRODUCED WITH VERSION 1.01
		bool table.Flipped
			Returns a true if the sprite is flipped, returns a false if the sprite is not flipped.	
		
		bool table:Flip()
			Flips the CURRENTLY displayed sprite.
			Returns a true if the sprite has been flipped, returns a false if the sprite has been un-flipped.
			
			Example: local isflipped = table:Flip()
		
		table table:CreateList(string Name)
			Creates a list, which can be an animation of sorts.
			
			Example: local list = table:CreateList("IdleLoop")
		
		table list.IDs
			Returns the SetTable ids.
		
		bool list.Running
			Returns true if the list is currently running, otherwise false.
			
		void list:SetTable(table {[1] = id, [2] = id, [3] = id, ...})
			Sets the animation to the table.
			
		void list:Run(int Speed, bool Loop)
			Runs the list as an animation.
			Speed will affect how fast or slow the animation is for this run.
			Loop will affect whether the list will be looped for this run or not.
			
		void list:Stop()
			Stops the current run at it's track.
		
		void list:Delete()
			Deletes the list.
			
		table table:GetList(string Name)
			Returns a created list.
			
			Example: local list = table:GetList("IdleLoop")
			
		void table:DeleteList(string Name)
			Deletes the list.
]]

local module = {}

function module:New(inst,asset,size)
	local tools = {
		Flipped = false,
	}
	local images = {}
	local names = {}
	local lists = {}
	local xfit = size.width/inst.Size.X.Offset
	local yfit = size.height/inst.Size.Y.Offset
	if not (inst:IsA("ImageLabel") or inst:IsA("ImageButton")) then
		return error("Instance must be an ImageLabel or an ImageButton.")
	end
	inst.Image = asset
	inst.ImageRectSize = Vector2.new(inst.Size.X.Offset,inst.Size.Y.Offset)
	inst.ImageRectOffset = Vector2.new(0,0)
	local currenty = 0
	repeat
		local currentx = 0
		repeat
			images[(currenty*yfit)+currentx+1] = Vector2.new(inst.Size.X.Offset*currentx,inst.Size.Y.Offset*currenty)
			currentx = currentx+1
		until currentx == xfit
		currenty = currenty+1
	until currenty == yfit
	function tools:Display(id)
		if images[id] then
			inst.ImageRectOffset = images[id]
			return true
		elseif names[id] then
			inst.ImageRectOffset = names[id]
			return true
		else
			return false
		end
	end
	function tools:GetVector(id)
		if images[id] then
			return images[id]
		elseif names[id] then
			return names[id]
		else
			return nil
		end
	end
	function tools:SetName(id,name)
		if images[id] then
			names[name] = images[id]
			return true
		else
			return false
		end
	end
	
	-- Version 1.01
	function tools:Flip()
		tools.flipped = not tools.flipped
		if tools.flipped then
			inst.ImageRectSize = Vector2.new(-inst.Size.X.Offset,inst.Size.Y.Offset)
		elseif not tools.flipped then
			inst.ImageRectSize = Vector2.new(inst.Size.X.Offset,inst.Size.Y.Offset)
		end
		return tools.flipped
	end
	function tools:CreateList(name)
		local list = lists[name]
		list = {
			IDs = {},
			Running = false,
		}
		
		function list:SetTable(tbl)
			list.IDs = tbl
		end
		function list:Run(speed,loop)
			list.Running = true
			if loop == true then
				local frame = 0
				repeat
					frame = frame+1
					if frame == #list.IDs then
						frame = 1
					end
					tools:Display(list.IDs[frame])
					task.wait(speed)
				until list.Running == false
			else
				local frame = 0
				repeat
					frame = frame+1
					tools:Display(list.IDs[frame])
					task.wait(speed)
				until (frame == #list.IDs or list.Running == false)
				list.Running = false
			end
		end
		function list:Stop()
			list.Running = false
		end
		function list:Delete()
			list = nil
		end
		
		return list
	end
	function tools:GetList(name)
		if lists[name] then
			return lists[name]
		else
			return nil
		end
	end
	function tools:DeleteList(name)
		if lists[name] then
			lists[name]:Stop()
			lists[name] = nil
		end
	end
	return tools
end

return
