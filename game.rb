require './player'
require './question'
class Game 
  attr_accessor :player1, :player2, :question
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current = player1
  end 
  def startGame()
    puts "game started with #{@player1.name} #{@player2.name}"
    while @player1.lives != 0 || @player2.lives != 0
      askQuestion()
      answer = gets.chomp
      evaluateQuestion(answer)
      switchPlayer
    end
  end 
  def askQuestion()
    @question = Question.new(@player1)
    puts "#{@current.name} What does #{@question.number1} plus #{@question.number2} equal"
  end
  def evaluateQuestion(answer)
    # puts "#{answer}"
    if answer.to_i == @question.answer.to_i
      puts "Correct!" 
    else 
      puts "Seriously? No!"
      @current.reduce_lives
    end
  end
  def switchPlayer()
    if @current == @player1 
      @current = @player2
    else 
      @current = @player1
    end
  end
end 