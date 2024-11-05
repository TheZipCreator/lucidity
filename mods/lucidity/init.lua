core.register_node("lucidity:grass", {
	description = "Grass",
	tiles = {"lucidity_grass_side.png"},
	groups = {crumbly=1},
	is_ground_content = true
})

-- gets the path
function path(filename)
	return minetest.get_modpath("lucidity") .. "/" .. filename
end

dofile(path("mapgen.lua"))
