keep_playing = true
players = ["Player 1","Player 2"]
p1_rounds = 0
p2_rounds = 0

while keep_playing
  scores = []  # reset
  dice = []  #reset
  
  players.each { |player|
    print "\n#{player} rolls: "
    2.times {
      dice.push (rand(5).to_i + 1)
      print "#{dice[-1]} "
    } 
    scores.push ( dice[-1] + dice[-2] )
  }

  puts "\n\nPlayer 1 scored: #{scores[-2]} - Player two scored: #{scores[-1]}" 
  
  if scores[-2] > scores[-1]
    # player 1 wins
    p1_rounds += 1
    print "Player 1 has won this round"
    keep_playing = false if p1_rounds >= 2
    
  elsif scores[-2] < scores[-1]
    #player 2 wins
    p2_rounds += 1
    print "Player 2 has won this round"
    keep_playing = false if p2_rounds >= 2

  elsif scores[-2] == scores[-1]
    # draw
    puts "This round is a draw!"
  end

  print " and the game ( #{p1_rounds} Vs. #{p2_rounds} )\n" if keep_playing == false
  puts "\n"
end


