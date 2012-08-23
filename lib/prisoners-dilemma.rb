require_relative 'prisoners-dilemma/players/red'
require_relative 'prisoners-dilemma/players/green'
require_relative 'prisoners-dilemma/score-round'
require_relative 'prisoners-dilemma/version'

class Game
  include ScoreRound

  attr_reader :score

  def initialize
    @score = [0, 0]

    @red = RedPlayer.new
    @green = GreenPlayer.new
  end

  def play
    1.upto 10_000 do |round_number|
      announce round_number

      score_round
    end

    score_game
  end

  private

  def announce round_number
    puts "\nRound #{round_number}:\n"
  end

  def score_round
    red = @red.cooperate?
    green = @green.cooperate?

    if red && green
      both_cooperate
    elsif !red && !green
      neither_cooperate
    elsif green
      red_screws_green
    elsif red
      green_screws_red
    end
  end

  def score_game
    puts "\nFinal Earnings:"
    puts "\t$#{@score[0].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} Red"
    puts "\t$#{@score[1].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} Green"
    puts "\t---"
    puts "\t$#{(@score[0] + @score[1]).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
  end
end