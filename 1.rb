res = (1..999).to_a.select do |a|
	a % 3 == 0 || a % 5 == 0
end.reduce(:+)

puts res
