def scramble(s1,s2)
    first_word = s1.split('').select { |item| s2.include?   item }
    first_word = first_word.sort
    second_word = s2.split('')
    second_word = second_word.sort
  
    if first_word.join() == second_word.join()
      return true
    else
      return false  
    end
  
  end