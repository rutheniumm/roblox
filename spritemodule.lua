local spr = {}
spr.__index = spr
local rs = game:GetService("RunService")
local server = rs:IsServer()
local c = os.clock

--yea i make scripts with bad piggies drip in the background
--go to this devforum post for more info and if you also do this :)
--V1.1

--[[
	Arguments:
	
	local img = ImageLabel/ImageButton
	local controller = module.NewController(img,
	{
		FPS = How many frames per second are played
		RectSize = ImageRectSize;
		Increments = Vector2.new(X increment,Y increment)
		Colums = Amount of colums
		Rows = Amount of rows
		Loop = true to loop it, false to not.
		Start = The starting imagerectoffset, make nil if you dont want a starting postion
		Ignore = {
			{Numbers of the sprite postions to ignore (etc if you put one, it skips the first one.), The colum that is where its ignored}
		}
	}
	)
	
	local img = ImageLabel/ImageButton
	local controller = module.NewControllerManual(img,
	{
		FPS = How many frames per second are played
		Data = {
			{RectOffset (optional),RectSize (optional),imagelabel size (optional)}
		}
		Loop = true to loop it, false to not.
	}
	
	Usage:
	local player = require(whatever)
	local img = script.Parent
	local anim = player.NewController(img,ismanual,{
		data
	})
	
	anim:AdjustSpeed(1) 1 is defualt, 2 is 2x the fps, has to be run before its playing
	the two below are self explanatory
	anim:Play()
	anim:Stop()
	--------------------
	anim:Update(ismanual,data) update the data
]]

function spr.NewController(image,data)
	local self = {
		img = image;
		framedata = data;
		speed = 1;
		player = nil;
		playing = false;
		start = c();
		posdatax = 0;
		posdatay = 0;
		total = 0;
	}
	return setmetatable(self,spr)
end
function spr.NewControllerManual(image,data)
	local self = {
		img = image;
		ismanual = true;
		framedata = data;
		speed = 1;
		player = nil;
		playing = false;
		start = c();
		posdatax = 0;
		posdatay = 0;
		total = 0;
	}
	return setmetatable(self,spr)
end
function spr.NewControllerImages(image,data)
	local self = {
		img = image;
		framedata = data;
		speed = 1;
		player = nil;
		playing = false;
		start = c();
		total = 0;
		isimages = true;
	}
	return setmetatable(self,spr)
end


function spr:AdjustSpeed(speed)
	assert(not self.playing,"Must be ran before animation is played.")
	assert(typeof(speed) == "number","First argument has to be a number.")
	self.speed = speed
end

function spr:Play()
	assert(not self.playing,"Animation is already playing. Use :Stop to stop the animation.")
	self.playing = true
	if self.ismanual then
		self.img.Size = self.framedata.Data[1][3]
		self.img.ImageRectOffset = self.framedata.Data[1][1]
		self.img.ImageRectSize = self.framedata.Data[1][2]
	elseif not self.ismanual and self.Start then
		self.img.ImageRectOffset = self.framedata.Start
	end
	if not self.ismanual then
		self.img.ImageRectSize = self.framedata.RectSize
	end
	self.posdatax = 0
	self.total = 0
	self.posdatay = 0
	self.start = c()
	
	self.player = rs[server and "Stepped" or "RenderStepped"]:Connect(function()
		local speed = self.speed
		local data = self.framedata
		local fps = data.FPS * speed
		local fpstime = 1/fps	
		if c() >= (self.start + fpstime) then
			self.start = c()
			self.total += 1
			if not self.isimages then
				if not self.ismanual then
					local isignored = false
					for i,v in pairs(data.Ignore)do
						if v[1] == self.total and v[2] == self.posdatay+1 then
							isignored = true
							self.start = 0
							self.posdatax += 1
							if self.posdatax >=data.Rows then 
								self.posdatax = 0
								self.posdatay += 1
								if self.posdatay>=data.Colums then
									self.posdatax = 0
									self.posdatay = 0
									self.total = 0
									if not data.Loop then
										self:Stop()
									end
								end
							end
						end
					end
					if not isignored then
						self.img.ImageRectOffset = Vector2.new(data.Increments.X * self.posdatax,data.Increments.Y * self.posdatay)
						self.posdatax += 1
						if self.posdatax >=data.Rows then 
							self.posdatax = 0
							self.posdatay += 1
							if self.posdatay>=data.Colums then
								self.posdatax = 0
								self.posdatay = 0
								self.total = 0
								if not data.Loop then
									self:Stop()
								end
							end
						end
					end
				else 
					if data.Data[self.total][1]then
						self.img.ImageRectOffset = data.Data[self.total][1]
					end
					if data.Data[self.total][2]then
						self.img.ImageRectSize = data.Data[self.total][2]
					end
					if data.Data[self.total][3]then
						self.img.Size = data.Data[self.total][3]
					end
				end
			else 
				if self.total > #data then
					self.total = 1
				end
				local img = data[self.total]
				self.img.Image = img 
			end
		end
	end)
end

function spr:Stop()
	assert(self.player,"You must start the animation first!")
	self.player:Disconnect()
	self.playing = false
end

function spr:Update(manual,data)
	self.framedata = data
	self.ismanual = manual 
end

return spr
