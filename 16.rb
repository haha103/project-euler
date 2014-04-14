a = (2 ** 1000).to_s.split(//).map { |d| d.to_i }.reduce(:+)

puts "#{a}"
