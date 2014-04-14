def loop_upper_bound
	9 ** 5 * 6
end

sum = 0

2.upto(loop_upper_bound) do |n|
  s =	n.to_s.split(//).map { |d| d.to_i ** 5 }.reduce(:+)
	sum += s if s == n
end

puts "#{sum}"
