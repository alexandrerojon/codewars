=begin
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice
=end


def duplicate_count(text)
  puts text
  return 0 if text.length <= 1
  letters = text.split("")
  puts letters.join("")
  count = 0
  for item in letters do
    puts "12".is_integer?

    if letters.count(item) > 1
      count += 1
      letters.delete(item)
    end
  end
  return count
end


# puts duplicate_count("")
# puts duplicate_count("abcde")
# puts duplicate_count("abcdeaa")
# puts duplicate_count("abcdeaB")
# puts duplicate_count("Indivisibilities")
puts duplicate_count("foswgJOLN9rhs9F3nNsZk6lwvcFuVuR6WGtwOp0rGka7tk7usOS0hInFgdRFGIWrTWHrMg4auk6oZoyRHO2SNj5J")
