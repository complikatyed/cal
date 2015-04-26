class Zellers
  attr_accessor :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def start

    h = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    day = 1

    if @month <= 2
      mo = @month + 12 + 1
      yr = @year -1
    else
      mo = @month + 1
      yr = year
    end


    p1 = ((26 * mo)/10)
    p2 = (day + yr)
    p3 = (yr/4)
    p4 = (6 * (yr/100))
    p5 = (yr/400)
    p6 = (p1 + p2 + p3 + p4 + p5)

    puts day
    puts mo
    puts yr
   

    first = p6 % 7

    h[first.to_i]
  end
   
end
