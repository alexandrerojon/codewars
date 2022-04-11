# You must create a method that can convert a string from any format into PascalCase. This must support symbols too.

# Don't presume the separators too much or you could be surprised.

# For example: (Input --> Output)

# "example name" --> "ExampleName"
# "your-NaMe-here" --> "YourNameHere"
# "testing ABC" --> "TestingAbc"


def camelize(str)
  # split the string and seperate by any non-letters and store in array
  words = str.split(/[\s\W'_']/)

  # iterate through each item in that array to clean it
  words.each{|word|
    words.delete(word) if word.empty?
    word.strip
    word.downcase!
    word.capitalize!
  }
  return words.join()

end


# puts camelize("john doe") #"JohnDoe"
# puts camelize("frank peas") #"FrankPeas"
# puts camelize("Rugby:Club:2013") #"RugbyClub2013"
# puts camelize("Arabian_String-Test") #"ArabianStringTest"
# puts camelize("Ninja-Test--01") #"NinjaTest01"
puts camelize("'quOted' => 'What'") #"QuotedWhat"
# puts camelize("dir/for/data") #"DirForData"
