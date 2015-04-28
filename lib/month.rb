require_relative '../lib/zellers'

class Month
  attr_reader :month, :year, :z, :start, :str1
  
  def initialize(month, year)
    @month = month
    @year = year
  end

  def z
    z = Zellers.new(month,year)
  end

  def name
    names = ["January", "February", "March", "April", "  May", " June", " July", "August", "September", "October", "November", "December"]
    names.at(@month -1)
  end

  def date_header
    "#{name} #{year}".center(20).concat("\n")
  end

  def week_header
    "Su Mo Tu We Th Fr Sa".center(20).concat("\n")
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


  def week_start
   week_start = z.start
  end

#  def weeks
    #weeks = []
    #weeks = (1..days).each_slice(7)
    #puts weeks
  #end


#  def to_s

  #output = ""
  #output << "#{date_header} #{week_header}"
  #arr = (1..days).to_a
  #arr.each_slice(7) do |arr|
      #output << "#{arr}"
  #end
  #output

  #end

  def to_s
    output = ""
    output << "#{date_header} #{week_header}"
    weeks = (1..month_length).to_a
    wks = weeks.each_slice(7).to_a

    wk1 = wks[0].to_s.gsub(/\D/, ' ')
    wk1 = wk1.to_s.split.join(' ').rjust(20, ' ').concat("\n")
    output << wk1

    wk2 = wks[1].to_s.gsub(/\D/, ' ')
    wk2 = wk2.to_s.split.join(' ').rjust(20).concat("\n")
    output << wk2

    wk3 = wks[2].to_s.gsub(/\D/, ' ')
    wk3 = wk3.to_s.split.join(' ').concat("\n")
    output << wk3


    wk4 = wks[3].to_s.gsub(/\D/, ' ')
    wk4 = wk4.to_s.split.join(' ').concat("\n")
    output << wk4


    wk5 = wks[4].to_s.gsub(/\D/, ' ')
    wk5 = wk5.to_s.split.join(' ').concat("\n \n")
    output << wk5

    output
  end


end




