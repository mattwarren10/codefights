
def firstNotRepeatingCharacter(s)
	h = {}
	s.each_char do |l|
		if h[l].nil?
			h[l] = 0
		end
		if h.key?(l)
			h[l] += 1
		end
	end
	h.key(1) ? h.key(1) : "_"
end

s = "abadabac"
puts firstNotRepeatingCharacter(s)