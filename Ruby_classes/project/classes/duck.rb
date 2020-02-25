#!/bin/env ruby
# frozen_string_literal: false

require_relative 'animal'

class Duck < Animal
  def initialize
    super
    @noise = 'Quack!'
    @color = 'White'
  end

  def fly
    puts 'Flying free as a bird!'
  end
end
