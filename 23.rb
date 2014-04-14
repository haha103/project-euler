require 'prime'

def prime_factors(n)
	#puts "#{n}"
	return [n] if Prime.prime?(n)
	#puts "#{n}"
	factors = []
	Prime.each(n/2) do |p|
		if n % p == 0
			factors << p
			n = n / p
			factors << prime_factors(n)
			break
		end
	end
	#puts "#{factors}"
	return factors.flatten
end

def factors(n)
	f = []
	pf = prime_factors(n)
	1.upto(pf.length) do |l|
		f.concat(pf.combination(l).to_a.map { |a| a.reduce(:*) })
	end
	f = [1, f].flatten.compact.uniq
	f.delete(n)
	f
end

def abundant?(n)
	a = factors(n)
  sum =	a.length > 0 ? a.reduce(:+) : 0
	sum > n
end

a = []

1.upto(28123) do |i|
	a << i if abundant?(i)
end

b = (1..28123).to_a - a.product(a).map { |i| i[0] + i[1] }.uniq

puts "#{b}"
puts "#{b.reduce(:+)}"
