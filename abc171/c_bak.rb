# 1000000000000001匹
# 38461538461538回セットに必要...
ary = []
n = gets.to_i

@az = [*'a'..'z']
x = n / 26
y = n % 26

def change_alpha(x, y)
  if x > 26
    change_alpha(x/26, y)
  else
    puts "#{x} #{y}"
    if x == 0
      ''
    elsif x != 0 && y == 0
      @az[x - 1] + 'z'
    else
      @az[x - 1]
    end
  end
end

puts change_alpha(x, y) + (@az[y - 1])

# if x > 1
#   # 3回目以上
#   puts change_alpha(x, y) + (@az[y - 1])
# else
#   # 1回目と2回目
#   puts ('a' * x) + (@az[y - 1])
# end

