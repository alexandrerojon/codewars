=begin

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']

=end

def solution(str)
  final_array = []
  given_string = str.split("")
  return final_array if str.length == 0
  if given_string.length.even?
    even_array = given_string.each_slice(2).to_a
    for pairing in even_array.each do
      final_array << pairing.join()
    end
  else
    given_string << "_"
    odd_array = given_string.each_slice(2).to_a
    for pairing in odd_array.each do
      final_array << pairing.join()
    end
  end
  return final_array
end

puts solution("abcdef") #["ab", "cd", "ef"]
puts solution("abcdefg") #["ab", "cd", "ef", "g_"]
puts solution("") #[]
puts solution("abracadabra")
