
def fizzbuzz(number)
  output = "" # start with blank output
  output += "Fizz" if number % 3 == 0 # if divisable by 3 add Fizz to output
  output += "Buzz" if number % 5 == 0 # if divisable by 5 add Buzz to output
  output = number if output == "" # if output is still blank, make output the number 
  return output # return output
end

# # for testing method
# print "Enter a number: "
# until_number = gets.chomp.to_i # get number from user
# (1..until_number).each do |number| # for each number in the range
#   puts fizzbuzz(number) # return the output
# end