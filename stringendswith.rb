# Complete the solution so that it returns true if the first argument(string)
# passed in ends with the 2nd argument (also a string).

# solution('abc', 'bc') // returns true
# solution('abc', 'd') // returns false


def solution(str, ending)
  # TODO: complete
  return str.end_with?(ending)
end


solution('abc', 'bc')
solution('abc', 'd')
