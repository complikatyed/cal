#!/usr/bin/env ruby

require_relative 'lib/month'
require_relative 'lib/zellers'

month = ARGV[0]
year = ARGV[1]


m = Month.new(month, year)
z = Zellers.new(month, year)
puts m.to_s

