require 'prime'

def common_digit(a, b)
	aa = a.to_s.split(//)
	ab = b.to_s.split(//)
	intersection = aa & ab
	if intersection.length > 1
		#puts "can heppen but we can safely ignore it: #{a} / #{b}"
		nil
	elsif intersection.length == 1
		intersection[0]
	else
		nil
	end
end

def remove_digit(n, d)
	a = n.to_s.split(//)
	a.delete_at(a.index(d))
	a.join('').to_i
end

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

res = []

dividend = 1
divisor = 1

10.upto(99) do |a|
	10.upto(99) do |b|
		next if a >= b
		cd = common_digit(a, b)
		next unless cd
		next if cd == "0"
		#puts "#{a} / #{b}: #{cd}"
		ar = remove_digit(a, cd)
		br = remove_digit(b, cd)
		#puts "#{a} / #{b}: #{ar} / #{br}"
		#res << "#{a} / #{b}" if (Float(a) / b).to_s == (Float(ar) / br).to_s
		if (Float(a) / b).to_s == (Float(ar) / br).to_s
			dividend *= ar
			divisor *= br
		end
	end
end



puts "#{dividend} / #{divisor}"
