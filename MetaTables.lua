local M = getrawmetatable(game)
local NC = M.__namecall
local RemoteLol = {"RagdollState", "LocalRagdollEvent"}
setreadonly(M,false)

M.__namecall = newcclosure(function(Remote, ...)
 local arguments = {...}
if Remote.Name == RemoteLol[1] or Remote.Name == RemoteLol[2] and _G.ToggleValue == true then
	return nil
end
return NC(Remote, ...)
end)
