require 'prime'

a = [2, 5]

Prime.each(1000000) do |p|
	next if p.to_s.split(//).map do |x|
		xx = x.to_i
		xx == 1 || xx == 3 || xx == 7 || xx == 9 ? nil : xx
	end.compact.length > 0
	#puts "#{p}"
	ok = true
	pa = p.to_s.split(//)
	1.upto(pa.length - 1) do |i|
		p1 = pa.rotate(i).join('').to_i
		unless Prime.prime?(p1)
			ok = false
			break
		end
	end
	a << p if ok
end

puts "#{a.length}"
