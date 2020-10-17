s=gets.chomp.chars
t=gets.chomp.chars

s_ary = Array.new(t.size).map{Array.new(s.size,0)}

t.each_with_index do |tt, i|
  s.each_with_index do |ss, l|
    p "tt=#{tt}, ss=#{ss}"
    if tt == ss
      p "i=#{i}, l=#{l}"
      s_ary[i][l] = ss
      p "ary=#{s_ary}"
    end
  end
end

p s_ary