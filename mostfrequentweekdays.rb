# What is your favourite day of the week? Check if it's the most frequent day of the week in the year.

# You are given a year as integer (e. g. 2001). You should return the most frequent day(s) of the week in that year. The result has to be a list of days sorted by the order of days in week (e. g. ['Monday', 'Tuesday'], ['Saturday', 'Sunday'], ['Monday', 'Sunday']). Week starts with Monday.

# Input: Year as an int.

# Output: The list of most frequent days sorted by the order of days in week (from Monday to Sunday).

# Preconditions:

# Week starts on Monday.
# Year is between 1583 and 4000.
# Calendar is Gregorian.
# Examples (input -> output):
# * 2427 -> ['Friday']
# * 2185 -> ['Saturday']
# * 2860 -> ['Thursday', 'Friday']

require 'date'


def most_frequent_days(year)
  #your code here
  days_hash = {
    :monday => 0,
    :tuesday => 0,
    :wednesday => 0,
    :thursday => 0,
    :friday => 0,
    :saturday => 0,
    :sunday => 0
  }
  day_in_the_year = 0
  while day_in_the_year < 365 do
    puts "Hello"
    day_in_the_year += 1
    puts day_in_the_year
  end
  formatted_date = Date.new(year)
  # puts formatted_date.day
  # puts days_hash[:monday] += 1
end


most_frequent_days(2022)
