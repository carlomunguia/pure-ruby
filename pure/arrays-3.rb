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
  numbers.each { |num| sum += num }
  sum

end

p sum(1, 44, 55, 33)

# ANY & ALL METHODS

# p [1, 3, 5, 7, 2].all? { |n| even? }

# FIND AND DETECT METHODS

words = ["dictionary", 'refrigerator', "platypus", "microwave"]

p words.find { |word| word.length > 8 }

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
  array.each { |element| final << element unless final.include?(element) }
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
  array.each { |element| final << element unless element.nil? }
  final
end

# THE INJECT & REDUCE METHODS

# result = [10, 20, 30, 40].reduce(0) do |previous, current|
#   puts "The previous value is #{previous}"
#   puts "The current value is #{current}"
#   previous + current
# end
#
# puts result
#
# breakfast = ['pancakes', 'blueberries', 'whipped cream'].reduce(1) do |morning, evening|
#
#   puts "i eat these things in the #{morning}"
#   puts "i eat these things in the #{evening}"
#   morning + evening
# end
#
# p breakfast

# THE FLATTEN METHOD

registrations =
    [%w[Bob David Jack],
     %w[Rick Susan Molly],
     %w[Yin Yang Fish]
    ]
p registrations.flatten

# THE ZIP METHOD

names = %w[ Bo Moe Joe ]
registrations = [true, false, false]

p names.zip(registrations)

p [1, 2, 3].zip([4, 5, 6], %w(A B C))

def custom_zip(arr1, arr2)

  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end

p custom_zip(names, registrations)

# THE SAMPLE METHOD

flavors = %w[Chocolate Vanilla Strawberry RumRaisin Banana-Pudding]

p flavors.sample(2)

# MULTIPLY ARRAYS

puts [1, 2, 3] * 5

def custom_multiply(array, number)

  result = []
  number.times { array.each { |elem| result << (elem) } }
  result

end

p custom_multiply(%w[Ruby Javascript Python], 7)


# UNION - COMBINE ARRAYS

a = [1, 2, 3] | [3, 4, 5]
b = [7, 8, 9] | [10, 11, 12]

def custom_union(arr1, arr2)

  arr1.dup.concat(arr2).uniq

end

p custom_union(a, b)
p a
p b

# REMOVE ARRAY ITEMS

a = [1, 1, 2, 2, 4, 6, 5, 4, 2, 4, 2, 1]
b = [1, 4, 5]

def custom_subtraction(arr1, arr2)

  final = []
  arr1.each { |value| final << value unless arr2.include?(value) }
  final

end

p custom_subtraction(a, b)

# ARRAY INTERSECTIONS

a1 = [1, 1, 2, 3]
a2 = [5, 6, 7, 7, 1]
a3 = [3, 1, 4, 6, 7]

def custom_intersection(arr1, arr2)

  final = []
  arr1.uniq.each do |element|
    final << element if arr2.include?(element)
  end
  final
end




