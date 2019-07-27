#START WITH / END WITH METHODS

phrase = "The Ruby Programming Language is bonkers amazing"
substr = "zing!"

puts phrase.start_with?("The Ruby")


def custom_start_with?(string, substring)
  string[0, substring.length] == substring
end

def custom_end_with?(string, substring)
  string[-substring.length..-1] == substring
end

# .INCLUDE METHOD

phrase = "The Ruby Programming Language is so dope!"

puts phrase.upcase.include?("Ruby")

def custom_include? (string, substring)
  len = substring.length
  string.chars.each_with_index do |char, index|
    return true if string[index, len] == substring
  end
  false
end

# INTRO TO REGULAR EXPRESSIONS

"What am I looking for" =~ //

puts //.class

phrase = "The Elixir Programming Language is amazing!"

puts phrase =~ /!/

# THE SCAN METHOD

voicemail = "I can be reached at 444-555-6666 or REGGIEX@XMAIL.COM"

p voicemail.scan(/\d+/) { |digit_match| puts digit_match.length }

# WILDCARDS

phrase = "Scala is a language."

puts phrase.scan(/.al/)

puts phrase.scan(/Sca./)

puts phrase.scan(/\a. \a. \a/)

# BACKSLASH CHARACTER

paragraph = "This is my reality, dipped in deep blue pearl.  Feel the blue house where she sighs alone at nights."

p paragraph.scan(/\D/)

# REGEX ANCHORS

poem = "99 bottles of kombucha on the wall. 99 bottles of kombucha"

p poem.scan(/cha\z/)

sales = "I bought 9 apples, 29 bananas, and 4 oranges at the store."

p sales.scan(/[^aeiouAEIOU,\s\d\.]/).size

# SUB / GSUB METHODS

puts "ufo".sub("u", "z")

word = 'aspirin'

p word.sub("as", "bass")

puts "a mango".gsub("m", "Zha-")

puts "(444)555-6666".gsub(/[-\s\(\)]/, "")

numbers.gsub(/[-\s(\)]/, "")










