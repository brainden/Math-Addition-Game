class Question
  attr_accessor
  def initialize()
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    @problem = "What is #{number1} + #{number2} ?"
  end
end
