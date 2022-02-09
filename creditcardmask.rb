=begin
Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

Your task is to write a function maskify, which changes all but the last four characters into '#'.

Examples
maskify('4556364607935616') # should return '############5616'
maskify('64607935616')      # should return '#######5616'
maskify('1')                # should return '1'
maskify('')                 # should return ''

# "What was the name of your first pet?"
maskify('Skippy')                                   # should return '##ippy'
maskify('Nananananananananananananananana Batman!') # should return '####################################man!'
=end


def maskify(cc)
  return cc if cc.length <= 4
  ending = cc[-4..-1]
  rest = cc.split("")
  hidden = rest.map {|item| item = "#" }
  desired_length = (cc.length - 5)
  hidden = hidden[0..desired_length]
  done = hidden.join("").to_s
  return done + ending
end


maskify('4556364607935616')
maskify('1')
maskify('11111')
puts maskify('12668824424981190606592')
puts maskify('7437829751469')
