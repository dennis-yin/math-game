require('./classes/Player')
require('./classes/Game')
require('./classes/Question')

player1 = Player.new(3,1)
player2 = Player.new(3,2)
game = Game.new(player1, player2)

while game.winner.nil?

  puts "--- NEW TURN ---"

  question = Question.new()
  
  puts "#{game.current_player.title}: #{question.question}"

  answer = Integer(gets.chomp)

  if question.answer == answer
    puts "YES! You are correct."
    puts "P1: #{game.player1.lives}/3 vs P2: #{game.player2.lives}/3"
    game.switch_turns
    
  else
    game.current_player.lose_life
    puts "#{game.current_player.title}: Seriously? No!"
    puts "P1: #{game.player1.lives}/3 vs P2: #{game.player2.lives}/3"

    if game.current_player.lives == 0
      game.declare_winner(game.other_player)
    end

    game.switch_turns
  end

end