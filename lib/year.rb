require_relative '../lib/month'
require_relative '../lib/zellers'


class Year
  attr_accessor :month, :year
  YEAR_WIDTH = 64
  MONTH_WIDTH = 20

  def initialize(year)
    @year = year.to_i
  end

  def year_header
    "#{year}".center(YEAR_WIDTH).rstrip.concat("\n")
  end

  def method(year, month)
    m = Month.new(month, year)
    m.to_s
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

   def make_months
    output = ""

    12.times do |month|
      month = month + 1
      string = method(month, year)
      output << string
    end
    output
  end

   def to_s
     months = []

     months = make_months.split(",")
#     month_lines. each do |line|
       #line.to_s.rjust(22)
     #end

     #lines = month_lines.each_slice(64).to_a

     #lines.each do |arr|
       #arr = month_lines.concat("\n")
      #months << arr
     #end
     #months
   end

end

