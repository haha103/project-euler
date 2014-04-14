def d(n)
	i = 1
	l = 0
	res = nil
	while true
		l += i.to_s.length
		#puts "#{l} - #{i}"
		if l >= n
			res = i.to_s[i.to_s.length - (l - n) - 1].to_i
			break
		end
		i += 1
	end
	res
end

#puts "#{d(10)}"

#1.upto(30) do |i|
#	puts "#{d(i)}"
#end

res = (0..6).to_a.map { |x| d(10 ** x.to_i) }.reduce(:*)

puts "#{res}"
