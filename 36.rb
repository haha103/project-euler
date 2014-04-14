def palindrome?(s)
	i = 0
	j = s.length - 1
	while true
		break if i >= j
		return false if s[i] != s[j]
		i += 1;
		j -= 1;
	end
	return true
end

a = []

0.upto(1000000) do |n|
	next if !palindrome?(n.to_s)
	next if !palindrome?(n.to_s(2))
	a << n
end

puts "#{a} - #{a.length} - #{a.reduce(:+)}"
