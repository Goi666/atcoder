# n = gets.chomp.to_i
# x_y = []
# x = []
# y = []
# n.times do
#   tmp = gets.chomp.split.map(&:to_i)
#   x_y << tmp
#   x << tmp[0]
#   y << tmp[1]
# end

# x_max = x.max
# y_max = y.max
# x_y_max = [x_max, y_max].max
# sum_res = 0
# x_count = x.group_by(&:itself)
# y_count = y.group_by(&:itself)
# x_y.each_with_index do |v, i|
#   if x_count[v[0]].count >= 3 # x軸の直線上に存在する
#     sum_res += 1
#     break
#   elsif y_count[v[1]].count >= 3 # y軸の直線上に存在する
#     sum_res += 1
#     break
#   else # 斜め
#     # mae_count = 0
#     # if i > 0
#     #   # 斜め前を検出
#     #   i.downto(0) do |k_i|
#     #     unless x_count[(v[0] - k_i)].nil? && y_count[(v[0] - k_i)].nil?
#     #       if x_y[k_i][0] == (v[0] - (i - k_i)) && x_y[k_i][1] == (v[1] - (i - k_i)) # i - k_i = 遡った数だけ引く
#     #         mae_count += 1
#     #       end
#     #     end
#     #   end
#     # end
#     # 斜め後ろを研修
#     ushiro_count = 0
#     i.upto(x_y_max) do |l_i|
#       unless x_count[(l_i + v[0])].nil? && y_count[(l_i + v[1])].nil?
#         if x_y[l_i][0] == (v[0] + (l_i - i)) && x_y[l_i][1] == (v[1] + (l_i - i))
#           ushiro_count += 1
#         end
#       end
#     end
#     if ushiro_count >= 2
#       sum_res += 1
#       break
#     end
#   end
# end

# puts sum_res > 0 ? 'Yes' : 'No'

# ↓Answer
n = gets.to_i
xy = []
n.times {
  xy << gets.split.map(&:to_i)
}
 
def check(a, b, c)
  if a[0] == b[0] or b[0] == c[0] or c[0] == a[0]
    if a[0] == b[0] and b[0] == c[0]
      puts "Yes"
      exit
    else
      return
    end
  else
    if b[0] > a[0]
      kata1 = Rational(b[1] - a[1], b[0] - a[0])
    else
      kata1 = Rational(a[1] - b[1], a[0] - b[0])
    end
    if c[0] > b[0]
      kata2 = Rational(c[1] - b[1], c[0] - b[0])
    else
      kata2 = Rational(b[1] - c[1], b[0] - c[0])
    end
    if a[0] > c[0]
      kata3 = Rational(a[1] - c[1], a[0] - c[0])
    else
      kata3 = Rational(c[1] - a[1], c[0] - a[0])
    end
    if kata1 == kata2 and kata2 == kata3
      #puts "#{a} #{b} #{c} #{kata1} #{kata2} #{kata3}"
      puts "Yes"
      exit
    end
  end
  return
end
 
n.times { |i|
  (i+1).upto(n-1) { |j|
    (j+1).upto(n-1) { |k|
      check(xy[i], xy[j], xy[k])
    }
  }
}
 
puts "No"