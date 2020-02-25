#!/bin/env ruby
# frozen_string_literal: false

puts '---------------'
puts '| Ruby Blanks |'
puts '---------------'

print 'Give me a verb: '
verb = gets.chomp

print 'Give me an adjective: '
adj1 = gets.chomp

print 'Give me another adjective: '
adj2 = gets.chomp

print 'Give me a noun: '
noun = gets.chomp

puts "I decided to #{verb} a #{adj1} party for my #{adj2} #{noun}."
