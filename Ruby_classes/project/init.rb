#!/bin/env ruby
# frozen_string_literal: false

require_relative 'classes/person.rb'
require_relative 'classes/animal.rb'

person = Person.new
person.first_name = 'Bob'
person.last_name = 'Smith'
puts person.full_name
puts person.initial_and_last_name
# Private methods don't work
# puts person.initial

puts '------'
pig = Animal.new(noise: 'Oink!')

puts pig.noise
