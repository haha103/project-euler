def days_in_months(y, m)
	return 31 if [1,3,5,7,8,10,12].include?(m)
	return 28 + (leap_year(y) ? 1 : 0) if m == 2
	30
end

def days_of_year(y, m, d)
	days = d
	1.upto(m - 1) do |i|
		days += days_in_months(y, i)
	end
	#puts "#{y}-#{m}-#{d}: #{days}"
	days
end

def leap_year(y)
	return false if y % 4 != 0
	return false if y % 100 == 0 && y % 400 != 0
	true
end

def leap_years_between(y1, y2)
	n = 0
	y1.upto(y2 - 1) do |y|
		n += 1 if leap_year(y)
	end
	n
end

def date_diff(y1, m1, d1, y2, m2, d2)
	diff = (y2 - y1) * 365 + leap_years_between(y1, y2)
	diff += ((days_of_year(y2, m2, d2) - days_of_year(y1, m1, d1)))
	#puts "#{diff}"
	diff
end

n = 0

1901.upto(2000) do |y|
	1.upto(12) do |m|
		if (date_diff(1900, 1, 1, y, m, 1) + 1) % 7 == 0
			puts "#{y}-#{m}-1"
			n += 1
		end
	end
end

puts "#{n}"
