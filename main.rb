require './game' 
require './player'
p = Game.new(Player.new("player1"), Player.new("player2"))
p.startGame()