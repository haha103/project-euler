def collatz_seq(n)
	a = [n]
	while true
		break if n == 1
		if n % 2 == 0
			n = n / 2
		else
			n = 3 * n + 1
		end
		a << n
	end
	a
end

#puts "#{collatz_seq(1000000).length}"

m = {}

1.upto(1000000) do |n|
	m[collatz_seq(n).length] = n
	puts "#{n} finished"	if n % 10000 == 0
end

puts "#{m[m.keys.sort.last]}"
