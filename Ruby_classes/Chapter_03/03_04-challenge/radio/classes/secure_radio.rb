#!/bin/env ruby
# frozen_string_literal: false

require_relative './shift_cipher.rb'
require_relative './radio.rb'

class SecureRadio < Radio
  class << self
    def shift
      @shift ||= 3
      @shift
    end

    def shift=(value)
      return unless value.is_a? Integer

      @shift ||= 3
      @shift = value
    end
  end
  protected

  def audio_stream
    ShiftCipher.encode(super, self.class.shift)
  end
end
