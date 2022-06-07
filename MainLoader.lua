local Module = {}
local HttpService = game:GetService("HttpService")


setmetatable(Module, {__index = function(tbl, index, value)
pcall(function()
return loadstring(HttpService:GetAsync(string.format("https://raw.githubusercontent.com/rutheniumm/roblox/main/%s", index)))()
end)
end})  

return Module;
