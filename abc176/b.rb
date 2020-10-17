n=gets.chomp.to_i

flg = 0
if n % 9 == 0
  if n.to_s.chars.map(&:to_i).inject(:+) % 9 == 0
    flg = 1
  end
end

puts flg == 0 ? 'No' : 'Yes'