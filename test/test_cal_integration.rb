require_relative 'helper'

class TestCalIntegration <Minitest::Test

  def test_error_message
    output = `./cal.rb`
    expected = <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]
EOS
    assert_equal expected, output
  end


  def test_too_high_for_range
    output = `./cal.rb `
    expected = <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]
EOS
    assert_equal expected, output
  end


  def test_too_low_for_range
    output = `./cal.rb 07 1789`
    expected = <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]
EOS
    assert_equal expected, output
  end


  def test_date_not_in_numbers
    output = `./cal.rb April 2015`
    expected = <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]
EOS
    assert_equal expected, output
  end


  def test_year_given_first
    output = `./cal.rb 2015 April`
    expected = <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]
EOS
    assert_equal expected, output
  end


  def test_month_starts_on_Sunday
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end


  def test_basic_January
    output = `./cal.rb 01 1970`
    expected = <<EOS
    January 1970
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_basic_February
    output = `./cal.rb 02 1943`
    expected = <<EOS
   February 1943
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28

EOS
    assert_equal expected, output
  end


  def test_basic_March
    output = `./cal.rb 03 1973`
    expected = <<EOS
     March 1973
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_basic_April
    output = `./cal.rb 04 2002`
    expected = <<EOS
     April 2002
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30

EOS
    assert_equal expected, output
  end


  def test_basic_May
    output = `./cal.rb 05 1969`
    expected = <<EOS
      May 1969
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end



  def test_basic_June
    output = `./cal.rb 06 1974`
    expected = <<EOS
     June 1974
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
    assert_equal expected, output
  end


  def test_basic_July
    output = `./cal.rb 07 2092`
    expected = <<EOS
     July 2092
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_basic_August
    output = `./cal.rb 08 1966`
    expected = <<EOS
    August 1966
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_basic_September
    output = `./cal.rb 09 1898`
    expected = <<EOS
   September 1898
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30

EOS
    assert_equal expected, output
  end


  def test_basic_October
    output = `./cal.rb 10 2999`
    expected = <<EOS
    October 2999
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_basic_November
    output = `./cal.rb 11 1800`
    expected = <<EOS
   November 1800
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
    assert_equal expected, output
  end


  def test_basic_December
    output = `./cal.rb 12 1941`
    expected = <<EOS
   December 1941
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_maximum_range
    output = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end


  def test_minimum_range
    output = `./cal.rb 01 1800`
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  
  def test_regular_leap_year
    output = `./cal.rb 02 2016`
    expected = <<EOS
   February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
# should there be an additional test for existence of day 29?
    assert_equal expected, output
  end


  def test_century_leap_year
    output = `./cal.rb 02 2000`
    expected = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end










end


###########################
#
# Tests needed
#
# > Error message
# > one below the minimum
# > one above the maximum
# >  date entered as words
# > date entered as year month
# > Month that starts on a Sunday
# > one test for each month
# > minimum date (Jan 1800)
# > maximum date (Dec 3000)
# > Regular leap year (February leap year)
# > century leap year
#  400 year leap year
#
#
