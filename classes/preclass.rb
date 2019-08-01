#THE SUPERCLASS / ANCESTORS METHOD

p 5.class
p 5.class.superclass.superclass
p 5.class.superclass.ancestors

p 5.class.ancestors


# THE METHODS METHOD

puts 5.methods.sort

puts String.methods

fixnum_methods = 5.methods.sort
float_methods = 3.14.methods.sort("hello")


puts fixnum_methods & float_methods

array_methods = [1, 2, 3].methods.sort
hash_methods = {key: "value"}.methods.sort

puts array_methods - hash_methods



