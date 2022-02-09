=begin
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))(("
Notes
Assertion messages may be unclear about what they display in some languages. If you read "...It Should encode XXX", the "XXX" is the expected result, not the input!
=end

def duplicate_encode(word)
  split_word = word.split("")
  split_word.map! { |character|
    character.downcase!
    if word.count(character) > 1
      character = ")"
    else
      character = "("
    end
  }
  return split_word.join("")
end


puts duplicate_encode("din") #(((
puts duplicate_encode("recede") #()()()
puts duplicate_encode("Success") #)())())
puts duplicate_encode("(( @") #"))((
puts duplicate_encode('Supralapsarian') #(()))())())()(
