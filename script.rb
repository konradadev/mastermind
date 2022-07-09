class Game
  attr_writer :guess

  def initialize
    @code = '1234'
    @guess = ''
  end

  def codes_match?
    @code == @guess
  end

end

def gameplay_code_breaker
  game = Game.new
  while game.codes_match? == false
    puts 'Try to guess the code:'
    guess = gets.chomp
    game.guess = guess
  end
  puts 'You won'
end

gameplay_code_breaker