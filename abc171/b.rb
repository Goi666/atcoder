n, k = gets.chomp.split.map(&:to_i)
p_ary = gets.chomp.split.map(&:to_i)
p_ary.sort!
x = []
k.times do x << p_ary.shift end

puts x.sum