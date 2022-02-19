=begin

Complete the solution so that the function will break up camel casing,
using a space between words.

Example
"camelCasing"  =>  "camel Casing"
"identifier"   =>  "identifier"
""             =>  ""

=end

def solution(string)
  entire_word = string.split("")
  entire_word.map! { |item|
    if item.match?(/[A-Z]/)
      item = " " + item
    else
      item = item
    end
  }
  return entire_word.join()
end

puts solution('camelCasing') #'camel Casing
puts solution('camelCasingTest') #'camel Casing Test'
