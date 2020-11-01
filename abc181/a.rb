# a,b,c = gets.chomp.split.map(&:to_i)

n = gets.chomp.to_i

puts n % 2 == 0 ? 'White' : 'Black'