a = [1, 2, 5, 10, 20, 50, 100, 200]

b = a.reduce(:*)

res = [[0, 0, 0, 0, 0, 0, 0, 1]]

sum = 1

i = 0

r = 200

0.upto(2) do |pp1|
	r100 = (200 - pp1 * 100)
	p50_limit = r100 / 50
	0.upto(p50_limit) do |p50|
		r50 = r100 - p50 * 50
		p20_limit = r50 / 20
		0.upto(p20_limit) do |p20|
			r20 = r50 - p20 * 20
			p10_limit = r20 / 10
			0.upto(p10_limit) do |p10|
				r10 = r20 - p10 * 10
				p5_limit = r10 / 5
				0.upto(p5_limit) do |p5|
					r5 = r10 - p5 * 5
					p2_limit = r5 / 2
					0.upto(p2_limit) do |p2|
						r2 = r5 - p2 * 2
						p1_limit = r2
						0.upto(p1_limit) do |p1|
							if (p1 + 2 * p2 + 5 * p5 + 10 * p10 + 20 * p20 + 50 * p50 + 100 * pp1 == 200)
								#res << [p1,p2,p5,p10,p20,p50,pp1,0]
								sum += 1
							end
						end
					end
				end
			end
		end
	end
end

puts "#{sum}"
