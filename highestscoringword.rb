# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
# You need to return the highest scoring word as a string.
# If two words score the same, return the word that appears earliest in the original string.
# All letters will be lowercase and all inputs will be valid.


def high(x)
  letters = x.split('')
  final_letters = letters.sort!.join().strip
  first_letter = final_letters[0]
  amount = final_letters.count(first_letter)
  puts amount

end



high('man i need a taxi up to ubud') #taxi
# high('what time are we climbing up the volcano') #volcano
# high('take me to semynak') #semynak
# high('aa b') #'aa'
# high('b aa') #'b'
# high('bb d') #'bb'
# high('d bb') #'d'
# high('aaa b')  #'aaa'
