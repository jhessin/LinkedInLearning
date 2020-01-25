#!/bin/env ruby
# frozen_string_literal: false

require_relative 'die'

# DiceSet: a set of dice initalized with a :count and array of :sides
# Defaults:
#   count: 2
#   sides: [8, 20]
class DiceSet
  attr_reader :dice

  def initialize(options = {})
    @dice = []
    count = options[:count] || 2
    sides = options[:sides] || [8, 20]
    count.times do |i|
      @dice[i] = Die.new(sides: sides[i])
    end
  end

  def roll
    @dice.each(&:roll)
  end

  def display
    result = ''
    first = true
    @dice.each do |die|
      result += ' - ' unless first
      result += "[#{die.value}]"
      first = false if first
    end
    puts result
  end
end
