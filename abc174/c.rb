k=gets.chomp.to_i



result = k % 2 == 0

cnt = 1
flg = false
if !result
  flg = true
  loop do
    seven = '7' * cnt
    break if seven.to_i % k == 0
    cnt += 1
  end
end
p flg ? cnt : '-1'