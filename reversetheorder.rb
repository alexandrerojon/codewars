=begin
Given a string, reverse all the words which have odd length. The even length words are not changed.
Examples
reverse_odd("Bananas") ➞ "sananaB"

reverse_odd("One two three four") ➞ "enO owt eerht four"

reverse_odd("Make sure uoy only esrever sdrow of ddo length")
➞ "Make sure you only reverse words of odd length"
Notes
There is exactly one space between each word and no punctuation is used.

=end

def reverse_odd(str)
  words = str.split(" ")
  words.map! { |word|
    if word.length.odd?
      word.reverse!
    else
      word = word
    end
  }
  puts words.join(" ")
end

reverse_odd("Bananas") # "sananaB"
reverse_odd("One two three four") # "enO owt eerht four"
