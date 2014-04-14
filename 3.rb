require 'prime'

n = 600851475143

max = n / 2

2.upto(max) do |i|
	a = n / i
	if n % a == 0 && Prime.prime?(a)
		puts a
		break
	end
end
