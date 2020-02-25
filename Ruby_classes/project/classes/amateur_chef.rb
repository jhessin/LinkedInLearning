#!/bin/env ruby
# frozen_string_literal: false

require_relative './chef.rb'

class AmateurChef < Chef
  def make_dinner
    puts 'Read recipe.'
    super
    puts 'Clean up mess.'
  end
end
