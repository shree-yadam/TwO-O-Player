## 1. Player
#### instance var
###### name
###### lives
#### methods
###### inititalize
###### reduce_life
###### is_alive

## 2. Game
#### instance var
###### player1
###### player2
###### current_player
#### methods public
###### inititalize(player1, player2)
- initialize players
- winner/ status

###### start_game
- set curr_player to player1
- loop over game_turns till it returns winner
- display winner
#### methods private
###### game_turn
local variable math_problem
- create generate new problem
- get_problem
- ask input from player
- check answer
- if wrong
  - reduce curr_player life
  - check is_alive
    - if dead end game and return other player as winnner
- switch curr_player
- return nil as winner

## 3. MathProblem
#### instance var
###### number1
###### number2
###### answer
#### methods
###### generate_new_problem
- generate random number1
- generate random number2
- compute answer
###### get_problem
- string displaying problem
###### check_answer(answer)
- check if @answer == answer return true or false