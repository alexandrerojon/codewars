# Yesterday you found some shoes in your room. Each shoe is described by two values:
# type indicates if it's a left or a right shoe;
# size is the size of the shoe.
# Your task is to check whether it is possible to pair the shoes you found in such a
# way that each pair consists of a right and a left shoe of an equal size.
# For:

# shoes = [[0, 21],
#          [1, 23],
#          [1, 21],
#          [0, 23]]
# the output should be true;
# For:
# shoes = [[0, 21],
#          [1, 23],
#          [1, 21],
#          [1, 23]]
# the output should be false.

def pair_of_shoes(shoes)
  return false if shoes.length.odd? || shoes.length < 4
  shoes.each do |shoe|
    # Switch statement
    which_foot = 0
    which_foot == 1 if shoe.zero?

    puts shoe
    puts "----"
    return false if shoes.find
  end
  return true
end

# Test cases below
puts pair_of_shoes([[0,21],[1,23],[1,21],[0,23]]) #true
# puts pair_of_shoes([[0,21],[1,23],[1,21],[1,23]]) #false
# puts pair_of_shoes([[0,23],[1,21],[1,23],[0,21],[1,22],[0,22]]) #true
# puts pair_of_shoes([[0,23],[1,21],[1,23],[0,21]]) #true
# puts pair_of_shoes([[0,23],[1,21],[1,22],[0,21]]) #false
# pair_of_shoes([[0,23]]) #false
