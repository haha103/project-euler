f1 = 1
f2 = 1
f3 = nil
n = 2

while true
	f3 = f1 + f2
	n += 1
	break if f3.to_s.length >= 1000
	f1 = f2
	f2 = f3
end

puts "#{f1.to_s.length}"
puts "#{f2.to_s.length}"

puts "#{f3.to_s.length}"
puts "#{f3}"
puts "#{n}"
