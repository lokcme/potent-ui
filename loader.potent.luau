-- Potent loader (executor). Usa request(), no HttpGet.
-- Sube potent-ui/src bundeado a tu host y cambia URL abajo.
-- Build wax -> single file, host raw, luego:

local URL = "https://raw.githubusercontent.com/TU_USER/potent-ui/main/potent.lua"

local Potent = loadstring(request({ Url = URL, Method = "GET" }).Body)()

local window = Potent:CreateWindow({
    name = "Potent",
    subtitle = "v1 fork Gen2",
    sidebarLayout = true
})

local tab = window:CreateTab({ name = "Home" })
tab:CreateToggle({
    name = "Auto Sprint",
    callback = function(v) print(v) end
})

return window
