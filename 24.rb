a = (0..9).to_a.permutation.to_a.map { |i| i.join("") }.sort

puts "#{a[1000000 - 1]}"
