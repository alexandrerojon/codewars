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
  formatted_date = Date.new(year)
  current_day_in_the_year = 0
  days_hash = {
    :monday => 0,
    :tuesday => 0,
    :wednesday => 0,
    :thursday => 0,
    :friday => 0,
    :saturday => 0,
    :sunday => 0
  }
  while current_day_in_the_year < 365 do
    current_day_in_the_year += 1
    # puts formatted_date.sunday?
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
    formatted_date += 1

  end
  # puts days_hash[:monday]
  # puts days_hash[:tuesday]
  # puts days_hash[:tuesday]
  # puts days_hash[:wednesday]
  # puts days_hash[:thursday]
  # puts days_hash[:friday]
  # puts days_hash[:saturday]
  # puts days_hash[:sunday]

  # puts "---"
  final = days_hash.sort_by {|day, amount| amount}.reverse!.first
  final.pop
  final = final.first.capitalize.to_s
  # need to then store the final into an array and then return that
  return final
end


puts most_frequent_days(2025)
