core.register_node("lucidity:grass", {
	description = "Grass",
	tiles = {"lucidity_grass.png", "lucidity_dirt.png", "lucidity_grass_side.png", "lucidity_grass_side.png", "lucidity_grass_side.png", "lucidity_grass_side.png"},
	groups = {crumbly=2},
	is_ground_content = true
})

core.register_node("lucidity:dirt", {
	description = "Dirt",
	tiles = {"lucidity_dirt.png"},
	groups = {crumbly=2},
	is_ground_content = true
})

core.register_node("lucidity:stone", {
	description = "Stone",
	tiles = {"lucidity_stone.png"},
	groups = {cracky=2},
	is_ground_content = true
})

