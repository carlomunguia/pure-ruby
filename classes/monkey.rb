class Array
  def sum
    total = 0
    self.each { |element| total += element if element.is_a?(Numeric) }
  end
end

class String
  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0

    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end
end

puts "abc".alphabet_sum