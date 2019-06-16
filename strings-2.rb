# THE SPLIT METHOD

sentence = 'Hi, my name is Carlo. There are spaces here!'

p sentence.split('i')

words = sentence.split(' ')

words.each { |word| puts word.length }

# ITERATING OVER STRING

'Hello world'.each_char { |char| puts char }

name = 'Carlo'

p name.split('')
p name.chars

letters = name.chars
letters.each { |letter| puts "#{letter} is awesome!" }

# THE JOIN METHOD

names = %w[Joe Moe Bob]

p names.join('-')

p %w[h e l l o].join

def custom_join(array, delimiter = '')
  string = ''
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index
  end
  string
end

p custom_join(names)
p custom_join(names, '.')

# THE COUNT METHOD

puts 'Hello World'.count('ld')

aardvark = 'An amazing aardvark appeared!'.count('a')

def custom_count(string, search_characters)

  count = 0
  string.each_char { |char| count += 1 if search_characters.include?(char) }
  count
end

p custom_count("An amazing aardvark appeared", "Aa")


