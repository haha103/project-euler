n = 9
res = []

(1..n).to_a.permutation do |p|
	a = p[0].to_i
	b = p[1..4].join('').to_i
	c = p[5..8].join('').to_i
	a1 = p[0..1].join('').to_i
	b1 = p[2..4].join('').to_i
	res << c if a1 * b1 == c || a * b == c
	#res << "#{a1} x #{b1} = #{c}" if a1 * b1 == c
	#res << "#{a} x #{b} = #{c}" if a * b == c
	#res << "#{a2} x #{b2} = #{c}" if a2 * b2 == c
end

#puts "#{res.reduce(:+)}"
puts "#{res.uniq.reduce(:+)}"

