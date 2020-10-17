ary = []
n = gets.to_i

@az = [*'a'..'z']
# x = n / 26
# y = n % 26

# def sty(n, y)
#   if n > 26
#     sty(n/26, n%26)
#   else
#     @az[y - 1]
#   end
# end
x = n.dup
cnt = 0
until n <= 1 do
  n = n / 26
  cnt += 1
end

k = cnt
(cnt).downto(0) do
  puts "#{k}"
  x_y = x%26
  ary.unshift(@az[x_y - 1])
  x = k == 0 ? x - 26 : x - (26**k-1)
  k-=1
end

p ary