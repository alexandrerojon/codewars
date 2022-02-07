=begin
Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or camelCase in Java) for strings. All words must have their first letter capitalized without spaces.

For instance:

'hello case'.camelcase => HelloCase
'camel case word'.camelcase => CamelCaseWord
=end

def camelcase(item)
  item.rstrip!
  item.lstrip!
  words = item.split(" ")
  for word in words do
    word.capitalize!
  end
  return words.join()
end



camelcase("test case")
camelcase("camel case method")
camelcase("say hello")
camelcase(" camel case method")
