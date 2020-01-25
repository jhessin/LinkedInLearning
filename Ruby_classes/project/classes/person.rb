#!/bin/env ruby
# frozen_string_literal: false

# A basic Person class
class Person
  attr_accessor :first_name, :last_name

  def say_hello
    'Hello!'
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def initial_and_last_name
    "#{initial} #{last_name}"
  end

  private

  def initial
    @first_name.chars.first + '.'
  end
end
