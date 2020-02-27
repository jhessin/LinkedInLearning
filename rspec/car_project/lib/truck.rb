#!/bin/env ruby
# frozen_string_literal: false

# A Basic example of a Truck class
class Truck
  attr_accessor :make, :year, :color
  attr_reader :wheels
  attr_writer :doors

  def initialize(options = {})
    @make = options[:make] || 'Ford'
    @year = (options[:year] || 2007).to_i
    @color = options[:color] || 'unknown'
    @wheels = 4
  end

  class << self
    def colors
      %w[blue black red green white]
    end
  end

  def full_name
    "#{@year} #{@make} Truck (#{@color})"
  end
end
