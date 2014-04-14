require 'prime'

def prime_factors(n)
	return [n] if Prime.prime?(n)
	factors = []
	Prime.each(n/2) do |p|
		if n % p == 0
			factors << p
			n = n / p
			factors << prime_factors(n)
			break
		end
	end
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

def d(n)
	factors(n).reduce(:+)
end


#puts "#{factors(220)} - #{d(220)}"

amicables = []

2.upto(10000) do |i|
	tmp = d(i)
	next if i == tmp
	amicables << i if d(tmp) == i
end

puts "#{amicables} - #{amicables.reduce(:+)}"
