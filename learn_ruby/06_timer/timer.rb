class Timer
  #write your code here
  attr_accessor :seconds

  def initialize 
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    remainder = @seconds % (60*60)
    # to zero-fill use '%02d'
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
  end
end
