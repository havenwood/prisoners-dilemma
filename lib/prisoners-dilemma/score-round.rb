module ScoreRound
  def both_cooperate
    @score[0] += 3
    @score[1] += 3

    round = [true, true, @score]

    @red.log << round
    @green.log << round

    puts "\tBoth Cooperate"
  end

  def neither_cooperate
    @score[0] += 1
    @score[1] += 1

    round = [false, false, @score]

    @red.log << round
    @green.log << round

    puts "\tNeither Cooperate"
  end

  def red_screws_green
    @score[0] += 5

    round = [false, true, @score]

    @red.log << round
    @green.log << round

    puts "\tRed Screws Green"
  end

  def green_screws_red
    @score[1] += 5

    round = [true, false, @score]

    @red.log << round
    @green.log << round

    puts "\tGreen Screws Red"
  end
end