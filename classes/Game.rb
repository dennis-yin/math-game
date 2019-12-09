class Game

  attr_accessor :player1, :player2, :winner, :current_player, :other_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
    @current_player = player1
    @other_player = player2
  end

  def declare_winner(player)
    puts "#{player.title} wins with a score of #{player.lives}/3"
    puts "--- GAME OVER ---"
    puts "Good bye!"
    @winner = player
  end

  def switch_turns()
    temp = @current_player
    @current_player = @other_player
    @other_player = temp
  end

end