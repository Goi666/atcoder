# n = gets.chomp.to_i
# tmp = []
# res = 0
# n.times do
#   tmp << gets.chomp.split.map(&:to_i)
# end

# tmp_res = []
# tmp.each do |v|
#   a = v[0].to_i
#   b = v[1].to_i
#   tmp_res << [*a..b]
# end

# res = tmp_res.flatten.sum

# p res

# ↓Answer
n = gets.chomp.to_i
sum = 0
 
n.times.map{
	a, b = gets.split.map(&:to_i)
	sum += (a+b)*(b-a+1)/2
}
 
puts sum