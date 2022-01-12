#Complete the function/method so that it takes a PascalCase string and returns the string in snake_case notation. Lowercase characters can be numbers. If the method gets a number as input, it should return a string.

#Examples
#"TestController"  -->  "test_controller"
#"MoviesAndBooks"  -->  "movies_and_books"
#"App7Test"        -->  "app7_test"
#1                 -->  "1" 

def to_underscore(string)
    # TODO: complete
    return string.to_s if string.is_a? Integer
    items = string.split("")
    items.map!{|item| 
        if item.match(/[A-Z\d]/) 
            item = "_" + item.downcase 
        else 
            item = item
        end
    }

    puts items.join().delete_prefix("_")
    
end 


#to_underscore("TestController") 
#to_underscore("MoviesAndBooks") 
#to_underscore("App7Test") 
to_underscore(1)