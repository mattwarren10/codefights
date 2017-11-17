a = [2, 3, 3]

def firstDuplicate(a)
	b = {}
  0.upto(a.length-1) do |i|
  	if b.include?(a[i])
  		b[a[i]] += 1  	
  	else
  		b[a[i]] = 1
  	end
  	if b[a[i]] == 2
  		return a[i]
  	end
  end
  -1
end

puts firstDuplicate(a)
