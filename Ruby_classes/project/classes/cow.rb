#!/bin/env ruby
# frozen_string_literal: false

require_relative 'animal'

class Cow < Animal
  class << self
    attr_reader :current_animals

    def current_animals=(array)
      return unless array.is_a?(Array)

      @current_animals = array
    end

    def total_animals
      # When using class instance variables
      @current_animals.count
    end
  end
  def initialize
    super
    @noise = 'Moo!'
    @color = 'Brown'
  end

  def jump
    puts 'Over the moon we go!'
  end
end
