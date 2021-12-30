def count_smileys(arr)
    count = 0 

    for s in arr do
        # variables that will change throughout tests
        is_valid_emoji = false
        eyescondition = false
        nosecondition = false
        smilecondition = false

        # Check if the eyes are valid
        eyescondition = true if s[0] == ":" || s[0] == ";"

        # check the length, and if greater than two than ensure correct nose
        if s.length == 3
            nosecondition = true if s[1] == "-" || s[1] == "~"
        elsif s.length == 2 
            nosecondition = true
        else 
            nosecondition = false
        end
            
        # ensure valid smiley at end
        smilecondition = true if s[-1] == ")" || s[-1] == "D" 

        # increase the count if all conditions are met
        count += 1 if eyescondition == true && nosecondition == true && smilecondition == true 

    end
    puts count
    return count
end 


count_smileys([]) # 0
count_smileys([":D",":~)",";~D",":)"]) # 4
count_smileys([":)",":(",":D",":O",":;"]) # 2
count_smileys([";]", ":[", ";*", ":$", ";-D"]) # 1 
count_smileys([";", ")", ";*", ":$", "8-D"]) # 0

# Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ; 
# A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
# Every smiling face must have a smiling mouth that should be marked with either ) or D