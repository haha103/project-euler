def square_of_sum
	n = (1..100).to_a.reduce(:+)
	n * n
end

a = square_of_sum - (1..100).to_a.map { |i| i * i }.reduce(:+)

puts "#{a}"
