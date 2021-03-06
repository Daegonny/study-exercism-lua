local Hamming = {}

function Hamming.compute(a,b)
	local len_a = a:len()
	local len_b = b:len()
	if len_a ~= len_b then
		return -1
	end

	local distance = 0
	for i=1,len_a do
		if a:sub(i, i) ~= b:sub(i, i) then
			distance = distance + 1
		end
	end

	return distance
end

return Hamming
