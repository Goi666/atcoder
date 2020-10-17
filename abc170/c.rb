x, n = gets.chomp.split.map(&:to_i)
p_num = gets.chomp.split.map(&:to_i)
#p p_num

a = [*x-n..x+n]
num_list = (a - p_num)
puts num_list.min_by{|num| (num-x).abs}