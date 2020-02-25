#!/bin/env ruby
# frozen_string_literal: false

# A VolumeError is raised if the wrong volume is set
class VolumeError < StandardError
  class << self
    attr_accessor :min_vol, :max_vol
  end

  @min_vol = 0
  @max_vol = 10

  def initialize
    min = self.class.min_vol
    max = self.class.max_vol
    super(
      "Invalid volume: volume should be between
      #{min} and #{max}")
  end
end
