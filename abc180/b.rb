n = gets.to_i
x = gets.split.map(&:to_i).map(&:abs)
puts x.inject(:+)
puts Math.sqrt(x.inject(0){|m,x| m + x**2})
puts x.max