class Question 
attr_accessor :number1, :number2, :player, :answer
def initialize (player)
  @number1 = rand(1..20)
  @number2 = rand(1..20)
  @player = player
  @answer = @number1 + @number2
end
end