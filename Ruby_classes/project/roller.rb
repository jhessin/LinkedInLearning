#!/bin/env ruby
# frozen_string_literal: false

require_relative 'classes/dice_set.rb'

puts 'Welcome to the dice roller game'
puts 'How many dice would you like?'
print '> '

num_dice = gets.chomp.to_i

puts 'How many sides would you like each die to have?'

sides = Array.new(num_dice, 20)

num_dice.times do |i|
  print "How many sides for die #{i + 1}> "
  sides[i] = gets.chomp.to_i
end

options = {
  count: num_dice,
  sides: sides
}

def prompt
  puts '(r - roll again)'
  puts '(q - quit)'
  puts '----------------'
  print '> '
end

ds = DiceSet.new(options)

loop do
  puts 'Current dice: '
  ds.display
  prompt
  response = gets.chomp

  case response
  when 'r'
    ds.roll
  when 'q'
    puts 'goodbye'
    exit
  end
end
