

local perlin = PerlinNoise{
	offset = 0,
	scale = 0.25,
	spread = {x = 384, y = 384},
	octaves = 6,
	persist = 0.63,
	lacunarity = 2.0,
	seed = 100
}

local noise_multiplier = 100
local water_level = 0
local shore_size = 2

core.register_on_generated(function(vm, minp, maxp, seed)
	local nodes = {
		grass = core.get_content_id("lucidity:grass"),
		dirt = core.get_content_id("lucidity:dirt"),
		stone = core.get_content_id("lucidity:stone"),
		water = core.get_content_id("lucidity:water"),
		sand = core.get_content_id("lucidity:sand"),
	}
	local data = {}
	vm:get_data(data)
	local emin, emax = vm:get_emerged_area()
	local area = VoxelArea(emin, emax)
	for x = minp.x, maxp.x do
		for z = minp.z, maxp.z do
			local noiseval = math.floor(noise_multiplier*perlin:get_2d({x = x, y = z}))
			for y = minp.y, maxp.y do
				local vi = area:index(x, y, z)
				if y > noiseval then
					if y < water_level then
						data[vi] = nodes.water
					end
				elseif y == noiseval then
					if y < water_level+shore_size then
						data[vi] = nodes.sand
					else
						data[vi] = nodes.grass
					end
				elseif y < noiseval and y > noiseval-3 then
					data[vi] = nodes.dirt
				elseif y <= noiseval-3 then
					data[vi] = nodes.stone
				end
			end
		end
	end
	vm:set_data(data)
	vm:calc_lighting()
	vm:update_liquids()
end)
