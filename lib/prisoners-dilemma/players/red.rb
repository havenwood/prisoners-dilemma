class RedPlayer
  attr_accessor :log

  def initialize
    @log = []
  end

  def cooperate?
    [true, true, false].sample
  end
end