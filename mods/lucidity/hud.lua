core.register_on_joinplayer(function(player)
	local id = player:hud_add{
		hud_elem_type = "statbar",
		text = "lucidity_eye.png",
		text2 = "lucidity_closed_eye.png",
		number = 10,
		direction = 0,
		position = { x = 0.55, y = 0.89 },
		size = { x = 30, y = 30 } 
	}
end)
