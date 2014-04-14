a = (1..100).to_a.reduce(:*).to_s.split(//).map { |i| i.to_i }.reduce(:+)

puts "#{a}"
