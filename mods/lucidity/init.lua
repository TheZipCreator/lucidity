core.register_node("lucidity:grass", {
	description = "Grass",
	tiles = {"lucidity_grass.png"},
	groups = {"crumbly"},
	is_ground_content = true
})

-- gets the path
function path(filename)
	return minetest.get_modpath("lucidity") .. "/" .. filename
end

dofile(path("mapgen.lua"))
