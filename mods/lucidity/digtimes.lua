--- Contains base digtimes for various groups

return {
	crumbly = {3, 0.7},
	snappy = {0.4},
	choppy = {2, 0.7},
	cracky = {2, 1.5, 1},
	oddly_breakable_by_hand = {0.1},
	mul = function(self, group, multiplier)
		multiplier = 1.0/multiplier;
		local tbl = self[group];
		for i=1,#tbl do
			tbl[i] = tbl[i]*multiplier;
		end
		return tbl;
	end
}
