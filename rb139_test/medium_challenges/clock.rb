# methods
# - at(hours, minutes)
#   - returns the value in minutes
# - ==
#   checks to see that the value returned 
# - to_s
#   - takes a minutes value and returns it "hh:mm" format

require 'pry'

class Clock

  def initialize(val)
    @time = val
  end

  def normalize_time
    while @time > 1440
      @time -= 1440
    end
    while @time < 0
      @time += 1440
    end
    # binding.pry
  end

  def self.at(hour=0, minutes=0)
    values = []
    values << hour * 60
    values << minutes
    # binding.pry
    time = values.reduce(:+)
    val = self.new(time)
    val
  end

  def ==(other_clock)
    self.to_s == other_clock.to_s
  end

  def hours_str
    normalize_time
    hours = self.time / 60
    if hours < 10
      hours = sprintf("0%d", hours)
    else
      hours = hours.to_s
    end
    return hours
  end

  def minutes_str
    normalize_time
    minutes = self.time % 60
    if minutes < 10
      minutes = sprintf("0%d", minutes)
    else 
      minutes = minutes.to_s
    end
    return minutes
  end

  def +(minutes)
    new_time = @time + minutes
    self.class.new(new_time)
  end

  def -(minutes)
    new_time = @time - minutes
    self.class.new(new_time)
  end

  def to_s
    hh = hours_str
    mm = minutes_str
    hh + ":" + mm
  end

  private
  attr_accessor :time
end