=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.
Examples
scramble('rkqodlw', 'world') ==> True
scramble('cedewaraaossoqqyt', 'codewars') ==> True
scramble('katas', 'steak') ==> False
=end


def scramble(s1,s2)
    first_word = []
    second_word = s2.split('')

    s1.split('').select { |item| 
        if second_word.include? item 
            index = second_word.index(item)
            first_word << item
            second_word.delete_at(index)
        end
    }
    first_word = first_word.sort
    second_word = second_word.sort
    third_word = s2.split('').sort

    if first_word.join() == third_word.join()
        return true
    else
        return false  
    end
end


# Test cases

puts scramble('rkqodlw','world')
puts scramble('cedewaraaossoqqyt','codewars')
puts scramble('katas','steak')
puts scramble('scriptjava','javascript')
puts scramble('scriptjava','javascript')