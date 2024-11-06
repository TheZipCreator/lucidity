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

core.register_node("lucidity:water", {
	description = "Water",
	drawtype = "liquid",
	waving = 3,
	walkable = false,
	pointable = false,
	liquidtype = "source",
	sunlight_propagates = true,
	liquid_alternative_source = "lucidity:water",
	liquid_alternative_flowing = "lucidity:flowing_water",
	liquid_viscosity = 2,
	liquid_move_physics = true,
	tiles = {"lucidity_water.png"},
})

core.register_node("lucidity:flowing_water", {
	description = "Flowing Water",
	drawtype = "liquid",
	waving = 3,
	walkable = false,
	pointable = false,
	liquidtype = "flowing",
	sunlight_propagates = true,
	liquid_alternative_source = "lucidity:water",
	liquid_alternative_flowing = "lucidity:flowing_water",
	liquid_viscosity = 2,
	liquid_move_physics = true,
	tiles = {"lucidity_water.png"},
})
