class Zellers
  attr_accessor :month, :year

  # using Zeller's convergence to calculate the start date of the month
  # http://en.wikipedia.org/wiki/Zeller%27s_congruence

  def initialize(month, year)
    @month = month
    @year = year
  end
 
  def start

     day = 1

    if @month <= 2
      mo = @month + 12 + 1
      yr = @year -1
    else
      mo = @month + 1
      yr = year
    end

    # Numbers in this section refer to Zeller's convergence

    p1 = ((26 * mo)/10)
    p2 = (day + yr)
    p3 = (yr/4)
    p4 = (6 * (yr/100))
    p5 = (yr/400)
    p6 = (p1 + p2 + p3 + p4 + p5)

    first = p6 % 7

    if first == 0
      first = 7
    end

    first = first
  end

end
