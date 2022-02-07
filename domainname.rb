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



  puts entire_string.join()


end



# Below test cases provided
domain_name("http://google.com")
domain_name("http://google.co.jp")
domain_name("www.xakep.ru")
domain_name("https://youtube.com")
