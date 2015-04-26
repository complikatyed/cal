require_relative '../lib/zellers'

class Month
  attr_reader :month, :year
  
  def initialize(month, year)
    @month = month
    @year = year
  end

  def week
    week = "Su Mo Tu We Th Fr Sa"
  end

  def name
    names = ["January", "February", "March", "April", "  May", " June", " July", "August", "September", "October", "November", "December"]
    names.at(@month -1)
  end

  def days?
    thirty_days = [9, 4, 6, 11]
    thirty_one_days = [1, 3, 5, 7, 8, 10, 12]

    if month == 2
      28
    elsif thirty_days.include? month
      30
    else
      31
    end
  end

  def template_30_1
    <<EOS
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30
EOS
  end

  def to_s
    if days? == 30
    <<EOS
    #{name} #{year}
#{week}
#{template_30_1}
EOS
    elsif days? == 31
 <<EOS
    #{name} #{year}
#{week}
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    elsif days? == 28
 <<EOS
   #{name} #{year}
#{week}
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28

EOS
    else
      puts "Oh no -- Leap Year!"
    end
  end

end
