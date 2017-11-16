a = [2, 3, 3, 1, 5, 2]

def firstDuplicate(a)  
  dup_idx = a.length
  a.each_with_index do |n, i|
    (i+1..a.length-1).each do |o|
      if n == a[o]
        o < dup_idx ? dup_idx = o : dup_idx
      end
    end
  end
  dup_idx == a.length ? -1 : a[dup_idx]
end

puts firstDuplicate(a)