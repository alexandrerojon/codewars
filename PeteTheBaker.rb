#Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

#Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

#Examples:

# must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200});
# must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});

def cakes(recipe, available)
    #My code is better than Allison's
    have_all_ingredients = true
    n_of_cakes_possible = 0
    current_cake = Hash.new
    #Iteration through the ingredients needed per recipe
    recipe.each do |key, value|
        #statement returning false if we cannot find an ingredient required in the recipe in the available ingredients
        have_all_ingredients = false if !available[key]
        #Push the amount of times possible we can create the current cake into local hash
        times_possible = available[key].to_i / value.to_i
        current_cake.store(key, times_possible)
    end
    #Find the lowest value current cakes
    n_of_cakes_possible = current_cake.sort_by { |key, value| value }.first[1]

    return n_of_cakes_possible = 0 if have_all_ingredients == false
    return n_of_cakes_possible
end

puts cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200})
puts cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000})
puts cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000})
puts cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20})
puts cakes({"eggs"=>4, "flour"=>400},{})
puts cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1})
