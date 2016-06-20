require "reptile/version"
require "mechanize"

module Reptile
  def self.url(url, options = {}, &block)
    agent = Mechanize.new
    page = agent.get(url)
    yield self if block_given?
    page
  end
end
