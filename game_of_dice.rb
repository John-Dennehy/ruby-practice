
keep_playing = true

players = ["player1","player2"]

while keep_playing
  draw = false  # reset
  scores = []

  puts "Rolling the dice!"

  players.each { |player|
    scores.push (rand(5).to_i + 1)
  }

  puts "Player 1 rolls #{scores[0]} and player two rolls #{scores[1]}"
  draw = true if scores[0] == scores[1]
  puts "Player 1 wins!" if scores[0] > scores[1]
  puts "Player 2 wins!" if scores[1] > scores[0]
    
  keep_playing = false unless draw
  
end


