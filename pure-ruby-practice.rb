#
#
name = "Carlo"
#
p "Hello #{name} how are you?"

age = 25
# string interpolation
p "I am" + age.to_s + " years"
p "I am #{age} years old"

p "the result of adding 1 + 1 is #{1 + 1}"

p "in 4 years, I will be #{age + 5} years old."

x = 5
y = 8

p "the sum of x and y is #{x + y}"

#THE GETS METHOD AND THE CHOMP METHOD
puts "hi, whats your name"
name = gets.chomp

puts "great! whats your age!?"
age = gets.chomp.to_i

puts "Cool, so your name is #{name} and your age #{age} years old."

#
# INTRO TO STRINGS & CLASSES
str = "5.8"
p str
p str.class

p str.to_f.class


p str.to.f.class


number = 10

p number.class
p number.to_s.class

p number.to_f.class


pi = 3.14

p pi.class
p pi.to_s.class



#
#

INTRO TO BOOLEANS


p 5 < 10

p 10 > 20

p true


BOOLEAN METHODS


p 1.next
p 1.to_s

p 10.odd?
p 11.odd?

p 2.even?
p 3.even?

EQUALITY OPERATORS

p 5.0.class

p 5.to_f == 5.0

INEQUALITY OPERATOR

p "hello".downcase != "HELLO".downcase

p 1.next

p 1.next()


p 1 + 2
p 10 - 5
p 3 * 4
p 3.*4
p 12.0 / 5.0
p 10 % 3
p 10.% 3
p 10.modulo(3)

p 1.+(2)
p 10.-(5)
p 10.-5
p 10./5
p 12.0./(5.0)
p 10.div(5)

# OBJECT METHODS AND PARAMETERS

# THE BETWEEN METHOD
p 10.between?(10,30)
p 20.between?(30,50)
p 1.2.between?(1.1, 1.3)
p -10.5.between?(-20, 0)
p 5.3.between?(8.8, 9.6)

FLOAT METHODS


p 10.5.to_i.class

p 10.5.floor
p 10.5.ceil

p 3.14154.round(4)
p 3.6.round

ASSIGNMENT OPERATORS
p 50.abs

a = 10

a = a + 5
a += 5

b = 100

b - 50


b -= 50

c = 3
c * 4

c *= 4

d = 7
d /=

c = c * 4
c *= 4

d = 14
d - d / 14

INTRODUCTION TO BLOCKS & TIME


10.times do |count|
  puts "alright, lets show another multiple"
  puts "#{3 * (count + 1)
end

# THE .DOWNTO & .UPTO METHODS
1.upto(10) { |i| puts "Countdown: #{i}"}

2.upto(10) do |num|
  puts 'We\'re moving on up!'
end

1.upto(99) do |num|
  puts '99 bottles of beer on the wall - 99 bottles of beer!'
end
99.downto(98) do |num|
  puts '98 bottles of beer on the wall - 98 bottles of beer!'
end

THE STEP METHOD

0.step(85, 5) do |n|
  puts 'Alright, lets do 5 again!'
  puts "I'm now on #{n}"
end

STRINGS 1

puts "Hi there, I'm a string!"
puts "I can also include characters and numbers: $ $ ! $ @ & $"

name = "Carlo"
revenue = "23 dollars"
puts name, revenue

space = ""
p space.length

puts

empty = ""
p empty.length
p space.class

name = String.new("Carlo")
p name

p 5.to_s.class


MULTI-LINE STRINGS


ESCAPE CHARACTERS

puts "Juliet said 'Goodbye' to Romeo"
# puts 'Juliet said 'Goodbye' to Romeo"#

puts "Juliet said \"Goodbye\" to Romeo"

result = "Lets add a line break\nright here"
puts result
p result

puts "\tInsert a tab right here"
puts "This is \tnormal"

# SINGLE VS DOUBLE QUOTES

phrase = "Hello\nWorld"
puts "#{phrase}"

puts '#{phrase}'


a = "Hello"
b = "hello"
c = "Hello"

p "A" < "a"
p "Z" < "a"

# # CONCAT STRINGS

 first_name = "Harry"
last_name = "Potter"
# #
first_name += last_name
# # #
# # # p first_name
# #
# # first_name.concat(last_name)
# #
# # p first_name << last_name << "Wizard"
# # p first_name
# #
# # first_name.prepend(last_name)
# # p first_name
# #
# # p last_name
# #
# #
# # THE .LENGTH & .SIZE METHOD
# #
# # a = "hello world"
# # b = "hi, my name is carlo"
# # c = " "
# # d = ""
# #
# # # p a.length
# # p b.length
# p c.length
# p d.length
#
# p "I love the world and it comes to return" != "I love the world and its comes to Receive"
#
# var beauty = [];
#
#
p a.size
p b.size
p c.size
p d.length.even?.class

p b.length.odd?.class

EXTRACT SINGLE CHARACTERS


story = "Once upon a time in a land far, far away"

p story.slice(-4)


EXTRACT MULTIPLE CHARACTERS

story = "There once was a blue man near a pink mountain".chomp( ' / ')

p story[5,4]
p story.slice(5,4)

p story.slice(0,story.length)

p story[-7, 5]

EXTRA VIA RANGE OBJECT


p story[27...39]
p story(22...100)

print 7.times.sort_by { |words |  }

print story

OVERWRITE CHARACTERS IN STRINGS

print "There once was a blue room with red pyramids\n but there was a problem\n the pyramids hurt your eyes when you looked at them\n "
print ""

thing = "rocket-ship"

p thing

thing[0] = "p"
p thing

thing[] = ""
p thing

fact = "I love Blueberry Pie"

p fact[6]

puts "hello12".capitalize.class
puts 'heLLo2.6'.capitalize.singleton_class
puts 'carlo'.prepend('hello12')
puts 'piLLLLow world'.capitalize

puts 'carlo is a Rocket blue Pink'.swapcase

puts 'Ruby321'.downcase.upcase.hash

BANG METHODS
word = 'hello'
word.capitalize!
p word

word.upcase!
p word

word.downcase!
p word

word.reverse!
p word

word.swapcase!
p word

name = "Snow White"

p name.downcase.include?("OW")

name = "Donald Duck"

last_name = name[100, 4]
p last_name.nil?
p last_name.nil?


METHODS

expression = "I am handsome"

def zion_cohort
  expression = "I am a genius"
  puts expression
end

zion_cohort
puts expression

def praise_person(name, age)
  puts "#{name } is amazing"
  puts "#{name} is charming"
  puts "#{name} is concurrency"
  puts "His age in 5 years will be #{age + 5}"
end

praise_person("Carlo", 33)
#
def mult_two_numbers(num1, num2)
  puts "Ok, I'm solving your math problem"
  num1 * num2
end

p mult_two_numbers(3,5)
p mult_two_numbers(8,4)

def zen_love_ruby(num, robocop)
  puts "You are a #{num} and a total #{robocop}"
  end

zen_love_ruby(3.14159, "coporub in a deep trouble lub")

def my_dad(awesomeness)
  puts "My dad was the best dad on earth and had so much #{awesomeness}"
end

my_dad("pure awesomeness")

IF STATEMENTS!!!!!

if 5.odd?
  puts "That number is odd!"
end

if 10.integer?
  puts "oh yeah im an integer"
end

TRUTHINESS & FALSINESS!!!
#
if 5<7
  puts "That is true!!!"
end

IF ELSE-IF STATEMENT

color = "DeepSku"

if color == "Red"
  puts "Red is rad"
elsif color == "Green"
  puts "Green is great!"
elsif color == "DeepSkyBlue"
  puts "This is the color of the Sky!!"
end

number = 55

if number < 25
  puts "That is a low number!"
elsif number < 50
  puts "That number is in the middle!"
elsif  number < 75
  puts "That is a big number!"
end

side note : IF STATEMENTS IN RUBY ARE COOL!!!!!!!

grade = "C"

if grade == "A"
  puts "That is an excellent grade - good job!"
elsif grade == "B"
  puts "That is a good grade. Let's bring it up next time!"
else
  puts "Unacceptable"
end

def odd_or_even(number)
  if number.odd?
    "That number is odd"
  else
    "That number is even"
  end
end

p odd_or_even(4)

MULTIPLE CONDITIONS
age = 25
ticket = 'General Admission'
id = true

if !(age <= 21 || !ticket)
  puts 'Congratulations, welcome to the show!'
elsif ticket && id
  puts 'Alright, you get in anyway'
end

budget = 5
price = 10
mood = 'Happy'

puts 'Im going to buy the item!' if budget > price || mood == 'Happy'

PARANETHS & PRECEDENCE

def authenticate_agent(rank, name, credentials)
  if (rank == '007' && name == 'James Bond') || credentials == 'Secret Agent'
    puts 'Access Granted, please proceed to the Intelligence department'
  else
    puts "Access denied, #{name}"
  end
end

authenticate_agent("006", "Alex Maccttuuki", "Secret Agent")


def nicole_garza(beauty, intelligence, bossiness)
  beauty || intelligence || bossiness == true
  codeup_student = true
  while codeup_student == bossiness <= intelligence || beauty
    puts "That's Eternal, Yo - Nicole Garza is Crazy Cool"
  end
end

nicole_garza('beyond reproach', 'eternal', 'shes a boss queen from planet boss')

def meal_boss(time_of_week, time_of_day)
  if time_of_week == 'weekday'
    if time_of_day == 'breakfast'
      'Cereal'
    elsif time_of_day == 'lunch'
      'Sandwich'
    elsif time_of_day == 'dinner'
      'Chicken Nuggets'
    end
  elsif time_of_week == 'weekend'
    if time_of_day == 'breakfast'
      'French Toast'
    elsif time_of_day == 'lunch'
      'BBQ Chicken Pizza'
    elsif time_of_day == 'dinner'
      'Steak'
    end
  end
end

p meal_boss('weekday', 'lunch')
p meal_boss('weekend', 'lunch')

THE RESPOND TO METHOD

num = 1000
p num.next if num.respond_to?('next')

puts 'Hello'.respond_to?(:length)
puts 1.respond_to?(:next)

TERNARY

if 1 < 2
  puts 'Yes it is '
else
  puts 'No, its not!'
end

puts 1 < 0 ? 'Yes it is!' : 'No, its not!'

puts 'yes' == 'yes' ? 'the two are equal' : 'the two are not equal'

def even_or_odd(number)
  number.even? ? 'That number is even' : 'That number is odd'
end

puts even_or_odd(55)

pokemon = "Pikachu"

puts pokemon == 'Charizard' ? 'Fireball' : 'That is soo Not Charizard'

DEFAULT OR OPTIONAL PARAMETERS
def make_phone_call(number, international_code = 1, area_code = 646)
  puts "I'm calling the number #{international_code}-#{area_code}-#{number}"
end

make_phone_call(1, 646, 1982)

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = 'add')
  if operation == 'add'
    add(a, b)
  elsif operation == 'subtract'
    subtract(a, b)
  elsif operation == 'multiply'
    multiply(a, b)
  else
    'That is not math what-so-ever!'
  end
end

p calculator(1145, 20, 'multiply')

CASE STATEMENT

def rate_my_food(food)
  case food
  when 'Steak'
    'Pass the Steak Sauce'
  when 'Sushi'
    'Great Choice! My FAVORITE food!'
  when 'Tacos', 'Burritos', 'Quesadillas'
    'Cheesy and filling! The perfect combo!'
  when 'Tofu', 'Brussell Sprouts'
    'disgUSTINGG!!! YUCKKK!!!'
  else
    'I dont know about that food!!!'
  end
end

puts rate_my_food('Tacos')
puts rate_my_food('Burritos')

def calculate_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p calculate_grade(77)


user = "free"

if user != "Subscriber"
  puts "Only subscribers are allowed"
end

puts !!""
p !!1
p !!3.14

p !!false
p !nil

password = 'whiskers'

if password == 'whiskers'
 puts 'CORRECT! that is the password!'
else
  puts 'NOT ALLOWED!'
end


password = 'dominoes'

unless password.include?('a')
  puts 'It does not include the number'
  elsif password.include?('d')
  puts 'thats d yo'
end

THE WHILE KEYWORD

i = 1

while i < 10
puts i
 i += 1
 end

status = true

while status
  print 'Please enter username'
  username = gets.chomp.downcase
  print 'Please enter your password: '
  password = gets.chomp.downcase

  if username == 'boris' && password == 'bestpasswordever'
    puts 'Entry Granted! The nuclear codes are....'
    status = false
  elsif username == 'quit' || password == 'quit'
    puts 'Goodbye! Better luck nextime!'
    status = false
  else
    puts "Incorrect combination, try again or enter 'quit'"
  end
end
#
THE UNTIL KEYWORD
i = 1
until i > 9
  puts i
  i += 1
end

def fizzbuzz(number)
	i = 1
	until i > number
		if number % 15 == 0
			puts "FizzBuzz for #{i}"
		elsif number % 3 == 0
			puts "Fizz for #{i}"
		elsif number % 5 == 0
			puts "Buzz for #{i}"
		end
		i += 1
	end
end
#
fizzbuzz(45)

STATEMENT MODIFIERS

number = 5000
verified = true
puts 'huge Number!!!' if number > 2500 && verified

x = 8
puts 'X is not greater than 10!' unless x > 10

CONDITIONAL ASSIGNMENT VARIABLE

y = nil
p y
y = 5
p y
y ||= 10
p y

y ||= 10
p y

greeting = 'Hello!'
extraction = 100
letter = greeting[extraction]
letter ||= 'Not Found Ma Lady'
p letter

RANGES

nums = 144..566
p nums.last(4)
p nums.last(1)

half_alphabet = "a"..."m"
half_alphabet === 'k'
numbers = -14..79
p numbers === 1000

puts rand.round(4)

puts rand(1..100)

ARRAYSSSSSSSS!!!!!!!!!!!!!!!YESSSSSSSS!!!!!!!!!WOO HOOOOOOO!!!!!!! YUMMY SUSHI ARRAYS!!!!!!!

p [].class

numbers = [1,2,3,4,5,6,7,8,9,7,8,9,5,7,8,2,8,6,3]
numbers2 = [4,6,8,7,99,7,5,6,3,5,2,4,3,5,2,3,6,4]

toys = ['teddy bear', 'super soaker', 'boardgame']

things = [4, true, 'Hello', 10.99]
p things

registrations = [true, true, false, true, false]
p registrations

students =
  [['Boris', 25, true],
   ['Sally', 22, true],
   ['Ingrid', 31, false]]

puts students

p [1,2,3].class
p['Hello', 'world'].class

p Array.new(10,['Hello'])

fruits = ['Apple', 'Orange', 'Grape', 'Banana']

p fruits[-2]
p fruits.[](3)
p fruits.[](-10)

names = %w[Tom Cameron Bob]

p names.fetch(100, ['A', 'B'])

numbers = [1,5,8,7,9,7,8,7,8]

p numbers[2, 4]
p numbers [1,3]

numbers = [1,5,8,7,8,9,8,7,8]

puts numbers[3...8]

channels = ['CBS', 'FOXX', 'NBC', 'ESPN', 'AL-JAZEERA']

p channels.slice(3..5)

fruits = ['Apple', 'Orange', 'Grape', 'Banana']

fruits[1] = 'Watermelon'

fruits [3,2] = ['Canteloupe', 'Dragonfruit']
p fruits

fruits[0..3] = ['Blah']
p fruits

LENGTH SIZE COUNT METHODS

p [1,nil, 2 ,3, nil, 4, 'Hello', 3.14].count(2)

p [true,true,true,false,true].count(nil)

THE EMPTY AND NIL METHOD
#
puts [1,2,3].empty?
puts [].empty?
puts [].length == 0

arr = [1, 3, 5, 7, 9, 25, 28, 6]

def custom_first(arr, num = 0)
  return arr [0] if num.zero?

  arr[0, num]
end

def custom_last(arr, num = 0)
  return arr[-1] if num.zero?

  arr[-num..-1]
end

THE PUSH METHODS

locations = ['House', 'Airport', 'Bar']
p locations
locations.push('Restaurant', 'Saloon')
p locations
#
 SHOVEL OPERATOR
locations <<  'Bzzy' << 'Sissysiss'
p locations

locations.insert(3, 'Dragon')
p locations

# THE POP METHOD
arr = [1,7,3,2,6,9,8,4]

two_item = arr.pop

THE SHIFT METHOD

extract = arr.sort
p extract

EQUALITY AND INEQUALITY IN ARRAYS

a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1,2,3]

p a != c
p a != d
#
a = %w(Skittles Starbursts Snickers)
b = %w(Skittles Starburstss snickers)

p a == b

THE SPACESHIP OPERATOR
>>CUSTOM SORT METHOD<<
p 22 <=> [1,2,3]

p [1, 4, 6] <=> [1, 4, 7]

CONVERT RANGE TO ARRAY

letters_range = "A".."T"
p letters_range
letters_array = letters_range.to_a
p letters_array[5]

numbers_range = 415..450
p numbers_range
numbers_array = numbers_range.to_a
p numbers_array[10..15]
sßssssswwwdad
THE "IS A" METHOD

p 1.class
p 3.14.class
p 99999999999999.class
p true.class
p false.class
p nil.class
puts 1.is_a?(Array)
#
# hawaii = [1arr
#
#.each {|e
#| puts
e} if hawaii.is_a?(Array)
#
# p [1, 2].is_a?(Array)
# p [1, 2].is_a?(Object)
# p [1, 2].is_a?(BasicObject)
