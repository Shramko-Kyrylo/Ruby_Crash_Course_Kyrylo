a = [1, 2]
b = [3, 4]
puts "kjvkdbhhrbowhb #{a+b}"

txt = 'In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first.'


str = txt.chars
puts str.count('a')


str = txt.split
p str.select{ |i| str.count(i) > 1 }.uniq


are = []
str.each{ |i| are << i.capitalize }
p are.join(' ')


p str = txt.split(",")
p str.join('...') 