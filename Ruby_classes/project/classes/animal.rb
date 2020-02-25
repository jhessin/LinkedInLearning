#!/bin/env ruby
# frozen_string_literal: false

# Animal: a simple animal class
class Animal
  # -- This creates a class attribute that is not inherited
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
  # ----------------------------- END OF CLASS VARIABLES

  # --- WHEN USING INHERITED CLASS VARIABLES
  @@species = %w[pig cow duck dog horse]

  class << self
    def species
      @@species
    end

    def species=(value)
      return unless value.is_a?(Array)

      @@species = value
    end
  end
  # ------------------------- END OF INHERITED CLASS VARIABLES

  attr_accessor :noise, :color

  def initialize(options = {})
    @noise = options[:noise] || 'Grrr!'
    @color = options[:color] || 'white'
    # When using class instance variables
    self.class.current_animals ||= []
    self.class.current_animals << self
  end
end
