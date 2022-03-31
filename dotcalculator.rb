# You have to write a calculator that receives strings for input. The dots will represent the number in the equation. There will be dots on one side, an operator, and dots again after the operator. The dots and the operator will be separated by one space.

# Here are the following valid operators :

# + Addition
# - Subtraction
# * Multiplication
# // Integer Division
# Your Work (Task)
# You'll have to return a string that contains dots, as many the equation returns. If the result is 0, return the empty string. When it comes to subtraction, the first number will always be greater than or equal to the second number.

# Examples (Input => Output)
# * "..... + ..............." => "...................."
# * "..... - ..."             => ".."
# * "..... - ."               => "...."
# * "..... * ..."             => "..............."
# * "..... * .."              => ".........."
# * "..... // .."             => ".."
# * "..... // ."              => "....."
# * ". // .."                 => ""
# * ".. - .."                 => ""


def dot_calculator equation
  items = equation.split(" ")
  dots = []
  first_amount = items.first.size
  second_amount = items.last.size
  case items[1]
  when "+"
    amount_of_dots = first_amount + second_amount
    amount_of_dots.times do dots << "."
    end
  when "-"
    amount_of_dots = first_amount - second_amount
    amount_of_dots.times do dots << "."
    end
  when "*"
    amount_of_dots = first_amount * second_amount
    amount_of_dots.times do dots << "."
    end
  when "//"
    amount_of_dots = first_amount / second_amount
    amount_of_dots.times do dots << "."
    end
  end
  return dots.join("")
end


puts dot_calculator("..... + ...............")
puts dot_calculator("..... - ...")
puts dot_calculator("..... - .")
puts dot_calculator("..... * ...")
puts dot_calculator("..... * ..")
puts dot_calculator("..... // ..")
puts dot_calculator("..... // .")
puts dot_calculator(". // ..")
puts dot_calculator(". - .")
