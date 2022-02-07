=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
=end



def domain_name(url)

  # Split url into items in an array to iterate through and manipulate
  entire_string = url.split("")

  # Statement that will remove everything coming after more than 1 dot
  while entire_string.count(".") > 1
    dot_index = entire_string.rindex(".")
    entire_string = entire_string.slice(0, dot_index)
  end

  # join the elements into a stirng to call include method on it
  word = entire_string.join()

  # determine if below prefixes exist and return an array with prefixes removed
  if word.include? "http://www."
    word = entire_string.slice(11..-1)
  elsif word.include? "http://"
    word = entire_string.slice(7..-1)
  elsif word.include? "www."
    word = entire_string.slice(4..-1)
  elsif word.include? "https://"
    word = entire_string.slice(8..-1)
  end



  # Statement that returns an array with everything following the dot if it
  # comes at the end of the array
  if word.is_a? String
    word = word.split("")
    index = word.index(".")
    index = (index.to_i - 1)
    word = word.slice(0..index)
  else
    index = word.index(".")
    index = (index.to_i - 1)
    word = word.slice(0..index)
  end


  # join the array and return the elements as a single string
  if word.class == String
    return word
  elsif word.class == Array
    return word.join()
  end
end



# Below test cases provided
puts domain_name("http://google.com")
puts domain_name("http://google.co.jp")
puts domain_name("www.xakep.ru")
puts domain_name("https://youtube.com")
puts domain_name("http://www.codewars.com/kata/")
puts domain_name("icann.org")
