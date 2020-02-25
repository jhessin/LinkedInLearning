#!/bin/env ruby
# frozen_string_literal: false

require_relative 'animal'

class Cow < Animal
  def initialize
    super
    @noise = 'Moo!'
    @color = 'Brown'
  end

  def jump
    puts 'Over the moon we go!'
  end
end
