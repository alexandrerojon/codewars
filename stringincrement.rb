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
    puts input
    items = input.split('')
    length_of_input = (items.length - 1)
    total_integers = items.select {|item| item.match(/\d/)}
    case total_integers.length
        when 3
            all_numbers = items.select {|item| item.match(/\d/) }.join()
            puts all_numbers.
         

           # if items.last.to_i < 9
            #    items[length_of_input] = items.last.to_i + 1
           # elsif items.last == 0
             #   items[length_of_input - 1] = items[length_of_input - 1 ].to_i + 1
            #end
        when 2 
            # all_numbers = items.select {|item| item.match(/\d/) }.join()

            if items.last.to_i < 9
                items[length_of_input] = items.last.to_i + 1
            elsif items.last == 0
                items[length_of_input - 1] = items[length_of_input - 1 ].to_i + 1
            end
        when 1
            all_numbers = items.select {|item| item.match(/\d/) }.join()

        when 0
            return input
    end

    return items.join("")
end



#increment_string("foo")
increment_string("foobar029")
#increment_string("foobar1")
increment_string("foobar00") 
#increment_string("foobar99") 
#increment_string("")
