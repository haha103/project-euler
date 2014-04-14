# this solution is slow and should be improved.

a = []

10.upto(9999999) do |n|
	#next if n.to_s.split(//).include?("9") && n < 362886
	#next if n.to_s.split(//).include?("8") && n < 40321
	puts "#{n}" if n % 100000 == 0
	a << n if n == n.to_s.split(//).map {|x| (1..x.to_i).inject(:*) || 1 }.reduce(:+)
end

puts "#{a.reduce(:+)}"
