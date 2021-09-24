# frozen_string_literal: true

require_relative 'rss_fiido/version'
require 'open-uri'

# Top level module for gem
module RssFiido
  class Error < StandardError; end
  # Your code goes here...

  def self.grab_feed
    File.foreach('db/rss-links.txt') do |url|
      puts url
      return url
    end
  end
end
