def anagrams(word, words)
    existing_anagrams = []
    sorted_word = word.chars.sort_by(&:downcase).join
    for w in words do
      current_word = w.chars.sort_by(&:downcase).join
      existing_anagrams.push(w) if current_word == sorted_word
    end
    return existing_anagrams
  end 
  
  

  
  word0 = "a"
  result0 = ["a"]
  wrong0 = ["b", "c", "d"]
  anagrams(word0, result0)
  
  word1 = "ab"
  result1 = ["ab", "ba"]
  wrong1 = ["aa", "bb", "cc", "ac", "bc", "cd"]
  anagrams(word1, result1)
  
  word2 = "abba"
  result2 = ["aabb", "bbaa", "abab", "baba", "baab"]
  wrong2 = ["abcd", "abbba", "baaab", "abbab", "abbaa", "babaa"]
  anagrams(word2, result2)