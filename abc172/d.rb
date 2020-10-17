require 'prime'

def number_divisors(n)
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

n = gets.chomp.to_i

i = 1
res = 0
n.times do
  if i == 1
    res += 1
  else
    res += (i * number_divisors(i).to_i)
  end
  i += 1
end

puts res