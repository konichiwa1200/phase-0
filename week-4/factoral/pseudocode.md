#Release 1: Pseudocode Factoral

get #{input}

if check value == 0 || == 1
	return 1
else
	value = 0
	2..#{input}.each do |element|
		value = element * (element -1)
	end
	value
end