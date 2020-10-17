n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i)

a_len = a.length
max = 0
a.each_with_index do |v, i|
  dup_ary = a.slice(i+1..a_len)
  break if dup_ary.empty?
  dup_ary.each{|aa| max += v * aa }
end


p max % (10**9 + 7)