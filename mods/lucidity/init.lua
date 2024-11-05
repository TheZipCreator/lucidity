core.register_node("lucidity:grass", {
	description = "Grass",
	tiles = {"lucidity_grass.png"},
	groups = {"crumbly"}
})

-- gets the path
function path(filename)
	return minetest.get_modpath("lucidity") .. "/" .. filename
end

dofile(path("mapgen.lua"))
