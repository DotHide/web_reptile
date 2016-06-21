require "web_reptile/version"
require "mechanize"

module WebReptile

  def WebReptile.url(url, options = {}, &block)
    Core.url(url, options, &block)
  end

  class Core
    def initialize(url, opts = {})
      @url = url.is_a?(URI) ? url : URI(url)
      @opts = opts

      agent = Mechanize.new
      @page = agent.get(@url)
    end

    def self.url(url, opts = {})
      self.new(url, opts) do |web|
        yield web if block_given?
        self
      end
    end

    def grab(selector)
       items = @page.search(selector)
    end
  end
end
