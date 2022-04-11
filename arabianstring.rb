# You must create a method that can convert a string from any format into PascalCase. This must support symbols too.

# Don't presume the separators too much or you could be surprised.

# For example: (Input --> Output)

# "example name" --> "ExampleName"
# "your-NaMe-here" --> "YourNameHere"
# "testing ABC" --> "TestingAbc"


def camelize(str)
  # remove any non-letter, or non-character from the given string
  cleaned_string = str.gsub(/[\W'_']/,' ')

  # split the string and seperate by a space
  words = cleaned_string.split(' ')

  # iterate through each item in that array to clean it
  words.each{|word|
    words.delete(word) if word.empty?
    word.strip
    word.downcase!
    word.capitalize!
  }

  # return array using join to remove all spaces
  return words.join()
end


camelize("john doe") #"JohnDoe"
camelize("frank peas") #"FrankPeas"
camelize("Rugby:Club:2013") #"RugbyClub2013"
camelize("Arabian_String-Test") #"ArabianStringTest"
camelize("Ninja-Test--01") #"NinjaTest01"
camelize("'quOted' => 'What'") #"QuotedWhat"
camelize("dir/for/data") #"DirForData"
