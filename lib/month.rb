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
    range_start = 1
    output << date_header
    output << week_header
    weeks = (range_start..month_length).to_a
    wks = weeks.each_slice(7).to_a


    wk1 = wks[0].map do |num|
      num.to_s.rjust(2)
    end
    wk1 = wk1.join(' ').concat("\n")
    output << wk1

    wk2 = wks[1].map do |num|
      num.to_s.rjust(2)
    end
    wk2 = wk2.join(' ').concat("\n")
    output << wk2

    wk3 = wks[2].join(' ').concat("\n")
    output << wk3


    wk4 = wks[3].join(' ').concat("\n")
    output << wk4


    wk5 = wks[4].join(' ').concat("\n")
    output << wk5
    output << "\n"
    output
  end


end
