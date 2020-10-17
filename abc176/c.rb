n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i)

cnt = 0
i = 0
max = 0
a.each do |v|
  if i > 0 && max > v
    mae = max - v
    cnt += mae
    max = mae + v
  else
    max = v
  end
  i += 1
end

puts cnt.abs