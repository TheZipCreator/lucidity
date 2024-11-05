-- gets the path
function path(filename)
	return minetest.get_modpath("lucidity") .. "/" .. filename
end

core.set_mapgen_setting("mg_name", "singlenode", true)
core.set_mapgen_setting("mg_flags", "nolight", true)
core.register_mapgen_script(path("mapgen.lua"))
dofile(path("nodes.lua"))

local digtimes = dofile(path("digtimes.lua"));

minetest.register_item(":", {
	type = "none",
	wield_image = "lucidity_hand.png",
	wield_scale = {x = 0.5, y = 1, z = 4},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {
				times = digtimes.crumbly,
				uses = 0,
				maxlevel = 1
			},
			snappy = {
				times = digtimes.snappy,
				uses = 0,
				maxlevel = 1
			},
			choppy = {
				times = digtimes.choppy
			},
			oddly_breakable_by_hand = {
				times = digtimes.oddly_breakable_by_hand,
				uses = 0
			}
		}
	}
});
