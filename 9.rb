found = false

1.upto(1000) do |a|
	1.upto(1000 - a) do |b|
		c = 1000 - a - b
		if a * a + b * b == c * c
			puts "#{a} x #{b} x #{c} = #{a * b * c}"
			found = true
			break
		end
	end
	break if found
end
