# John has invited some friends. His list is:

# s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
# Could you make a program that

# makes this string uppercase
# gives it sorted in alphabetical order by last name.
# When the last names are the same, sort them by first name. Last name and first name of a guest come in the result between parentheses separated by a comma.

# So the result of function meeting(s) will be:

# "(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
# It can happen that in two distinct families with the same family name two people have the same first name too.

def meeting(s)
  # Gloabl variables needed
  given_names = s.split(';')
  all_names = []

  # Iteration through each first and last name pairing
  for name in given_names do
    name.upcase!
    name = name.gsub(/\W/, ' ')
    reversed_name = name.split(' ').reverse!
    reversed_name[0].ljust(10, ' ')
    reversed_name[0].insert(0, '(')
    reversed_name[1].insert(-1, ')')
    all_names << reversed_name.join(', ')
  end

  # Sort the final array and return it
  all_names.sort!
  return all_names.join('')
end


puts meeting("Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill")
