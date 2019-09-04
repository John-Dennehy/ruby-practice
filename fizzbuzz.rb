
def fizzbuzz
  range = 1..30
  hash = {
    3 => "Fizz",
    5 => "Buzz"
  }

  range.each do |number|
    output = ""

    # check the number against each item in hash
    hash.each do |key, value| 
      output += value if number % key == 0 
    end
    
    # if output is still blank, make output the number
    output = number if output == ""

    puts output

  end
end