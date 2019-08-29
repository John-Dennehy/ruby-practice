
def fizzbuzz(number)
  output = "" # start with blank output
  output += "Fizz" if number % 3 == 0 # if divisable by 3 add Fizz to output
  output += "Buzz" if number % 5 == 0 # if divisable by 5 add Buzz to output
  output = number if output == "" # if output is still blank, make output the number 
  return output # return output
end

# for testing
while true
  print "Enter a number (or 'stop'): "
  input = gets.chomp # get number from user
  break if input == "stop"
  print " = #{fizzbuzz(input.to_i)}\n" # return output
end