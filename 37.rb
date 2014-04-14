require 'prime'

a = []

n = 10

while true
	n += 1
	next unless Prime.prime?(n)
	puts "#{n}"
	# left to right
	s = n.to_s
	ok = true
	1.upto(s.length - 1) do |i|
		unless Prime.prime?(s[i..-1].to_i)
			ok = false
			break
		end
	end
	next unless ok
	# right to left
	ok = true
	(s.length - 2).downto(0) do |i|
		unless Prime.prime?(s[0..i].to_i)
			ok = false
			break
		end
	end
	next unless ok
	a << n
	break if a.length >= 11
end

puts "#{a} - #{a.length} - #{a.reduce(:+)}"
