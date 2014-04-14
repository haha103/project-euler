def palindrome?(n)
	s = n.to_s
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

candidates = []

100.upto(999) do |i|
	100.upto(999) do |j|
		candidates << i * j if palindrome?(i * j)
	end
end

puts "#{candidates.max}"
