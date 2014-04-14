require 'prime'

a = []

Prime.each(2000000) do |p|
	a << p
end

puts "#{a.reduce(:+)}"
