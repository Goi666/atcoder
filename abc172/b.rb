s=gets.chomp.chars
t=gets.chomp.chars
cnt=0
s.each_with_index{|v, i|
  cnt += 1 if v != t[i]
}

puts cnt