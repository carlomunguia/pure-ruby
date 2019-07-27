#START WITH / END WITH METHODS

phrase = "The Ruby Programming Language is bonkers amazing"
substr = "zing!"

puts phrase.start_with?("The Ruby")


def custom_start_with?(string, substring)
  string[0, substring.length] == substring
end

def custom_end_with?(string, substring)
  string[-substring.length..-1]
end

