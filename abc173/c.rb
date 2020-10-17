h, w, k = gets.chomp.split.map(&:to_i)
square_res = h.times.map{ Array.new(w){ '' } }
square = []
h.times do square << gets.chomp.chars end

def combi(n,k)
  k=n-k if 2*k > n
  return 1 if k == 0
  ((n-k+1)..n).reduce(&:*)/((1..k).reduce(&:*))
end
  

square.each_with_index{|v,i|
  v.each_with_index{|m,k|
    if m == '#'
      square_res[i][k] = 1
    else
      square_res[i][k] = 0
    end
  }
}

hon_2 = combi((h+w), h)
hon_1 = h + w
hon_0 = 0

cnt = 0
# 2本の場合
hon_2.times do
  [*0..h].each_with_index{|hv, i|
    square_res[i] = 0
    [*0..w].each_with_index{|wv, k|
      # 横縦の場合
      square_res[i][k] = 0
    }
    ##が2個であればcnt += 1
    square_res.select{|srs| puts cnt += 1 if srs.group_by(&:itself).transform_values(&:size)[1].count == 2}
  }
  [*0..w].each_with_index{|wv, i|
    [*0..w-1].each_with_index{|wwv, k|
      # 縦のみの場合
    }
  }
  [*0..h].each_with_index{|hv, i|
    [*0..h].each_with_index{|hhv, k|
      # 横のみの場合
    }
  }
end

# 1本の場合

p hon_1