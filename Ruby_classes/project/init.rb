#!/bin/env ruby
# frozen_string_literal: false

require_relative 'classes/person.rb'
require_relative 'classes/animal.rb'
require_relative 'classes/pig.rb'
require_relative 'classes/cow.rb'
require_relative 'classes/duck.rb'

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

puts '------'

Animal.species.each do |type|
  puts type
end

puts '------'

wilbur = Pig.new
puts wilbur.noise
wilbur.eat

maisie = Cow.new
puts maisie.noise
maisie.jump

howard = Duck.new
puts howard.noise
howard.fly

puts '------'

puts "Animals: #{Animal.total_animals}"
puts "Pigs: #{Pig.total_animals}"
puts "Cows: #{Cow.total_animals}"
puts "Ducks: #{Duck.total_animals}"

puts '------'

Animal.species = %w[cat mouse moose]

Animal.species.each do |type|
  puts type
end
