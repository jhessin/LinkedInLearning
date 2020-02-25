#!/bin/env ruby
# frozen_string_literal: false

colors = "RRGGBBYYKK"
LINES = 200
colors = colors.split ''

LINES.times do
  puts colors.join
  colors << colors.shift
end
