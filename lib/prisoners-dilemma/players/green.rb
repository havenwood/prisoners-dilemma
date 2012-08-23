class GreenPlayer
  attr_accessor :log

  def initialize
    @log = []
  end

  def cooperate?
    if @log.empty? # 1st round
      true
    else
      @log.last[0] ? true : false
    end
  end
end