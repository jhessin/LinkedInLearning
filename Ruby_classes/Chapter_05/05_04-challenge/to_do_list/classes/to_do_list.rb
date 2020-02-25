#!/bin/env ruby
# frozen_string_literal: false

class ToDoList
  include Enumerable

  attr_reader :items

  def initialize(items = [])
    @items = items
  end

  def each
    @items.each { |item| yield(item) }
  end

  def <<(item)
    @items.unshift(item)
  end
end
