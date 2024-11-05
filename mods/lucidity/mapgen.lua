minetest.set_mapgen_setting("mg_name", "singlenode", true)
minetest.set_mapgen_setting("mg_flags", "nolight", true)

local nodes = {}
minetest.register_on_mods_loaded(function()
	nodes.grass = minetest.get_content_id("lucidity:grass")
end)

local data = {}

minetest.register_on_generated(function(minp, maxp, seed)
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge = emin, MaxEdge = emax}
	vm:get_data(data)
	for x = minp.x, maxp.x do
		for y = minp.y, maxp.y do
			for z = minp.z, maxp.z do
				local vi = area:index(x, y, z)
				data[vi] = 
			end
		end
	end
end)
