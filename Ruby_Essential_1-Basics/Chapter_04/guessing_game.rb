#!/bin/env ruby
# frozen_string_literal: false

puts 'What is your name?'
print '> '

username = gets.chomp

puts
puts "Hello #{username}. Welcome to my guessing game."
puts 'The rules are simple I will think of a number between 1 and 10 and you
guess what it is. You have three guesses - Good Luck.'

pc_num = rand(1..10)

3.times do |index|
  puts "Guess ##{index}:"
  print 'What is your guess? '
  guess = gets.chomp.to_i

  if guess == pc_num
    puts 'Congratulations! You got it!!!'
    exit
  elsif guess < pc_num
    puts 'Too low - try again'
  else
    puts 'Too high - try gain'
  end
end

puts 'Sorry you are out of chances.'
