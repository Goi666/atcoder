n,x,t=gets.chomp.split.map(&:to_i)
# gets.chomp.to_i

#a='yes'
#b='no'

# if target
#   puts b
# else
#   puts a
# end

cnt = 0
time = 0
loop do
  break if cnt >= n
  time += t
  cnt += x
end

puts time