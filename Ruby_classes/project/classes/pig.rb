#!/bin/env ruby
# frozen_string_literal: false

require_relative 'animal.rb'

class Pig < Animal
  def initialize
    super
    @noise = 'Oink!'
    @color = 'pink'
  end

  def eat
    puts 'Nom nom nom'
  end
end
