=begin
  a = [1, 2]
  b = [3, 4]
  puts "kjvkdbhhrbowhb #{a+b}"
=end


str = 'In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first.'.chars
puts str.count('a')


str = 'In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first.'.split
p str.select{ |i| str.count(i) > 1 }.uniq


are = []
str.each{ |i| are << i.capitalize }
p are.join(' ')


p str = 'In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first.'.split(",")
p str.join('...') 