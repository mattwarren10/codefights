def sudoku2(grid)
	l = grid.length
	l.times do |i|
		l.times do |j|
			if grid[i][j].to_i != 0
				o = j+1
				(o..8).each do |r|
					if grid[i][j] == grid[i][r]
						return false
					end
				end
				o = i+1
				(o..8).each do |c|
					if grid[i][j] == grid[c][j]
						return false
					end
				end
			end
		end
	end
	true
end

grid = [
			 [".","4",".",".",".",".",".",".","."], 
			 [".",".","4",".",".",".",".",".","."], 
			 [".",".",".","1",".",".","7",".","."], 
			 [".",".",".",".",".",".",".",".","."], 
			 [".",".",".","3",".",".",".","6","."], 
			 [".",".",".",".",".","6",".","9","."], 
			 [".",".",".",".","1",".",".",".","."], 
			 [".",".",".",".",".",".","2",".","."], 
			 [".",".",".","8",".",".",".",".","."]]

puts sudoku2(grid)