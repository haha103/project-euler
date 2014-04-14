solutions = {}

max = 0
maxp = nil

3.upto(1000) do |p|
	#puts "checking p = #{p}"
	solutions[p] = []
	1.upto((p / 2.0).ceil - 1) do |a|
		1.upto((p / 2.0).ceil  - 1) do |b|
			c = p - a - b
			#puts "#{a} - #{b} - #{c}" if p == 120
			if a ** 2 + b ** 2 == c ** 2
				solutions[p] << [a, b, c].sort
				#puts "#{a} - #{b} - #{c}" if p == 120
			end
		end
	end
	#puts "#{solutions[p].uniq}" if p == 120
	if max < solutions[p].uniq.length
		max = solutions[p].uniq.length
		maxp = p
	end
end

puts "#{maxp} - #{solutions[maxp]}"
