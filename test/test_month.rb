require_relative 'helper'
require_relative '../lib/month'
require_relative '../lib/zellers'

class TestMonth <Minitest::Test

  def test_initializing_a_month_saves_values
    m = Month.new(05, 2015)
    assert_equal 05, m.month
    assert_equal 2015, m.year
  end


  def test_name_for_march
    m = Month.new(03, 2009)
    assert_equal m.month_name, "March"
  end


  def test_name_for_January
    m = Month.new(01, 2009)
    assert_equal m.month_name, "January"
  end


  def test_name_for_December
    m = Month.new(12, 2009)
    assert_equal m.month_name, "December"
  end


  def test_to_s_on_jan_2012
    m = Month.new(01, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31            
                    
EOS
    assert_equal expected,m.to_s
  end


  def test_to_s_on_jan_2017
    m = Month.new(01, 2017)
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31            
                    
EOS
    assert_equal expected, m.to_s
  end


  def test_to_s_on_mar_2009
    m = Month.new(03, 2009)
    expected = <<EOS
     March 2009
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31            
                    
EOS
    assert_equal expected, m.to_s
  end


  def test_to_s_on_June_1975
    m = Month.new(06, 1975)
    z = Zellers.new(06, 1975)
    expected = <<EOS
     June 1975
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30               
                    
EOS
    assert_equal expected, m.to_s
  end


  def test_to_s_sunday_start
    m = Month.new(02, 2015)
    expected = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
                    
                    
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_saturday_start
    m = Month.new(11, 1800)
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
    assert_equal expected, m.to_s
  end


  def test_to_s_friday_start
    m = Month.new(8, 1947)
    expected = <<EOS
    August 1947
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31                  
EOS
    assert_equal expected, m.to_s
  end


  def test_to_s_thursday_start
    m = Month.new(05, 1969)
    expected = <<EOS
      May 1969
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31
                    
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_wednesday_start
    m = Month.new(01, 1800)
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31   
                    
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_tuesday_start
    m = Month.new(07, 2092)
    expected = <<EOS
     July 2092
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31      
                    
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_monday_start
    m = Month.new(12, 1941)
    expected = <<EOS
   December 1941
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31         
                    
EOS
    assert_equal expected, m.to_s
  end






end

