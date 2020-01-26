#!/bin/env ruby
# frozen_string_literal: false

require_relative 'animal.rb'

class Pig < Animal
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
    @noise = 'Oink!'
    @color = 'pink'
  end

  def eat
    puts 'Nom nom nom'
  end
end
