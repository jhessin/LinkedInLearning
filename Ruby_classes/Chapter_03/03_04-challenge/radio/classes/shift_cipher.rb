#!/bin/env ruby
# frozen_string_literal: false

class ShiftCipher
  @lower = [*'a'..'z']
  @upper = [*'A'..'Z']
  class << self

    def encode(plain_string, shift = 3)
      return unless plain_string.is_a?(String) && shift.is_a?(Integer)

      result = ''
      plain_string.each_char do |char|
        array = if @lower.include? char
                  @lower
                elsif @upper.include? char
                  @upper
                else
                  [char]
                end
        index = array.find_index(char)
        index = (index + shift) % array.count
        result += array[index]
      end
      result
    end

    def decode(cipher_string, shift = 3)
      return unless cipher_string.is_a?(String) && shift.is_a?(Integer)

      result = ''
      cipher_string.each_char do |char|
        array = if @lower.include? char
                  @lower
                elsif @upper.include? char
                  @upper
                else
                  [char]
                end
        index = array.find_index(char)
        index = (index - shift) % array.count
        result += array[index]
      end
      result
    end

    def test(s)
      if self.decode(self.encode(s)) == s
        puts 'Success!'
      else
        puts 'Failure!'
      end
    end
  end
end
