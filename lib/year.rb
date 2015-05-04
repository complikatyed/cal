require_relative '../lib/month'
require_relative '../lib/zellers'


class Year
  attr_accessor :month, :year
  YEAR_WIDTH = 62
  MONTH_WIDTH = 20

  def initialize(year)
    @year = year.to_i
  end

  def year_header
    "#{year}".center(YEAR_WIDTH).rstrip.concat("\n")
  end

  def method(month, year)
    m = Month.new(month, year)
    m.to_s
  end

  def make_months
    output = ""

    12.times do |i|
      string = method(i + 1, year)

      output << string
    end
    output
  end

   def year_setup
    months = ""
    months = make_months
    year = ""

    weekdays_row = "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"
    months_1to3 = "      January               February               March\n"
    months_4to6 = "      April                  May                   June\n"
    months_7to9 = "        July                 August              September\n"
    months_10to12 = "      October               November              December\n"

    row_1 = ""
    row_2 = ""
    row_3 = ""
    row_4 = ""
    row_5 = ""
    row_6 = ""
    row_7 = ""
    row_8 = ""
    row_9 = ""
    row_10 = ""
    row_11 = ""
    row_12 = ""
    row_13 = ""
    row_14 = ""
    row_15 = ""
    row_16 = ""
    row_17 = ""
    row_18 = ""
    row_19 = ""
    row_20 = ""
    row_21 = ""
    row_22 = ""
    row_23 = ""
    row_24 = ""

    row_1 << "#{months[37..57].gsub(/\n/, '')}  #{months[202..222].gsub(/\n/, '')}  #{months[365..385]}"
    row_2 << "#{months[58..78].gsub(/\n/, '')}  #{months[223..243].gsub(/\n/, '')}  #{months[386..406]}"
    row_3 << "#{months[79..99].gsub(/\n/, '')}  #{months[244..264].gsub(/\n/, '')}  #{months[407..427]}"
    row_4 << "#{months[100..120].gsub(/\n/, '')}  #{months[265..285].gsub(/\n/, '')}  #{months[428..448]}"
    row_5 << "#{months[121..141].gsub(/\n/, '')}  #{months[286..306].gsub(/\n/, '')}  #{months[449..469]}"
    row_6 << "#{months[142..162].gsub(/\n/, '')}  #{months[307..327].gsub(/\n/, '')}  #{months[470..491]}"

    row_7 << "#{months[528..548].gsub(/\n/, '')}  #{months[690..710].gsub(/\n/, '')}  #{months[852..872]}"
    row_8 << "#{months[549..569].gsub(/\n/, '')}  #{months[711..731].gsub(/\n/, '')}  #{months[873..893]}"
    row_9 << "#{months[570..590].gsub(/\n/, '')}  #{months[732..752].gsub(/\n/, '')}  #{months[894..914]}"
    row_10 << "#{months[591..611].gsub(/\n/, '')}  #{months[753..773].gsub(/\n/, '')}  #{months[915..935]}"
    row_11 << "#{months[612..632].gsub(/\n/, '')}  #{months[774..794].gsub(/\n/, '')}  #{months[936..956]}"
    row_12 << "#{months[633..653].gsub(/\n/, '')}  #{months[795..815].gsub(/\n/, '')}  #{months[957..977]}"

    row_13 << "#{months[1014..1034].gsub(/\n/, '')}  #{months[1176..1196].gsub(/\n/, '')}  #{months[1342..1362]}"
    row_14 << "#{months[1035..1055].gsub(/\n/, '')}  #{months[1197..1217].gsub(/\n/, '')}  #{months[1363..1383]}"
    row_15 << "#{months[1056..1076].gsub(/\n/, '')}  #{months[1218..1238].gsub(/\n/, '')}  #{months[1384..1404]}"
    row_16 << "#{months[1077..1097].gsub(/\n/, '')}  #{months[1239..1259].gsub(/\n/, '')}  #{months[1405..1425]}"
    row_17 << "#{months[1098..1118].gsub(/\n/, '')}  #{months[1260..1280].gsub(/\n/, '')}  #{months[1426..1446]}"
    row_18 << "#{months[1119..1139].gsub(/\n/, '')}  #{months[1281..1301].gsub(/\n/, '')}  #{months[1447..1467]}"

    row_19 << "#{months[1506..1526].gsub(/\n/, '')}  #{months[1669..1689].gsub(/\n/, '')}  #{months[1834..1854]}"
    row_20 << "#{months[1527..1547].gsub(/\n/, '')}  #{months[1690..1710].gsub(/\n/, '')}  #{months[1855..1875]}"
    row_21 << "#{months[1548..1568].gsub(/\n/, '')}  #{months[1711..1731].gsub(/\n/, '')}  #{months[1876..1896]}"
    row_22 << "#{months[1569..1589].gsub(/\n/, '')}  #{months[1732..1752].gsub(/\n/, '')}  #{months[1897..1917]}"
    row_23 << "#{months[1590..1610].gsub(/\n/, '')}  #{months[1753..1773].gsub(/\n/, '')}  #{months[1918..1938]}"
    row_24 << "#{months[1611..1631].gsub(/\n/, '')}  #{months[1774..1794].gsub(/\n/, '')}  #{months[1939..1959]}"


    year << year_header.concat("\n")
    year << months_1to3
    year << weekdays_row
    year << row_1
    year << row_2
    year << row_3
    year << row_4
    year << row_5
    year << row_6
    year << months_4to6
    year << weekdays_row
    year << row_7
    year << row_8
    year << row_9
    year << row_10
    year << row_11
    year << row_12
    year << months_7to9
    year << weekdays_row
    year << row_13
    year << row_14
    year << row_15
    year << row_16
    year << row_17
    year << row_18
    year << months_10to12
    year << weekdays_row
    year << row_19
    year << row_20
    year << row_21
    year << row_22
    year << row_23
    year << row_24
   end

   def to_s
    year = ""
    year = year_setup

   end

end
