#The marketing team is spending way too much time typing in hashtags.
#Let's help them with our own Hashtag Generator!

#Here's the deal:

#It must start with a hashtag (#).
#All words must have their first letter capitalized.
#If the final result is longer than 140 chars it must return false.
#If the input or the result is an empty string it must return false.
#Examples
#" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
#"    Hello     World   "                  =>  "#HelloWorld"
#""                                        =>  false




def generateHashtag(str)
    return false if str.empty?
    items = str.split(" ")
    items.drop_while {|item| item.is_a? Integer}
    items.map!{ |item| item.capitalize.strip }

    return false if items.empty? || items.join('').length > 140 || items.join('').size > 139
    return "#" + items.join('')
    
end

  
puts generateHashtag("")
puts generateHashtag(" " * 200)
puts generateHashtag("Do We have A Hashtag")
puts generateHashtag("Codewars")
puts generateHashtag("Codewars Is Nice")
puts generateHashtag("Codewars is nice")
puts generateHashtag("code" + " " * 140 + "wars")
puts generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat")
puts generateHashtag("a" * 139) 
puts generateHashtag("a" * 140)
