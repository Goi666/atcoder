n=gets.chomp.to_i

loop do
  n = n % 1000
  if n == 0
    break
  elsif n <= 1000
    n = 1000 - n
    break
  end
end

puts n