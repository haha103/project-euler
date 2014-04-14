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
	f = [1, f, n].flatten.compact.uniq
end

i = 1
n = 0

while true
	n = n + i
	a = factors(n)
	if a.length > 500
		puts "#{n}"
		break
	end
	i += 1
end
