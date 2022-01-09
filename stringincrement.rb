#Your job is to write a function which increments a string, to create a new string.

#If the string already ends with a number, the number should be incremented by 1.
#If the string does not end with a number. the number 1 should be appended to the new string.

#Examples:
#foo -> foo1
#foobar23 -> foobar24
#foo0042 -> foo0043
#foo9 -> foo10
#foo099 -> foo100

def increment_string(input)
    #your code here
    items = input.split("")
    count = 0
    for i in items do
        i.to_i
        count += 1 if i.match(/\d/)
    end 
    given_numbers = items.select {|i| i.match(/\d/) }
    puts given_numbers
    if given_numbers


end



#increment_string("foo")
puts increment_string("foobar001")
#increment_string("foobar1")
#increment_string("foobar00") 
#increment_string("foobar99") 
#increment_string("")
