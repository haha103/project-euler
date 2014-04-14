def pandigital9(n)
	n.to_s.split(//).sort.join("").to_i == 123456789
end

a = []

sums = []

1.upto(9999) do |n|
	puts "#{n}" if n % 100000 == 0
	i = 0
	sum = ""
	ok = false
	while true
		i += 1
		sum += (n * i).to_s
		#puts "#{sum}"
		break if sum.length > 9
		next unless sum.length == 9
		if pandigital9(sum.to_i)
			a << n
			sums << sum.to_i
			break
		end
	end
end

#puts "#{a} - #{a.length} - #{a.reduce(:+)}"
puts "#{sums} - #{sums.sort.last}"
