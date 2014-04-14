lines = []
line = nil

File.open("22-input.txt", "r") do |f|
	line = f.gets
end

lines = line.split(",").map { |i| i.gsub(/^\"/, '').gsub(/\"$/, '') }.sort

n = 0

0.upto(lines.length - 1) do |i|
	score = (lines[i].split(//).map { |c| c.ord - "A".ord + 1 }.reduce(:+) * (i + 1))
	puts "#{lines[i]} - #{i + 1} - #{score}"
	n += score
end

puts "#{n}"
