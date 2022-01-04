#Write a function that takes in a string of one or more words, and returns the same string, but with all five or more 
#letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. 
#Spaces will be included only when more than one word is present.

#Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords( "This is a test") => returns
# "This is a test" spinWords( "This is another test" )=> returns "This is rehtona test"


def spin_words(string)
    # Split the string into an array of words
    string = string.split(" ")
    puts string
    # Iterate through the words in the array
    for word in string do
        word.reverse! if word.length >= 5
    end
    reconstructed_string = string.join(" ")
    puts reconstructed_string
end



spin_words("Welcome")
spin_words("Hey fellow warriors")