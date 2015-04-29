require_relative '../lib/zellers'

class Month
  attr_reader :month, :year, :z, :start
  WIDTH = 20

  def initialize(month, year)
    @month = month.to_i
    @year = year.to_i
  end

  def z
    z = Zellers.new(month, year)
  end

  def name
    names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    names.at(@month -1)
  end

  def date_header
    "#{name} #{year}".center(WIDTH).rstrip.concat("\n")
  end

  def week_header
    "Su Mo Tu We Th Fr Sa".concat("\n")
  end

  def month_length
    thirty_days = [9, 4, 6, 11]
    thirty_one_days = [1, 3, 5, 7, 8, 10, 12]

    if month == 2 and leap?
      29
    else
      28
    end

    if thirty_days.include? month
      30
    else
      31
    end
  end

 
  def to_s

    output = ""
    output << date_header
    output << week_header

    weeks = (1..month_length).to_a

    
    (z.start - 1).times {weeks.unshift("  ")}

    wks = weeks.each_slice(7).to_a

    wks.each do |arr|
      arr = arr.map do |num|
        num.to_s.rjust(2)
      end
      arr = arr.join(' ').concat("\n")
      output << arr
    end

    output << "\n"
    output
  end


end
