#!/bin/env ruby
# frozen_string_literal: false

require 'truck'
require 'shared_examples/a_standard_vehicle.rb'

describe Truck do
  it_behaves_like 'a standard vehicle'
end
