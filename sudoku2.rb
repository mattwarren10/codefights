def sudoku2(grid)
	l = grid.length
	l.times do |i|
		l.times do |j|
			if grid[i][j].to_i != 0
				o = j+1
				(o..8).each do |r|
					if grid[i][j] == grid[i][r]
				p "r: grid #{i} #{j} r: #{r}"	
						return false
					else												
					end
				end
				o = i+1
				(o..8).each do |c|
					if grid[i][j] == grid[c][j]						
					p "c: grid #{i} #{j} c: #{c}"
						return false
					else						
					end
				end
			end
		end
	end
	true
end

grid = [['.', '.', '.', '.', '2', '.', '.', '9', '.'],
        ['.', '.', '.', '.', '6', '.', '.', '.', '.'],
        ['7', '1', '.', '.', '7', '5', '.', '.', '.'],
        ['.', '7', '.', '.', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '.', '8', '3', '.', '.', '.'],
        ['.', '.', '8', '.', '.', '7', '.', '6', '.'],
        ['.', '.', '.', '.', '.', '2', '.', '.', '.'],
        ['.', '1', '.', '2', '.', '.', '.', '.', '.'],
        ['.', '2', '.', '.', '3', '.', '.', '.', '.']]

puts sudoku2(grid)
