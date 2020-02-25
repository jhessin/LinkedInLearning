#!/usr/bin/env ruby

require_relative 'classes/secure_radio.rb'

radio = SecureRadio.new
puts radio.status
radio.play
radio.play
radio.play
