require 'prime'

def abs(n)
	n >= 0 ? n : (n * -1)
end

def nprimes(a, b)
	ret = 0
	0.upto(abs(a)) do |n|
		ret += 1 if Prime.prime?(n * n + a * n + b)
	end
	ret
end

def nprimes2(a, b)
	ret = 0
	0.upto(abs(a)) do |n|
		if Prime.prime?(n * n + a * n + b)
			ret += 1
		else
			return nil
		end
	end
	ret
end


max = 0
coproduct = nil

-999.upto(999) do |a|
	puts "processing a = #{a}"
	-999.upto(999) do |b|
		#puts "processing a = #{a}, b = #{b}"
		n = nprimes2(a, b)
		next unless n
		if n > max
			max = n
			coproduct = a * b
		end
	end
end

puts "#{max} - #{coproduct}"
