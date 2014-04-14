def get_words(n)
	m = {
		0 => [ "zero", "ten" ],
		1 => [ "one", "eleven" ],
		2 => [ "two", "twelve", "twenty" ],
		3 => [ "three", "thirteen", "thirty" ],
		4 => [ "four", "fourteen", "forty" ],
		5 => [ "five", "fifteen", "fifty" ],
		6 => [ "six", "sixteen", "sixty" ],
		7 => [ "seven", "seventeen", "seventy" ],
		8 => [ "eight", "eighteen", "eighty" ],
		9 => [ "nine", "nineteen", "ninety" ]
	}
	if n < 10
		return m[n][0]
	elsif n < 20
		hi = n.to_s.split(//).first.to_i
		tmp = n - hi * 10
		return m[tmp][1]
	elsif n < 100
		hi = n.to_s.split(//).first.to_i
		tmp = n - hi * 10
		ret = m[hi][2]
		ret += "" + get_words(tmp) if tmp != 0
		return  ret
	elsif n < 1000
		hi = n.to_s.split(//).first.to_i
		re = n - hi * 100
		ret = get_words(hi) + "hundred"
		ret += "and" + get_words(re) if re != 0
		return ret
	elsif n == 1000
		return "onethousand"
	end 
end

a = (1..1000).to_a.map { |i| get_words(i).length }.reduce(:+)

puts "#{a}"


#puts "#{get_words(115).length}"
