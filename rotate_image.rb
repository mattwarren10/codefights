def rotateImage(a)
	b = []
	(a.length).times do |i|
		n = a.length - 1
		b << []
		(a.length).times do |j|
			b[i][j] = a[n][i]
			n -= 1
		end
	end
	b
end



a = [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]]

p rotateImage(a)

# rotate 90 degrees clockwise
# output should be 

# rotateImage(a) =
#     [[7, 4, 1],
#      [8, 5, 2],
#      [9, 6, 3]]

# 3 arrays in one array

# b[0][0] = a[2][0]
# b[0][1] = a[1][0]
# b[0][2] = a[0][0]

# b[1][0] = a[2][1]
# b[1][1] = a[1][1]
# b[1][2] = a[0][1]

# b[2][0] = a[2][2]
# b[2][1] = a[1][2]
# b[2][2] = a[0][2]
