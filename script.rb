class Game
  attr_writer :guess

  def initialize
    @code = '1234'
    @guess = ''
  end

  def codes_match?
    @code == @guess
  end

  def compare_codes
    code_array = @code.split('')
    guess_array = @guess.split('')
    clues = check_for_clues(code_array, guess_array)
    puts clues
  end
end

def check_for_clues(code_array, guess_array)
  clues = []
  code_array.each_with_index do |number, index|
    if guess_array[index] == number
      clues.push('hard')
    elsif guess_array.any?(number)
      clues.push('soft')
    end
  end
  clues
end

def gameplay_code_breaker
  game = Game.new
  while game.codes_match? == false
    puts 'Try to guess the code:'
    guess = gets.chomp
    game.guess = guess
    game.compare_codes
  end
  puts 'You won'
end

gameplay_code_breaker