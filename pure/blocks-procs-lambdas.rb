[3, 5, 7, 9].each { |num| puts num ** 2 }
#
# evens = [2, 4, 6, 8, 10]
#
# evens.each {|num| puts number ** 3}

colors = %w[Red Purple Green Blue]

statements = colors.map { |color| "#{color} is a great color!" }

p statements

5.times do |index|
  puts index
  puts "Lets move on to the next loop"
end

# THE YIELD KEYWORD

def pass_control
  puts "This is inside the method"
  yield
  puts "Now I'm back inside the method!"
end

puts pass_control { puts "Now I'm inside of the block!" }

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "charming" }

def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass { puts "Now I'm inside the block!" }

# PROCS 1

cubes = Proc.new { |number| number ** 3 }

a = [1, 2, 3, 4, 5, 6]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map(&cubes)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes

currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }

p currencies.map(&to_euros)

# THE BLOCK GIVEN METHOD

def pass_control_on_condition
  puts 'Inside the method'
  if block_given?
    yield
    puts 'Back inside the method'
  end

  pass_control_on_condition do
    puts "Hello from inside"
    puts "The magical block"
  end
end

# YIELDING WITH ARGUMENTS

def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Carlo") { |name| puts "#{name} is brilliant" }

# CUSTOM .EACH METHOD

def custom_each(array)

  i = 0
  while i < array.length
    yield array[i]
    i += 1

  end
end

names = %w[Boris Arnold Melissa]
numbers = [10, 20, 30]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}!"
end

custom_each(numbers) do |number|
  puts "The square of #{number} is #{number ** 2}"
end

# PROCS 2

def greeter
  puts "I'm inside of the greeter"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter(&phrase)

hi = Proc.new { puts "Hi there" }

5.times(&hi)
hi.call

# RUBY METHOD AS PROC

p %w(1 2 3).map(&:to_i)
p %w[19 14 25].map(&:to_s)

p [1, 2, 3, 4, 5].select(&:even?)
p [1, 2, 3, 4, 5].reject(&:odd?)

# METHODS WITH PROC PARAMETERS

def talk_about(name, &myprc)
  puts "Let me tell you about #{name}."
  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
  puts "#{name} is a jolly good fellow"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt!"
  puts "I can't stand #{name}!"
end

talk_about("Boris", &good_things)
talk_about("Monica", &bad_things)

# LAMBDAS
squares_lambda = lambda { |number| number ** 2 }
squares_proc = Proc.new { |number| number ** 2 }

[1, 2, 3].map(&squares_proc)
p squares_proc.call(5)

p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

some_proc = Proc.new { |name, age| "Your name is #{name}, your age is #{age}" }

p some_proc.call("Boris", 25)
p some_proc.call("Boris")

some_lambda = lambda { |name, age| "Your name is #{name}, your age is #{age}" }

p some_lambda.call("Boris", 25)

def diet
  status = lambda { return "You gave in" }
  status.call
  "You've completed the diet!"
end

result = diet
p result

# LAMBDA EFFICIENCY

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end


to_pesos = lambda { |dollars| dollars * 20.67 }
to_euros = lambda { |dollars| dollars * 0.95 }
to_rupees = lambda { |dollars| dollars * 68.13 }

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)






