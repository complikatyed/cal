require_relative 'helper'
require_relative '../lib/month'
require_relative '../lib/zellers'

class TestZellers <Minitest::Test

  def test_first_day_for_oct_2800
    z = Zellers.new(10, 2800)
    assert_equal 1, z.start
  end

  def test_first_day_for_feb_2016
    z = Zellers.new(02, 2016)
    assert_equal 2, z.start
  end

  def test_first_day_for_dec_3001
    z = Zellers.new(12, 3001)
    assert_equal 3, z.start
  end

  def test_start_day_for_march_2000
    z = Zellers.new(03, 2000)
    assert_equal 4, z.start
  end

  def test_start_day_for_jan_1880
    z = Zellers.new(01, 1880)
    assert_equal 5, z.start
  end

  def test_start_day_for_dec_1995
    z = Zellers.new(12, 1995)
    assert_equal 6, z.start
  end

  def test_start_day_for_feb_2014
    z = Zellers.new(02, 2014)
    assert_equal 7, z.start
  end



end

