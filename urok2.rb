#1) Дано масив чисел, знайти суму всіх додатніх чисел  масиву не використовуючи цикли:
arr = [4, 0, -5, -1, 7, -1, 3]
sum = 0

arr.each{ |i| sum += i if i>0 }
puts sum



#2) Задано масив, створити новий масив із даних цього масиву які є рядком.
undefined = 222
arr = ["apple", true, "kiwi", 4, 88, "33", false, undefined, "JS"]
newArr = []

arr.each { |i| newArr << i if i == i.to_s }

p newArr
puts 



#3) Задано масив чисел, знайти число яке найбільш часто входить в масив, занести це число в новий масив і видалити всі входження цього числа із поточного масиву.
arr = [4, 5, 2, 1, 6, 5, 3, 5, 2, 5]
x = Hash.new(0)

arr.each { |i| x[i] += 1 }
moda = x.max_by { |k, v| v }[0]

new_arr = arr.select{ |i| i != moda }

p moda
p new_arr
puts 



#4) Знайти в масиві двозначні(10+), трьохзначні(100+) та чотирьохзначні(1000+)  числа та повертає в масив їх кількість .
arr = [1,2,55,3,100, 333, 9999];

xx = arr.count { |i| i.between?(10, 99) }
xxx = arr.count { |i| i.between?(100, 999) }
xxxx = arr.count { |i| i.between?(1000, 9999) }

p res = [xx, xxx, xxxx]
puts 


#5) Є масив [5, “Limit”, 12, “a”, “3”, 99, 2, [2, 4, 3, “33”, “a”, “text”], “strong”, “broun”]
#Вивести нові масиви яка складаються із даних початкового масиву, але одного типу даних (не приводити тип стрінг в число навіть якщо там лише число)
arr = [5, 'Limit', 12, 'a', '3', 99, 2, [2, 4, 3, '33', 'a', 'text'], 'strong', 'broun']
arr_1 = arr.flatten

int = arr_1.select { |i| i == i.to_i }
str = arr_1.select { |i| i == i.to_s }

p res = [int, str]
puts 



#6) Дано рядок із іменами, перетворити їх в масив, в масиві повидаляти лишні пробели, посортувати значення і вивести в новий масив імена які більше 4 символів мають, а в старий масив вивести відсортовані значення і об'єднати їх в рядок
names = "Alex,    Orysia, Misha,    Ira     , Paul";

arr = names.split(',').map(&:strip)
sort_arr = arr.sort
big_names = arr.select { |i| i.length > 4 }

p sort_arr
p big_names