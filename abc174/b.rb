n,d=gets.chomp.split.map(&:to_i)

z=[]

n.times do
  tmp=gets.chomp.split.map(&:to_i)
  z << Math.sqrt(tmp[0]**2 + tmp[1]**2)
end

p z.select{|v|v <= d}.count