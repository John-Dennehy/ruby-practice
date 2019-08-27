
keep_playing = true

players = ["player1","player2"]

while keep_playing
  draw = false  # reset
  scores = []  # reset
  dice = []  #reset
  
  players.each { |player|
    puts "#{player} is rolling!"
    2.times {
      dice.push (rand(5).to_i + 1)
      puts "#{dice[-1]}"
    } 
    scores.push ( dice[-1] + dice[-2] )
  }

  puts "Player 1 scored #{scores[0]} and player two scored #{scores[1]}"
  draw = true if scores[0] == scores[1]
  puts "Player 1 wins!" if scores[0] > scores[1]
  puts "Player 2 wins!" if scores[1] > scores[0]
    
  keep_playing = false unless draw
  
end


