require_relative '../lib/zellers'

class Month
  attr_reader :month, :year
  MONTH_WIDTH = 20

  def initialize(month, year)
    @month = month.to_i
    @year = year.to_i
  end

  def input_error_message
    <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]
EOS
  end



  def name
    names = ["January",
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
    names.at(@month - 1)
  end


  def leap

    if @year % 100 === 0 && @year % 400 === 0
      leap = true
    elsif @year % 4 === 0 && @year % 100 != 0
      leap = true
    else
      leap = false
    end
  end


  def date_header
    "#{name} #{year}".center(MONTH_WIDTH).rstrip.concat("\n")
  end

  def week_header
    "Su Mo Tu We Th Fr Sa".concat("\n")
  end

  def month_length
    thirty_days = [9, 4, 6, 11]

    if month == 2 and leap
      29
    elsif month == 2 and !leap
      28
    elsif thirty_days.include? month
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
      arr = arr.join(' ').concat("\n")
      output << arr
    end

    output << "\n"
    output
  end


end
