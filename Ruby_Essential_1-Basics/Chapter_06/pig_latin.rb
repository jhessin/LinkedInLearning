#!/bin/env ruby
# frozen_string_literal: false

VOWELS = ['a', 'e', 'i', 'o', 'u']

def pig_latin(word)
  word.downcase!
  # convert word to an array
  array = word.split('')
  # find first vowel position
  pos = array.find_index {|char| VOWELS.include?(char)}
  if pos > 0
  # remove characters up to pos
    front = array[0,pos].join
    main = array[pos..].join
    return main + front + 'ay'
  else
    return word + 'ay'
  end
end

while true
  print 'Give me a word: '
  word = gets.chomp
  puts pig_latin(word)
end
