require './player'
require './math_problem'

class Game

  PLAYING = 'playing'
  FINISHED = 'finished'

  # initialize players names and current game status as playing
  def initialize
    @players = []
    #puts "Player 1 enter your name: "
    @players << Player.new("Player 1", "P1")
    #puts "Player 2 enter your name: "
    @players << Player.new("Player 2", "P2")
    @current_player = nil
    @winner = nil
    @game_status = PLAYING
  end

  def play_game
    # Set initial player as player 1
    @current_player = 0
    # loop over turns until game status doesn't change to FINISHED
    until @game_status == FINISHED
      game_turn
      # Check if game is continuing then display current score
      # and the NEW TURN divider
      if @game_status == PLAYING
        puts game_score
        puts "----- NEW TURN -----"
        switch_player
      end
    end
    # until loop exit as game finshed
    switch_player
    @winner = @players[@current_player]
    puts win_message
    puts "----- GAME OVER -----"
  end

  private

  attr_accessor :current_player, :winner

  def game_turn
    problem = MathProblem.new
    input_status = false
    # Check valid integer input
    until input_status do
      puts "#{@players[@current_player].name}: #{problem.problem}"
      answer = gets.chomp
      input_status = numeric?(answer)
    end
    answer = answer.to_i
    # Display message and set game state based on answer being correct or wrong
    if !problem.correct?(answer)
      @players[@current_player].reduce_life
      puts wrong_ans_message
      if !(@players[@current_player].alive?)
        @game_status = FINISHED
      end
    else
      puts right_ans_message
    end
  end

  # method to switch players
  def switch_player
    if @current_player == 0
      @current_player = 1
    else
      @current_player = 0
    end
  end

  # method to check if input is numeric
  def numeric?(str)
    Integer(str) != nil rescue false
  end

  # returns message for wrong answer
  def wrong_ans_message
    "#{@players[@current_player].name}: Seriously? No!"
  end

  # returns message on game win
  def win_message
    "#{@winner.name} wins with a score of #{@winner.current_stat}"
  end

  #returns message on a right answer
  def right_ans_message
    "#{@players[@current_player].name}: YES! You are correct."
  end

  #returns string containing game score for both players
  def game_score
    "#{@players[0].pet_name}: #{@players[0].current_stat} vs #{@players[1].pet_name}: #{@players[1].current_stat}"
  end

end