#!/bin/env ruby
# frozen_string_literal: false

# A basic die that can be rolled.
class Die
  attr_reader :value, :sides

  def initialize(options = {})
    sides = options[:sides] || 20
    @sides = sides.positive? ? sides : 20
    roll
  end

  def roll
    @value = rand(1..@sides)
  end
end
