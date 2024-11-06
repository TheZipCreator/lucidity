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

core.register_node("Lucidity:wood", {
	description = "wood",
	tiles = {"lucidity_wood.png", "lucidity_wood.png", "lucidity_wood_side.png","lucidity_wood_side,png", "lucidity_wood_side.png","lucidity_wood_side,png" },
	groups = {choppy = 2},
})

core.register_node("lucidity:leaves", {
	description = "Leaves",
	tiles = {"lucidity_leaves.png"},
	groups = {crumbly = 2 },
})
core.register_node("lucidity:sand", {
	description = "sand",
	tiles = {"lucidity_sand.png"},
	groups = {crumbly = 2 },
	is_ground_content = true
})
core.register_node("lucidity:iron_ore", {
	description = "Iron ore",
	tiles = {"lucidity_iron_ore.png"},
	groups = {cracky = 2 },
})
core.register_node("lucidity:diamond_ore",{
	description = "diamond ore",
	tiles = {"lucidity_diamond_ore.png"},
	groups = {cracky = 3},
})
core.register_node("lucidity:lucigin",{
	description = "lucigin",
	tiles = {"lucidity_lucigin.png"},
	groups = {craky = 4},
})
