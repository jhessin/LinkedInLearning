#!/bin/env ruby
# frozen_string_literal: false

# Animal: a simple animal class
class Animal
  attr_accessor :noise, :color
  # Same as
  # attr_reader :noise
  # attr_writer :noise

  def initialize(options = {})
    @noise = options[:noise] || 'Grrr!'
  end
end
