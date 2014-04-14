i = 1
n = 0

while true
	n = n + i
	#puts "checking #{i}th -> #{n}"
	a = []
	1.upto(n / 2) do |j|
		b = n / j
		a << j if j * b == n
		#a << j if n % j == 0
	end
	puts "#{n}: #{a.length}" if a.length > 100
	if a.length > 500
		puts "#{a}"
		puts "#{n}"
		break
	end
	i += 1
end

