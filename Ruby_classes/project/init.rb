#!/bin/env ruby
# frozen_string_literal: false

$LOAD_PATH << './classes' << './modules'
require 'person.rb'
require 'animal.rb'
require 'pig.rb'
require 'cow.rb'
require 'duck.rb'
require 'amateur_chef.rb'

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

puts '------'

chef = Chef.new
chef.make_dinner

puts '*'

chef = AmateurChef.new
chef.make_dinner
