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

  #all of the global variables I require throughout the challenge
  formatted_date = Date.new(year)
  most_days = []
  days_hash = {
    :monday => 0,
    :tuesday => 0,
    :wednesday => 0,
    :thursday => 0,
    :friday => 0,
    :saturday => 0,
    :sunday => 0
  }

  # Loop through each day of the year using Ruby built in date class & break statement when year changes
  while formatted_date.day < 365 do
    break if formatted_date.year != year
    if formatted_date.monday?
      days_hash[:monday] += 1
    elsif formatted_date.tuesday?
      days_hash[:tuesday] += 1
    elsif formatted_date.wednesday?
      days_hash[:wednesday] += 1
    elsif formatted_date.thursday?
      days_hash[:thursday] += 1
    elsif formatted_date.friday?
      days_hash[:friday] += 1
    elsif formatted_date.saturday?
      days_hash[:saturday] += 1
    elsif formatted_date.sunday?
      days_hash[:sunday] += 1
    end
    puts formatted_date.day
    formatted_date += 1
  end

  # Iterate through each pairing in days hash to find the highest values and store them in array
  days_hash.each do |key, value|
    most_days << key.to_s.capitalize if value >= 53
  end

  # array that has the highest days to be returned
  return most_days
end


puts most_frequent_days(2016)
