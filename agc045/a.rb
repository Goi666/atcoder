t = gets.chomp.to_i
a = Array.new(t)
n = []
s = Array.new(t)

i = 0

t.times do
  n << gets.chomp.to_i
  a[i] = Array.new(n)
  s[i] = Array.new(n)
  a[i] = gets.chomp.split.map(&:to_i)
  s[i] = gets.chomp.chars
  i += 1
end

def x_or(x, a, s)
  # x ⊕ Ai
  # puts "x:#{x}, a:#{a}, s:#{s}"

  if s.to_i == 0
    # 0にしたい
    x = 0 if x ^ a === 0
  elsif s.to_i == 1
    # !0にしたい
    x = a if x ^ a === 1
  end
  x
end

k = 0
t.times do
  # 初期化
  x = 0

  i = 0
  n[k].times do
    x = x_or(x, a[k][i], s[k][i])
    # puts "x : #{x}"
    i += 1
  end

  if x == 0
    puts "0"
  else
    puts "1"
  end

  k += 1
end