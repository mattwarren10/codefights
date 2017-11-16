a = [2, 3, 3]

def firstDuplicate(a)  
  dup_idc = []
  l = (a.length/2).floor
  b = a[0..l]
  c = a[l+1..a.length-1]
  b.each_with_index do |n, i|
    (i+1..b.length-1).each do |o|
      if n == b[o]
        dup_idc << o
        break o
      end
    end
  end
  if dup_idc.empty?
  	c.each_with_index do |n, i|  		
    	(i+1..c.length).each do |o|
    		p n
    		p i
      	if n == b[i] || n == c[o]
        	dup_idc << o+l
        	break o
      	end
    	end
  	end
  end
  dup_idc.empty? ? -1 : a[dup_idc.min]
end

puts firstDuplicate(a)

# b = [2, 3]; c = [3]

# first iteration on c
# n = 3, c[o] = 3, b[i] = 