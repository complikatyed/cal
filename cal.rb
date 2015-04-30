#!/usr/bin/env ruby

require_relative 'lib/month'
require_relative 'lib/zellers'

month = ARGV[0]
year = ARGV[1]

  def error_message
    <<EOS
Date not in acceptable format/range
`./cal.rb [MM] [YYYY]`

EOS
  end


m = Month.new(month, year)


if ARGV.empty? || year.to_i < 1800 || year.to_i > 3000
  puts error_message
else
  puts m.to_s
end





