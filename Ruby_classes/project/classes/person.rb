#!/bin/env ruby
# frozen_string_literal: false

require_relative '../modules/nameable.rb'

# A basic Person class
class Person
  include Nameable
  def say_hello
    'Hello!'
  end
end
