# You must create a method that can convert a string from any format into PascalCase. This must support symbols too.

# Don't presume the separators too much or you could be surprised.

# For example: (Input --> Output)

# "example name" --> "ExampleName"
# "your-NaMe-here" --> "YourNameHere"
# "testing ABC" --> "TestingAbc"


def camelize(str)
  # have to be careful for seperators
  words = str.split(/[^a-zA-Z0-9 ']/)
  puts words

end


camelize("john doe") #"JohnDoe"
camelize("frank peas") #"FrankPeas"
camelize("Rugby:Club:2013") #"RugbyClub2013"
camelize("Arabian_String-Test") #"ArabianStringTest"
camelize("Ninja-Test--01") #"NinjaTest01"
camelize("'quOted' => 'What'") #"QuotedWhat"
camelize("dir/for/data") #"DirForData"
