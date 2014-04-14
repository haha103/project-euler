def lattice_path(xmax, ymax)
	a = []
	0.upto(xmax) do |i|
		a[i] = [] unless a[i]
		0.upto(ymax) do |j|
			if i == 0 || j == 0
				a[i][j] = 1
			else
				a[i][j] = a[i-1][j] + a[i][j - 1]
			end
		end
	end
	a
end

n = 20

puts "#{lattice_path(n,n)[n][n]}"
