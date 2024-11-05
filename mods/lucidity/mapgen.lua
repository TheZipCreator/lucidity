core.set_mapgen_setting("mg_name", "singlenode", true)
core.set_mapgen_setting("mg_flags", "nolight", true)

local nodes = {}
core.register_on_mods_loaded(function()
	nodes.grass = core.get_content_id("lucidity:grass")
end)

local data = {}

core.register_on_generated(function(minp, maxp, seed)
	local vm, emin, emax = core.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge = emin, MaxEdge = emax}
	vm:get_data(data)
	for x = minp.x, maxp.x do
		for y = minp.y, maxp.y do
			for z = minp.z, maxp.z do
				local vi = area:index(x, y, z)
				if y < 0 then
					data[vi] = nodes.grass
				end
			end
		end
	end
	vm:set_data(data)
	vm:calc_lighting()
	vm:write_to_map()
	vm:update_liquids()
end)
