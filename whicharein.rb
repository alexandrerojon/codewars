=begin
Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.

Example 1:
a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

Example 2:
a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

Notes:
Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
Beware: r must be without duplicates.
=end

def in_array(array1, array2)
  array3 = []
  for a2word in array2 do
    for a1word in array1 do
      if a2word.include?(a1word)
        array3 << a1word
      end
    end
  end
  array3 = array3.uniq
  return array3.sort!
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
puts in_array(a1, a2) #["arp", "live", "strong"]
a1 = ["tarp", "mice", "bull"]
in_array(a1, a2) #[]
