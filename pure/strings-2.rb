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


# THE INDEX & RINDEX METHODS

fact = "I am very handsome"

p fact.index("I")

p fact.rindex("e")

def custom_index(string, substring)
  nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end

p custom_index(fact, "I")

# THE INSERT METHOD

typo = "GeorgWashington"
typo.insert(5, "e ")

p typo

# THE SQUEEZE METHOD

sentence = "Thh aardvark jummped   ovver the fence!"

puts sentence.squeeze!("h")

def custom_squeeze(string)

  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    char == chars[index + 1] ? next : final << char
    next
  end
  final
end

# p custom_squeeze(sentence) == sentence.session

# THE CLEAR METHOD

p "blah blah blah".clear

word = "goodbye"
p word

word.clear
p word

# THE DELETE METHOD

puts "Hello World".delete("ldrh")

def custom_delete(string, delete_characters)
  new_string = ""
  string.each_char do |char|
    new_string << char unless delete_characters.include?(char)
    new_string
  end
end

p custom_delete("Hello world", "h")


