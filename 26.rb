def long_division(d, n)
	res = ""
	m = { }
	da = d.to_s.split(//)
	d1 = da.shift.to_i
	fraction = false
	while res.length <= 2 * n
		break if fraction && m.has_key?(d1)
		q = d1 / n
		r = d1 % n
		#puts "#{d1}, #{q}, #{r}"
		res += q.to_s if q != 0 || fraction
		m[d1] = res if fraction
		if da.length == 0
			res += "." unless fraction
			fraction = true
			d1 = r * 10
		else
			d1 = (r.to_s + da.shift.to_s).to_i
		end
	end
	res
end


max = 0
n = nil

1.upto(999) do |i|
	len = long_division(1, i).length
	if max < len
		max = len
		n = i
	end
end

puts "#{n}: #{max}"

#puts "#{long_division(1,83)}"
