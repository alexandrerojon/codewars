=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
=end



def domain_name(url)

  entire_string = url.split("")

  if entire_string.count(".") > 1
    # do this
    puts "more than one!"
  elsif entire_string.count(".") == 1
    # find index of the dot and delete everything in the array from there to end
    puts " Just one!"
    dot_index = entire_string.index(".")
    entire_string = entire_string.slice(0, dot_index).join()
    puts entire_string
  else
  end


end



# Below test cases provided
domain_name("http://google.com")
#domain_name("http://google.co.jp")
#domain_name("www.xakep.ru")
#domain_name("https://youtube.com")
