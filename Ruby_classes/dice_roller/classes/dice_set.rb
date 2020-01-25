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
    sides = options[:sides] || [8, 20]
    count = options[:count] || sides.count
    count.times do |i|
      @dice[i] = Die.new(sides: sides[i])
    end
  end

  def roll
    @dice.each(&:roll)
  end

  def display
    @dice.map { |d| "[ #{d.value} ]" }.join(' - ')
  end
end
