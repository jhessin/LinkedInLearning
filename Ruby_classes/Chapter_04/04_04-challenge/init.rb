#!/bin/env ruby
# frozen_string_literal: false

require 'date'

days = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]

def prompt(query)
  puts query
  print '> '
  gets.chomp
end

year = prompt('What year were you born').to_i
month = prompt('What number month were you born').to_i
day = prompt('What date of the month were you born?').to_i

bd = Date.new(year, month, day)

puts '-' * 20

puts "You were born on a #{days[bd.wday]}"
puts "It was the #{bd.cweek} week of the year."
puts "It was the #{bd.yday} day of the year."
puts "You #{bd.leap? ? 'were' : 'were not'} born in a leap year."

puts '-' * 20
