#!/usr/bin/env ruby

require_relative 'lib/month'
require_relative 'lib/year'
require_relative 'lib/zellers'


def exit_with_error_message
  puts "Date not in acceptable format/range\n"
  exit
end

if ARGV.length == 1
  year = ARGV[0]
  exit_with_error_message if year == ''
  exit_with_error_message if year.to_i < 1800 or year.to_i > 3000
  y = Year.new(year)
  puts y.to_s

elsif  ARGV.length == 2
  month = ARGV[0]
  year = ARGV[1]
  exit_with_error_message if year == '' or month == ''
  exit_with_error_message if year.to_i < 1800 or year.to_i > 3000
  exit_with_error_message if month.to_i < 1 or month.to_i > 12
  m = Month.new(month, year)
  puts m.to_s

else
  exit_with_error_message
end

