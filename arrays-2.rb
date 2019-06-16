#REVIEW: OF BLOCKS

# 3.times {|number| puts "I am currently on loop #{number}"}

5.times do |number|

  square = number * number
  puts "The current number is #{number} and its square is #{square}"

end


#THE.EACH METHOD

candies = ['Sour Patch Kids', 'Milky Way', 'Airheads']

candies.each do |candy|
  puts "I love eating #{candy}"
  puts 'It tastes so good'
end

names = %w[Bio Cio Sio]

names.each {|name| puts name.upcase}

[1, 2, 3, 4, 5].each do |num|
  square = num * num
  puts "The square of #{num} is #{square}!"
end


#
# fives.each do |number|
#   odds << number if number.odd?
# end
#
# p odds

fives = [5, 10, 15, 20, 25, 30, 35, 40]

odds = []
evens = []

fives.each do |number|
  if number.even?
    evens << number
  else
    number.odd?
    odds << number
  end
end

fives.each {|number| number.even? ? evens << number : odds << number}

p evens
p odds

#EACH WITHIN EACH

shirts = ['striped', 'plain white', 'band', 'plaid']
ties = ['polka dot', 'solid color', 'boring']

shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION: A #{shirt} and a #{tie} tie"
  end
end

#FOR LOOP

numbers = [3, 5, 7]

numbers.each do |num|
  puts num
end

# rng = 1..10
#
# rng.each do |rng_number|
#   puts rng_numbr
# end
#
# for rng_number in rng
#   puts rng_number
# end

# THE EACH WITH INDEX METHOD

colors = %w[Red Blue Green Yellow]

colors.each_index do |color, index|
  puts "Moving on index number #{index}"
  puts "The current color is #{color}"
end

twos = [2, 4, 6, 8]

twos.each_with_index do |number, i|
  puts "the current value is #{number} at index #{i}!"
end

#
# CHALLENGE
#
# numys = [1, 2, 3, 4, 5]
#
#
# numys.each_with_index do |nums, index|
#   result = nums * index
#   sum += result
# end


# arr = [-1, 2, 1, 2, 5, 7, 3]
# 
# def print_if(array)
# 
#   array.each_with_index do |number, index|
#     if index > number
#       puts "this #{index} is greater than #{number}"
#       puts "The result of multiplying is #{index * number}"
#     end
#   end
# end
# 
# print_if(arr)

# THE MAP AND COLLECT METHODS

# numbers = [1, 2, 3, 4, 5]
# 
# numbers.map { |number| number ** 2 }
# 
# fahr_temperatures = [105, 73, 40, 18, -2]

# celsius_temperatures = fahr_temperatures.map do |temp|
#   minus32 = temp - 32
#   minus32 * (5.0 / 9.0)
# end
# 
# p celsius_temperatures

numbers = [3, 8, 11, 15, 89]

def cubes(array)
  array.map {|number| number ** 3}
end

#ITERATION WITH WHILE OR UNTIL

animals = %w[Lion Zebra Baboon Cheetah]

i = 0
until i == animals.length
  puts i
  puts animals[i]
  i += 1
end

#THE BREAK KEYWORD

prizes = %w[Pyrite Pyrite Pyrite Pyrite Gold Pyrite Pyrite]

i = 0
while i < prizes.length
  current = prizes[i]
  if current == 'Gold'
    puts 'Yay! I found Gold!'
    break
  else
    puts "#{current} is not gold!"
  end
  i += 1
end

numbs = [1, 2, 3, 'Hello', 5, 6, 7, 8]

numbs.each do |num|
  if num.is_a?(Integer)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That is not a valid number, I'm done with this nonesense!"
    break
  end
end

# THE NEXT KEYWORD

numlo = [1, 2, 3, 'Hello', 5, 6, nil, 7, 8, []]

# numbers.each do |num|
#
#   unless num.is_a?(Integer)
#     next
#   else
#     puts "The square of #{num} is #{num ** 2}"
#   end
# end

# THE REVERSE METHOD ON AN ARRAY

p [1, 2, 3].reverse
p %w[A B C].reverse

# THE SORT METHOD

numhi = [5, 13, 1, -2, 8]
words = %w[catepillar kangaroo apple zebra]

p numhi.sort.reverse
p words.sort.reverse

# CONCAT METHOD

p [1, 2, 3] + [4, 5]

p [1, 2, 3].concat([4, 5])

a = [4, 5, 6]
b = [7, 8, 9]

def custom_contact(arr1, arr2)
  arr2.each {|elem| arr1 << elem}
  arr1
end

p custom_contact(a, b)

# THE MAX AND MIN METHOD

stock_prices = [723.99, 434.12, 84.7, 649.92]

p stock_prices.max
p stock_prices.min

a = [44.7, 46.9, 99.9]

def custom_max(arr)
  arr.max
end

def custom_min(arr)
  arr.min
end

p custom_max(a)
p custom_min(a)

# INCLUDE METHOD

yummy = [1, 2, 3, 5, 6]

p yummy.include?(5)

# INDEX & FIND INDEX METHODS

colors = %w[Red Blue Green Red]

p colors.index('Orange')

# THE SELECT METHOD

grades = [80, 95, 13, 76, 28, 39]

matches = grades.select(&:even?)

p matches

words = %w[level selfless racecar dinosaur]

palindromes = words.select {|word| word == word.reverse}

p palindromes


# THE REJECT METHOD

animals = %w[Cheetah Cat Lion Cow]

select_results = animals.select {|animal| animal.include?('c')}
reject_results = animals.reject {|animal| animal.include?('c')}

p reject_results
p select_results

# UNPACKING A MULTIDIMENSIONAL ARRAY

users = [['Bob', 25, 'Male'], ['Susan', 48, 'Female'], ['Larry', 62, 'Male']]

p users[1][2]

bob, susan, larry = users

p bob
p susan
p larry

# THE PARTITION METHOD

foods = ['Steak', 'Vegetables', 'Steak Burger', 'Kale', 'Tofu', 'Tuna Steaks']

good, bad = foods.partition { |food| food.include?('Steak') }

p good
p bad

# EVENS AND ODDS

