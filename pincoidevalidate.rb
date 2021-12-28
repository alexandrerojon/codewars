def validate_pin(pin)
    #return true or false
    special = ["?", "<", ">", ".", "[", "]", "}", "{", "=", "-", ")", "(", "*", "&", "^", "%", "$", "#"]
    response = false

    response = true if pin.length == 4 || pin.length == 6
    response = false if pin.count("a-zA-Z") > 0

    for character in special do
        response = false if pin.include?(character)
    end

    puts pin
    puts response
    return response
    



end



validate_pin("")
validate_pin("1")
validate_pin("1111")
validate_pin("123456")
validate_pin("1234567890")
validate_pin("12")
validate_pin("-12345")