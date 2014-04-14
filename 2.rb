fibs = [1, 2]

n1 = 1
n2 = 2

while true
	n3 = n1 + n2
	fibs << n3
	n1 = n2
	n2 = n3
	break if n2 > 4000000
end

res = fibs.select do |i|
	i % 2 == 0
end.reduce(:+)

puts res
