#REVIEW OF BLOCKS

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

for num in numbers
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

numlo = [1, 2, 3, "Hello", 5, 6, nil, 7, 8, []]

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
words = ["catepillar", "kangaroo", "apple", "zebra"]

p numhi.sort.reverse
p words.sort.reverse



