# A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

# 232
# 110011
# 54322345
# Complete the function to test if the given number (num) can be rearranged to form a numerical palindrome or not. Return a boolean (true if it can be rearranged to a palindrome, and false if it cannot). Return "Not valid" if the input is not an integer or is less than 0.

# For this kata, single digit numbers are NOT considered numerical palindromes.

# Examples
# 5        =>  false
# 2121     =>  true
# 1331     =>  true
# 3357665  =>  true
# 1294     =>  false
# "109982" =>  "Not valid"
# -42      =>  "Not valid"

def palindrome(num)
  return false if num.class != Integer
  input_array = num.to_s.split('')
  input_length = input_array.length()
  first_part = input_array.slice!(0..((input_length/2) - 1))
  puts first_part
  puts input_array
end


palindrome(5) #false
palindrome(1212) #true
palindrome(1331) #true
palindrome(194) #false
# palindrome(3357665) #true
# palindrome("357665") #'Not valid'
