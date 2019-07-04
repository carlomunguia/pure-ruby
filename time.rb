# THE TIME OBJECT

today = Time.now

p today

tomorrow = Time.new

p tomorrow

p Time.new(2015, 5, 25, 16, 33, 22)

# INSTANCE METHODS ON TIME

today = Time.now

p today.year
p today.sec
p today.yday

p today.wday

# PREDICATE (BOOLEAN) METHODS

birthday = Time.new(2020, 04, 20)
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.friday?
p birthday.saturday?
p birthday.sunday?
p birthday.monday?

p birthday.dst?

# ADD / SUBTRACT BY SECONDS

start_of_the_year = Time.new(2016, 1, 1)

p start_of_the_year + (60 * 60 * 24)


