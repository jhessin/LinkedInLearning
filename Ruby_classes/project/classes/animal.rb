#!/bin/env ruby
# frozen_string_literal: false

# Animal: a simple animal class
class Animal
  class << self
    attr_reader :species, :current_animals
    def species=(array)
      return unless array.is_a?(Array)

      @species = array
    end

    def current_animals=(array)
      return unless array.is_a?(Array)

      @current_animals = array
    end
  end

  attr_accessor :noise, :color

  @species = %w[pig cow duck dog horse]
  @current_animals = []

  def initialize(options = {})
    @noise = options[:noise] || 'Grrr!'
    @color = options[:color] || 'white'
    self.class.current_animals << self
  end

  def self.total_animals
    @current_animals.count
  end

  def self.create_a_pig
    Animal.new(noise: 'Oink!', color: 'pink')
  end
end
