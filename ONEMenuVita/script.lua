--[[ 
	ONEMenu
	Application, themes and files manager.
	
	Licensed by Creative Commons Attribution-ShareAlike 4.0
	http://creativecommons.org/licenses/by-sa/4.0/
	
	Designed By Gdljjrod & DevDavisNunez.
	Collaborators: BaltazaR4 & Wzjk.
]]

game.close()

dofile("system/utils.lua") 									-- Inicializar vars Globlals
dofile("system/themes.lua")									-- Load Theme Application

--Show splash ...
if theme.data["splash"] then
	theme.data["splash"]:blit(0,0)
	screen.flip()
end

local wstrength = wlan.strength()
if wstrength then
	if wstrength > 55 then dofile("git/updater.lua") end
end

dofile("system/swipeLib.lua")
dofile("system/stars.lua")									-- stars...stars...

dofile("system/appman.lua")									-- Load AppManager
appman.scan()

dofile("system/explorer/commons.lua")						-- Load Functions Commons (Funciones comunes para el Explorador de Archivos)
dofile("system/explorer/explorer.lua")						-- Load Explorer File
dofile("system/explorer/callbacks.lua")						-- Load Callbacks

--dofile("system/plugman.lua")								-- Load PluginsManager in WIP

dofile("system/menu.lua")
dofile("system/scan.lua")									-- Load Search vpks 
dofile("system/customtheme.lua")							-- Load Manager of livearea themes...
dofile("system/advanced.lua")								-- Load Advanced Options
dofile("system/system.lua")									-- System Apps
dofile("system/favorites.lua")								-- Secction Favorites

appman.launch()												-- Main Cycle :D

