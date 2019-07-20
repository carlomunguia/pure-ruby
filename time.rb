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

start_of_the_year + (60 * 60 * 24)

def find_day_of_the_year(number)

  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 * 24

  until current_date.yday == number
    current_date += one_day
  end
  current_date
end

# COMPARABLE METHODS

birthday = Time.new(2015, 4, 12)
summer = Time.new(2015, 6, 21)
independence_day = Time.new(2015, 7, 4)
winter = Time.new(2016, 12, 21)

puts birthday < summer
puts independence_day > winter
puts winter

puts independence_day.between?(birthday, winter)

# CONVERT TIME

someday = Time.new(2000, 2, 15)
p someday.wday
p someday.to_s.class
p someday.ctime
p someday.to_a

# TIME TO STRING

p someday.strftime("%B %d, %Y")

# THE .PARSE AND STRPTIME METHODS








