puts 'Welcome to my Good Vs. Evil battlefield simulator!'

def good_vs_evil(good, evil)
  # forces of good
  given_good = good.split(" ")
  given_evil = evil.split(" ")
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

  good_tally += good_forces["Hobbits"] * given_good[0].to_i
  good_tally += good_forces["Men"] * given_good[1].to_i
  good_tally += good_forces["Elves"] * given_good[2].to_i
  good_tally += good_forces["Dwarves"] * given_good[3].to_i
  good_tally += good_forces["Eagles"] * given_good[4].to_i
  good_tally += good_forces["Wizards"] * given_good[5].to_i

  evil_tally += evil_forces["Orcs"] * given_evil[0].to_i
  evil_tally += evil_forces["Men"] * given_evil[1].to_i
  evil_tally += evil_forces["Wargs"] * given_evil[2].to_i
  evil_tally += evil_forces["Goblins"] * given_evil[3].to_i
  evil_tally += evil_forces["Uruk Hai"] * given_evil[4].to_i
  evil_tally += evil_forces["Trolls"] * given_evil[5].to_i
  evil_tally += evil_forces["Wizards"] * given_evil[6].to_i


  if good_tally > evil_tally
    return "Battle Result: Good triumphs over Evil"

  elsif evil_tally > good_tally
    return "Battle Result: Evil eradicates all trace of Good"
  else
    return "Battle Result: No victor on this battle field"
  end
end

#Hobbits, Men, Elves, Dwarves, Eagles, Wizards.
#Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.
good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
