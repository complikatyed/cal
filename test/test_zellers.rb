require_relative 'helper'
require_relative '../lib/month'
require_relative '../lib/zellers'

class TestZellers <Minitest::Test

  def test_start_day_for_march_2000
    z = Zellers.new(03, 2000)
    assert_equal "Wednesday", z.start
  end

  def test_start_day_for_dec_1995
    z = Zellers.new(12, 1995)
    assert_equal "Friday", z.start
  end
  
  def test_start_day_for_jan_1880
    z = Zellers.new(01, 1880)
    assert_equal "Thursday", z.start
  end

  def test_start_day_for_feb_2014
    z = Zellers.new(02, 2014)
    assert_equal "Saturday", z.start
  end





end

