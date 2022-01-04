def parts_sums(ls)
    # your code
    return [0] if ls.length == 0 || ls.length > 100

    all_sums = []
    n_of_items = ls.length
    n_of_items.times do
        all_sums.push(ls.sum) 
        ls.delete_at(0)
    end
    all_sums.push(0)
    return all_sums
end




puts parts_sums([0, 1, 3, 6, 10])
puts parts_sums([1, 2, 3, 4, 5, 6])
puts parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358])

