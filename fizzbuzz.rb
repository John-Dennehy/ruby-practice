def fizzbuzz(number)
  # numbers to divide by, and string to return - Add additional options as required
  divisors = {3 => "Fizz", 5 => "Buzz"}

  # init output string
  output = ""

  # check if number is divisiable by each divisor. If it is, add string to output.
  divisors.each do |divisor, string|
    output += string if number % divisor == 0
  end

  # if output is still blank, replace with original number
  output = number if output == ""
  return output

end