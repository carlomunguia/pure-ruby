[3, 5, 7, 9].each {|num| puts num ** 2}
#
# evens = [2, 4, 6, 8, 10]
#
# evens.each {|num| puts number ** 3}

colors = %w[Red Purple Green Blue]

statements = colors.map {|color| "#{color} is a great color!"}

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

puts pass_control {puts "Now I'm inside of the block!"}

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i {"charming"}

def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass {puts "Now I'm inside the block!"}

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



