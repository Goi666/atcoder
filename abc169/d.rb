require 'prime'
n = gets.chomp.to_i
z = 2
c = 0
count = 0
pri = []
Prime.each(100) {|n| pri << n }
p pri

test = 0
Prime.each(1000000007) {|k| test = k }
puts test

# 10.times do
#   break if n == 1
#   n = n / z
#   z += 1
#   count += 1
# end

puts count