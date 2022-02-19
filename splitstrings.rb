=begin

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']

=end

def solution(str)
  given_string = str.split("")
  if given_string.length.even?
    even_array = given_string.each_slice(2).to_a
    return even_array
  else
    given_string << "_"
    odd_array = given_string.each_slice(2).to_a
    return odd_array
  end
end

puts solution("abcdef") #["ab", "cd", "ef"]
#solution("abcdefg") #["ab", "cd", "ef", "g_"]
#solution("") #[]
#solution("abracadabra")
