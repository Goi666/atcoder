n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

i = 0
cnt = 1
num = []

a_fla = a.uniq
nn = a_fla.size

nn.times do
  res = true
  k = 0
  nn.times do
    if a_fla.index(i) != a_fla.index(k)
      if a_fla[i] % a_fla[k] == 0
        res = false
      end
    end
    k += 1
  end
  # puts "#{i}回目のcnt => #{cnt}"
  num << cnt if res && cnt < n
  i += 1
  cnt += 1
end

puts num.count == 1 ? '0' : num.count