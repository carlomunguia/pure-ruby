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

shirts = ["striped", "plain white", "band", "plaid"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each do |tie|
   puts "OPTION: A #{shirt} and a #{tie} tie"
  end
end





