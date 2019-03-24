Hooks:PostHook(HUDManager, "set_teammate_custom_radial", "PlySwanSongOuttaCompton", function(self, i, data)
	local peer = managers.network and managers.network:session():peer(i) or nil
		local hud = managers.hud:script(PlayerBase.PLAYER_INFO_HUD_FULLSCREEN_PD2)
		if hud and hud.panel then
			if data and data.current and data.total then
				if PackageManager:has(Idstring("movie"), Idstring("SwanSongOuttaCompton")) then
					if not alive(hud.panel:child("ids_SwanSongOuttaCompton")) then
						hud.panel:video({
							name = "ids_SwanSongOuttaCompton",
							video = "SwanSongOuttaCompton",
							visible = false,
							loop = true,
						}):set_volume_gain(1)
					end
				end
				if data.current <= 0 or data.current/data.total <= 0 then
					if alive(hud.panel:child("ids_SwanSongOuttaCompton")) then
						hud.panel:remove(hud.panel:child("ids_SwanSongOuttaCompton"))
					end
				end
			end
		end
end)