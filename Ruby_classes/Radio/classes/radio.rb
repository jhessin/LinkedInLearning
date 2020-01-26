#!/bin/env ruby
# frozen_string_literal: false

# A basic radio class
class Radio
  class << self
    attr_reader :fm_frequencies, :default_fm_freq, :am_frequencies,
      :default_am_freq
  end

  attr_reader :volume, :freq, :band

  @fm_frequencies = 88.0..108.0
  @default_fm_freq = 95.5
  @am_frequencies = 540.0..1600.0
  @default_am_freq = 1010.0

  def self.am(options = {})
    options ||= {}
    options[:band] = 'AM'
    new(options)
  end

  def self.fm(options = {})
    options ||= {}
    options[:band] = 'FM'
    new(options)
  end

  def initialize(options = {})
    self.band = options[:band] || 'AM'
    self.freq = default_freq
    self.volume = options[:volume] || 5
  end

  def freq=(value)
    value = value.to_f
    value = default_freq unless allowed_frequencies.include?(value)
    @freq = value
  end

  def volume=(value)
    return if value < 0 || value > 10

    @volume = value
  end

  def crank_it_up
    @volume = 11
  end

  def status
    "station: #{@freq} #{@band}, volume: #{@volume}"
  end

  private

  def default_freq
    @band == 'AM' ? self.class.default_am_freq : self.class.default_fm_freq
  end

  def allowed_frequencies
    @band == 'AM' ? self.class.am_frequencies : self.class.fm_frequencies
  end

  def band=(value)
    @band = case value
            when /[aA][mM]*/
              'AM'
            when /[fF][mM]*/
              'FM'
            else
              'AM'
            end
  end

  def min_freq
    case @band
    when /[aA][mM]*/
      540.0
    when /[fF][mM]*/
      88.0
    end
  end

  def max_freq
    case @band
    when /[aA][mM]*/
      1600.0
    when /[fF][mM]*/
      108.0
    end
  end
end
