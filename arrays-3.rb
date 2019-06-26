# BONUS METHODS
# OBJECT POINTERS & OBJECT COPIES

a = [1, 2, 3]
b = a.dup

p a.object_id == b.object_id

a.push(4)
p b

p a

# SPLAT ARGUMENTS

def sum(*numbers)
  sum = 0
  numbers.each {|num| sum += num}
  sum

end

p sum(1, 44, 55, 33)

# ANY & ALL METHODS

# p [1, 3, 5, 7, 2].all? { |n| even? }

# FIND AND DETECT METHODS

words = ["dictionary", 'refrigerator', "platypus", "microwave"]

p words.find {|word| word.length > 8}

lottery = [4, 8, 15, 16, 23, 42]

result = lottery.detect do |number|

  number.odd?

end

# THE UNIQ METHOD

numbers = [1, 2, 3, 2, 7, 8, 9, 1]

numbers.uniq!
p numbers

def custom_uniq(array)

  final = []
  array.each {|element| final << element unless !final.include?(element)}
  final
end

p custom_uniq(numbers)

# THE COMPACT METHOD

puts [1, 2, 3, nil, 4].compact
puts [].compact

sports = ["Baseball", nil, "Football"]
p sports.compact

def custom_compact(array)
  final = []
  array.each {|element| final << element unless element.nil?}
  final
end

