# Given an input of an array of digits, return the array with each digit incremented by its position in the array: the first digit will be incremented by 1, the second digit by 2, etc. Make sure to start counting your positions from 1 ( and not 0 ).
# Your result can only contain single digit numbers, so if adding a digit with its position gives you a multiple-digit number, only the last digit of the number should be returned.
# Notes:
# return an empty array if your array is empty
# arrays will only contain numbers so don't worry about checking that
# Examples:
# [1, 2, 3]  -->  [2, 4, 6]   #  [1+1, 2+2, 3+3]

# [4, 6, 9, 1, 3]  -->  [5, 8, 2, 5, 8]  #  [4+1, 6+2, 9+3, 1+4, 3+5]
#                                        #  9+3 = 12  -->  2

def incrementer(nums)
  final_array = []
  nums.each_with_index do |number, index|
    number += (index + 1)
    if number > 9
      number = (number - 10)
    end
    final_array << number
  end
  return final_array
end


#incrementer([1,2,3])
puts incrementer([4,6,7,1,3])
incrementer([3,6,9,8,9])
# incrementer([1,2,3,4,5,6,7,8,9,9,9,9,9,8])
