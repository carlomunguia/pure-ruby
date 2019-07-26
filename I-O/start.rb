puts "This is the beginning!"

load "end.rb"

puts "SUCCESS"

load "./end.rb"

if 8 > 5
  load "end.rb"
end

puts "WHOA WHOA WHOA"
require "./end.rb"

require_relative 'end'



