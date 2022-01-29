
fishies = File.read('input.txt').split(',')

# Convert all string items to integers
fishies.map! { |fish| fish.to_i }


puts fishies.length
# Map through my fishies 
fishies.map! {|fish| 

    # if fish is == 0, then change fish to 8 & then append a 0 to the end of the fishies array
    if fish == 0 
        fish = 8
        fishies << (0)

    # else reduce fish by 1 
    else 
        fish -= 1
    end

}
# Return total amount of fishies 
puts fishies.length