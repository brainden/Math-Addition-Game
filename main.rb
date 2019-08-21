require "./players"
require "./question"

def start
  puts "Welcome to the game!"
  runQuestions
end

@player1 = Players.new
@player2 = Players.new

@count = 0

def runQuestions
 @count += 1
 if  @count % 2 != 0 && player1.alive? && player2.alive?
  question = Question.new
  if(@count != 1)
    puts "***** NEW ROUND *****"
  end
  puts "Player 1: #{question.display}"
  print '> '
  answer = gets.chomp
  if answer.to_i == question.answer
    puts "Player 1: That is correct!"
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  else
    @player1.lives -= 1
    puts "Player 1: No! You are incorrect!"
    puts "P1: #{@player1.lives}/3 vs P2:#{@player2.lives}/3"
  end
  runQuestions
elsif @count % 2 == 0 && @player1.alive? && @player2.alive?
question = Question.new
puts "***** NEW ROUND *****"
puts "Player 2: #{question.display}"
print "> "
answer = gets.chomp
if answer.to_i == question.answer
  puts "Player 2: That is correct!"
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
else
  @player2.lives -= 1
  puts "Player 2: No! You are incorrect!"
  puts "P1: #{@player1.lives}/3 vs P2:#{@player2.lives}/3"
  puts "***** NEW ROUND *****"
end
runQuestions
else
  if !(@player1.alive?)
    puts "Player 2 wins the game!"
    puts "***** GAME OVER *****"
  else
    puts "Player 1 wins the game!"
    puts "***** GAME OVER *****"
    end
  end
end

start