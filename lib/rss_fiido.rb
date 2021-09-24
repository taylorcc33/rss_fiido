# frozen_string_literal: true

require_relative 'rss_fiido/version'
require 'open-uri'

# Top level module for gem
module RssFiido
  class Error < StandardError; end

  # main class
  class Feed 
    def self.show_feeds
      feed_urls = []
      File.foreach('db/rss-links.txt', chomp: true) do |url|
        feed_urls.push url
      end
      return feed_urls
    end
  end
end
