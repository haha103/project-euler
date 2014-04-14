def construct_matrix(n)
	if n % 2 == 0
		puts "you cannot construct a spiral matrix with even dimensions n = #{n}"
		return []
	end
	# init
	x = 1
	a = []
	0.upto(n - 1) do |i|
		a[i] = []
	end
	i = n / 2
	j = n / 2
	a[i][j] = x
	j += 1
	x += 1
	a[i][j] = x
	x += 1
	# fill it
	dir = "right"
	while i < n && j < n
		case dir
		when "right"
			if i + 1 < n && ! a[i + 1][j]
				dir = "down"
				i += 1
				a[i][j] = x
			else
				j += 1
				a[i][j] = x if j < n
			end
		when "down"
			if j - 1 >= 0 && ! a[i][j - 1]
				dir = "left"
				j -= 1
				a[i][j] = x
			else
				i += 1
				a[i][j] = x if i < n
			end
		when "left"
			if i - 1 >= 0 && ! a[i - 1][j]
				dir = "up"
				i -= 1
				a[i][j] = x
			else
				j -= 1
				a[i][j] = x if i >= 0
			end
		when "up"
			if j + 1 < n && ! a[i][j + 1]
				dir = "right"
				j += 1
				a[i][j] = x
			else
				i -= 1
				a[i][j] = x if i >= 0
			end
		else
			puts "should never be here"
		end
		x += 1
	end
	a
end

n = 1001

r = construct_matrix(n)


sum = 0

i = 0
j = 0

while i < n && j < n
	sum += r[i][j]
	i += 1
	j += 1
end

i = 0
j = n - 1

while i < n && j >= 0
	sum += r[i][j]
	i += 1
	j -= 1
end

sum -= 1

puts "#{sum}"

