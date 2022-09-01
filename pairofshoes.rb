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
  # Statement to return false if odd number of shoes given
  return false if shoes.length.odd?

  shoes.each do |shoe|
    # Switch statement
    opposite_foot = 0
    opposite_foot =+ 1 if shoe[0] < 1

    # Current shoe and foot size
    current_foot = []
    current_foot << shoe[0]
    current_foot << shoe[1]

    # Desired shoe and foot size that we need to find in array
    desired_foot = []
    desired_foot << opposite_foot
    desired_foot << shoe[1]

    # Parse through entire given array and look for desired shoe and foot
    if shoes.count(desired_foot) < 1
      puts "Hello"
      return false
    else
      first_index = shoes.index(current_foot)
      second_index = shoes.index(desired_foot)
      shoes.delete_at(first_index)
      shoes.delete_at(second_index)
      puts shoes.join()
    end

  end

  return true
end

# Test cases below
# puts pair_of_shoes([[0,21],[1,23],[1,21],[0,23]]) #true
# puts pair_of_shoes([[0,21],[1,23],[1,21],[1,23]]) #false
# puts pair_of_shoes([[0,23],[1,21],[1,23],[0,21],[1,22],[0,22]]) #true
# puts pair_of_shoes([[0,23],[1,21],[1,23],[0,21]]) #true
# puts pair_of_shoes([[0,23],[1,21],[1,22],[0,21]]) #false
# puts pair_of_shoes([[0,23]]) #false

# Additional more advanced test cases
# puts pair_of_shoes([[0,23],[1,23]]) #true
# puts pair_of_shoes([[0,23],[1,23],[1,23],[0,23]]) #true
# puts pair_of_shoes([[0,23],[1,22]]) #false
puts pair_of_shoes([[0,23],[1,23],[1,23],[0,23],[0,23],[0,23]]) #false
# puts pair_of_shoes([[0,21],[1,23],[0,21],[1,23]]) #false
# puts pair_of_shoes([[1, 42], [0, 42], [1, 33], [0, 33]]) #true
