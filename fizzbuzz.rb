def fizzbuzz
  hash = { # numbers to divide by, and string to return - Add new key/values as required
    3 => "Fizz",
    5 => "Buzz"
  }

  range = 1..30 # change range as required
  range.each do |number| # loop over each number in the range
    output = ""

    hash.each do |key, value| # check the number against each item in hash
      output += value if number % key == 0 
    end
    
    output = number if output == "" # if output is still blank, make output the number
    puts output
  end
end