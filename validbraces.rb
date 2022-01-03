def validBraces(braces)
    # TODO
    response = true
    # changes the string to an array
    given_braces = braces.split("")
    # return false if the string's length is odd
    return false if given_braces.length.odd?
   
  
    first_middle_index = (given_braces.length / 2 - 1)
    second_middle_index = (given_braces.length / 2)
   
    first_second_index = (given_braces.length / 2 - 2)
    second_second_index = (given_braces.length / 2 + 1)
  
  
    return false if given_braces[first_middle_index] == "(" && given_braces[second_middle_index] != ")"
    return false if given_braces[first_middle_index] == "[" && given_braces[second_middle_index] != "]"
    return false if given_braces[first_middle_index] == "{" && given_braces[second_middle_index] != "}"
   
    return false if given_braces[first_second_index] == "(" && given_braces[second_second_index] != ")"
    return false if given_braces[first_second_index] == "[" && given_braces[second_second_index] != "]"
    return false if given_braces[first_second_index] == "{" && given_braces[second_second_index] != "}"
   
    return false if given_braces.first == "(" && given_braces.last != ")"
    return false if given_braces.first == "[" && given_braces.last != "]"
    return false if given_braces.first == "{" && given_braces.last != "}"
   
    #iterate through each item to ensure that array contains the opposite
    for item in given_braces do
      return false if item == "(" && !given_braces.include?(")")
      return false if item == "[" && !given_braces.include?("]")
      return false if item == "{" && !given_braces.include?("}")
    end
   
    return response
  
  end
  
  
  puts validBraces( "()" )
  puts validBraces( "[(])" )
  puts validBraces( "[({})](]" )
  puts validBraces( "[({})](]" )
  puts validBraces( "}}]]))}])" )
  puts validBraces( "(]({()})])" )
  
   
  