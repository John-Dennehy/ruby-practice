
def fizzbuzz(number)
  output = ""
  output += "Fizz" if number % 3 == 0
  output += "Buzz" if number % 5 == 0
  return output
end