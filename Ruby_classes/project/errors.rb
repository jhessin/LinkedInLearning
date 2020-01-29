#!/bin/env ruby
# frozen_string_literal: false

def divide(x, y)
  puts x / y
rescue ZeroDivisionError => e
  puts 'Cannot divide by zero'
  puts "#{e.class}: #{e.message}"
rescue TypeError => e
  puts "#{e.class} handled"
  puts 'Requires two integer arguments'
rescue StandardError => e
  puts "#{e.class} handled"
  puts 'No worries'
end

begin
  # divide 4, 2
  # divide 4, 0
  # divide 4, '2'
  # divide 4
  # divide 'this', 'that'
rescue ArgumentError => e
  puts "#{e.class} handled"
  puts 'Requires two integer arguments'
end

def even_numbers(array)
  raise TypeError unless array.is_a?(Array)
  raise StandardError, 'Too few elements' if array.empty?

  array.find_all { |el| el.to_i.even? }
end

puts even_numbers([1, 2, 3, 4, 5]).join(',')
puts even_numbers(1..20).join(',')
