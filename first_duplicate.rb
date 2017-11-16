a = [2, 3, 3, 1, 5, 2]

def firstDuplicate(a)  
  dup_idc = []
  a.each_with_index do |n, i|
    (i+1..a.length-1).each do |o|
      if n == a[o]
        dup_idc << o
        break o
      end
    end
  end
  dup_idc.empty? ? -1 : a[dup_idc.min]
end

puts firstDuplicate(a)