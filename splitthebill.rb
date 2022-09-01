# t's tricky keeping track of who is owed what when spending money in a group. Write a function to balance the books.

# The function should take one parameter: an object/dict with two or more name-value pairs which represent the members of the group and the amount spent by each.
# The function should return an object/dict with the same names, showing how much money the members should pay or receive.
# Further points:

# The values should be positive numbers if the person should receive money from the group, negative numbers if they owe money to the group.
# If value is a decimal, round to two decimal places.
# Translations and comments (and upvotes!) welcome.

# Example
# 3 friends go out together: A spends £20, B spends £15, and C spends £10. The function should return an object/dict showing that A should receive £5, B should receive £0, and C should pay £5.

# group = {
#     'A'=>20,
#     'B'=>15,
#     'C'=>10
# }

# split_the_bill(group) # returns {'A'=>5, 'B'=>0, 'C'=>-5}


def split_the_bill(x)
  #your code here
end


# Test cases
split_the_bill({'A'=>20, 'B'=>15, 'C'=>10}) # {'A'=>5.00, 'B'=>0.00, 'C'=>-5.00}
split_the_bill({'A'=>40, 'B'=>25, 'X'=>10}) #({'A'=>15.00, 'B'=>0.00, 'X'=>-15.00}
split_the_bill({'A'=>40, 'B'=>25, 'C'=>10, 'D'=>153, 'E'=>58}) #({'A'=>-17.20, 'B'=>-32.20, 'C'=>-47.20, 'D'=>95.80, 'E'=>0.80})
split_the_bill({'A'=>475, 'B'=>384, 'C'=>223, 'D'=>111, 'E'=>19}) #({'A'=>232.6, 'B'=>141.6, 'C'=>-19.4, 'D'=>-131.4, 'E'=>-223.4})
split_the_bill({'A'=>20348, 'B'=>493045, 'C'=>2948, 'D'=>139847, 'E'=>48937534, 'F'=>1938724, 'G'=>4, 'H'=>2084}) #({'A'=>-6421468.75, 'B'=>-5948771.75, 'C'=>-6438868.75, 'D'=>-6301969.75, 'E'=>42495717.25, 'F'=>-4503092.75, 'G'=>-6441812.75, 'H'=>-6439732.75})
