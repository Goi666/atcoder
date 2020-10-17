n = gets.chomp.to_i
s = []
n.times do
  s << gets.chomp.to_s
end

s_bunrui = s.group_by(&:itself)
ac = s_bunrui["AC"] ? s_bunrui["AC"].count : 0
wa = s_bunrui["WA"] ? s_bunrui["WA"].count : 0
tle = s_bunrui["TLE"] ? s_bunrui["TLE"].count : 0
re = s_bunrui["RE"] ? s_bunrui["RE"].count : 0

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"