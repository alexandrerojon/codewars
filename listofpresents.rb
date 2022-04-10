# Leo's girlfriend asked him to buy a gift list during his next trip, now he wants to know how many of them will he be able to buy.

# Write a function to help Leo out. The first parameter of the function is Leo's budget; the second one is an array containing the price of each gift. You should return an integer representing the maximum amount of gifts Leo can buy.

# Example:
# Maximum budget: 20
# Gift List: [13, 2, 4, 6, 1]
# Should return 4.

# _ NOTE: All numbers will be integers >= 0, and the array will never be empty. _

def how_many_gifts(max_budget, gifts)
  # your code goes here
  amount_of_gifts = 0
  purse = max_budget
  for gift in gifts do
    if purse >= gift
      purse -= gift
      amount_of_gifts += 1
    end
  end
  return amount_of_gifts
end
