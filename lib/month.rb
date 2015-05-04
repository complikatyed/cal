require_relative '../lib/zellers'

class Month
  attr_reader :month, :year
  MONTH_WIDTH = 20

  def initialize(month, year)
    @month = month.to_i
    @year = year.to_i
  end

  def month_name
    names = [ nil,
             "January",
             "February",
             "March",
             "April",
             "May",
             "June",
             "July",
             "August",
             "September",
             "October",
             "November",
             "December"]
    names.at(@month)
  end


  def leap_year

    if @year % 100 === 0 && @year % 400 === 0
      leap_year = true
    elsif @year % 4 === 0 && @year % 100 != 0
      leap_year = true
    else
      leap_year = false
    end
  end


  def date_header
    "#{month_name} #{year}".center(MONTH_WIDTH).rstrip.concat("\n")
  end

  def week_header
    "Su Mo Tu We Th Fr Sa".concat("\n")
  end

  def month_length
    thirty_day_months = [9, 4, 6, 11]

    if month == 2 and leap_year
      29
    elsif month == 2 and !leap_year
      28
    elsif thirty_day_months.include? month
      30
    else
      31
    end
  end

  def to_s

    z = Zellers.new(month, year)

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
      arr = arr.join(' ')
      until arr.length == 20
        arr << " "
      end
      arr.concat("\n")
      output << arr
    end

    until output.lines.count === 8
      output << "                    \n"
    end

    output

  end

end



