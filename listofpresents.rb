# Leo's girlfriend asked him to buy a gift list during his next trip, now he wants to know how many of them will he be able to buy.

# Write a function to help Leo out. The first parameter of the function is Leo's budget; the second one is an array containing the price of each gift. You should return an integer representing the maximum amount of gifts Leo can buy.

# Example:
# Maximum budget: 20
# Gift List: [13, 2, 4, 6, 1]
# Should return 4.

# _ NOTE: All numbers will be integers >= 0, and the array will never be empty. _

def how_many_gifts(max_budget, gifts)
  # Global variables needed throughout the code
  purse = 0
  purse += max_budget
  amount_of_gifts = 0

  # Sort the array of gifts to ensure max number of gifts can be bought
  gifts.sort!

  # Iteration to go through each present, and deduct until can no longer purchase gifts
  for gift in gifts do
    if purse >= gift
      purse -= gift
      amount_of_gifts += 1
    else
      return amount_of_gifts
    end
  end
  return amount_of_gifts
end


puts how_many_gifts(20, [13, 2, 4, 6, 1]) # 4
puts how_many_gifts(0, [1]) # 0
puts how_many_gifts(90, [87, 3, 5, 25, 1, 3, 4, 6, 20]) # 8
