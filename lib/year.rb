require_relative '../lib/month'
require_relative '../lib/zellers'


class Year
  attr_reader :month, :year
  YEAR_WIDTH = 64
  MONTH_WIDTH = 20

  def initialize(year)
    @year = year.to_i
  end

  def date_header
    "#{month_name} #{year}".center(MONTH_WIDTH).rstrip.concat("\n")
  end


  def year_header
    "#{year}".center(YEAR_WIDTH).rstrip.concat("\n")
  end


  def to_s

    m = Month.new(month, year)
    output = ""

    12.times do |i|
      month = i + 1
      string = m.to_s(month, year)
      if month % 3 == 0
        string << "\n"
      else
        string << "  "
      end
      output << string
    end

    output

   end


end

