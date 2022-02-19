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
  entire_word.each_with_index do |item, index|
    # puts item
    # puts index
    if item.match?(/[A-Z]/)
      item = " " + item
      puts item
    end
  end
  puts entire_word.join()

end

solution('camelCasing') #'camel Casing
# solution('camelCasingTest') #'camel Casing Test'
