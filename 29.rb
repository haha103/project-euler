res = []

2.upto(100) do |a|
	2.upto(100) do |b|
		res << (a ** b)
	end
end

puts "#{res.sort!.uniq!.length}"
