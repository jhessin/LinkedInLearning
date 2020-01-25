#!/bin/env ruby
# frozen_string_literal: false

# Animal: a simple animal class
class Animal
  class << self
    attr_accessor :species, :current_animals
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
