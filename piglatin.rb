#Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

#Examples
#pig_it('Pig latin is cool') # igPay atinlay siay oolcay
#pig_it('Hello world !')     # elloHay orldway ! 

def pig_it text
    pl_full = ""
    given_words = text.split(" ")
    for word in given_words do
        if word.length == 1 && word.match(/\W/) 
            pull_full << word
        else 
            end_index = (word.length - 1)
            first_letter = word[0]
            word = word.slice!(1..end_index)
            word << first_letter
            pl_full << word + "ay " 
        end
    end
    return pl_full.strip
end 



puts pig_it('Pig latin is cool')
puts pig_it('This is my string')
puts pig_it('Hello. Harry')

