local HttpService = game:GetService("HttpService")
local Loader = {}

Loader.import = function(index)
	pcall(function()
		return loadstring(HttpService:GetAsync(string.format("https://raw.githubusercontent.com/rutheniumm/roblox/main/%s", index)))();
	end)
end

return Loader 
