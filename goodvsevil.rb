puts 'Welcome to my Good Vs. Evil battlefield simulator!' 

def good_vs_evil(good, evil)
  # forces of good
  good = good.split("")
  evil = evil.split("")
  good_tally = 0
  evil_tally = 0
  good_forces = {
    "Hobbits" => 1,
    "Men" => 2,
    "Elves" => 3,
    "Dwarves" => 3,
    "Eagles" => 4,
    "Wizards" => 10
  }
  # forces of evil 
  evil_forces = {
    "Orcs" => 1,
    "Men" => 2,
    "Wargs" => 2,
    "Goblins" => 2,
    "Uruk Hai" => 3,
    "Trolls" => 5,
    "Wizards" => 10
  }

  puts "---"
  puts good[5]
  puts "---"
  good_tally += good_forces["Hobbits"] * good[0].to_i
  good_tally += good_forces["Men"] * good[1].to_i
  good_tally += good_forces["Elves"] * good[2].to_i
  good_tally += good_forces["Dwarves"] * good[3].to_i
  good_tally += good_forces["Eagles"] * good[4].to_i
  good_tally += good_forces["Wizards"] * good[5].to_i

  
  puts good_tally
  
end


#Hobbits, Men, Elves, Dwarves, Eagles, Wizards.
#Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.

puts good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
puts good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
puts good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')