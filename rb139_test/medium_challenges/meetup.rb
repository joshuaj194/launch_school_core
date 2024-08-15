require 'pry'

class Meetup
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
  end
  
  def day(dow, occ)
    day = integerize_day_of_week(dow)
    list = dow_hsh
    return_date = nil
    unless occ.downcase == "teenth"
      occurence = integerize_occurrence(occ)
      return_date = list[day][occurence]
    else
      return_date = teenth(list[day])
    end
    # binding.pry
    return nil if return_date.nil?
    Date.new(year, month, return_date)
  end

  def teenth(arr)
    val = nil
    (13..19).each do |num|
      val = num 
      break if arr.include?(num)
    end
    val
  end

  def last_date
    last_date = Date.new(year, month, -1).mday
    last_date
  end

  def dow_hsh
    day_date_list = empty_dow_hsh
    (1..last_date).each do |val|
      date = Date.new(year, month, val)
      day_date_list[date.cwday] << val
    end
    day_date_list
  end

  def empty_dow_hsh
    new_hsh = Hash[1, [], 2, [], 3, [], 4, [], 5, [], 6, [], 7, []]
    new_hsh
  end

  def integerize_day_of_week(day)
    case day.capitalize
    when "Monday"
      return 1
    when "Tuesday"
      return 2
    when "Wednesday"
      return 3
    when "Thursday"
      return 4
    when "Friday"
      return 5
    when "Saturday"
      return 6
    when "Sunday"
      return 7
    end
  end

  def integerize_occurrence(occ)
    val = occ.downcase
    case val
    when "first"
      0
    when "second"
      1
    when "third"
      2
    when "fourth"
      3
    when "fifth"
      4
    when "last"
      -1
    end
  end

end