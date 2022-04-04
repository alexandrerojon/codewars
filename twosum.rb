# Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple / list (depending on your language) like so: (index1, index2).

# For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

# The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

# twoSum [1, 2, 3] 4 === (0, 2)

def two_sum(numbers, target)
  numbers.each_with_index do |item, index|
    for number in numbers do
      return index, numbers.rindex(number) if item + number == target
    end
  end
end


# puts two_sum([1, 2, 3], 4) # 0, 2
# puts two_sum([1234, 5678, 9012], 14690) # 1, 2
# puts two_sum([2, 2, 3], 4) # 0, 1
puts two_sum([70, 28, 95, 69, 42, 29, 35, 21, 70, 46, 28, 60, 95, 89, 5, 96, 93, 44, 64, 50, 43, 35, 84, 3, 81, 65, 81, 21, 11, 34, 91, 68, 88, 36], 84)
