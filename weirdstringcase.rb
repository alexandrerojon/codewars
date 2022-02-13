=begin
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

Examples:
weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
=end

def weirdcase string
  words = string.split(" ")
  translated_words = []
  words.each do |word|
    letters = word.split("")
    letters.each_with_index do |letter, index|
      letter.upcase! if index.even?
    end
    translated_words << letters.join()
  end
  return translated_words.join(" ")
end

puts weirdcase('This')
puts weirdcase('is')
puts weirdcase('This is a test')
