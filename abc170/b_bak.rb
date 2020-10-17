@x,@y = gets.chomp.split.map(&:to_i)

def four_pattern(k)
  res = false
  turtle = k
  turu = (@y - (4 * k)) / 2
  puts "turtle => #{turtle}, turu => #{turu}"
  if @x >= turtle + turu
    res = true
  end
  res
end

if @y > 1
  # 足の本数が合う
  cp = (@y / 4) + 1
  i = 0
  cp.times do
    if four_pattern(i)
      puts 'Yes'
      return
    end
    i += 1
  end
  puts 'No'
else
  # 足の本数が合わない
  puts 'No'
end
