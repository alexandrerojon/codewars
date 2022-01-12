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

    items = input.split('')
    first_index = nil
    last_index = nil
    for item in items do 
        if item.match(/\d/) && first_index.nil?
            first_index = items.index(item)
        elsif item.match(/\d/) && last_index.nil?
            last_index = items.rindex(item)
        elsif item.match(/\d/) && !first_index.nil? && !last_index.nil?
            index = item.to_i
            last_index = items.rindex(item)
        else
            #skip
        end
    end

    items[last_index].to_i += 1 if items[last_index].to_i < 9
    puts first_index
    puts last_index
end

# .match(/\d/)

#increment_string("foo")
increment_string("foobar029")
#increment_string("foobar1")
increment_string("foobar00") 
#increment_string("foobar99") 
#increment_string("")
