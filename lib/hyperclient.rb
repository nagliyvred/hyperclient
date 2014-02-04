require 'hyperclient/entry_point'
require "hyperclient/version"

# Public: Hyperclient namespace.
#
module Hyperclient
  # Public: Convenience method to create new EntryPoints.
  #
  # url - A String with the url of the API.
  #
  # Returns a Hyperclient::EntryPoint
  def self.new(url, &block)
    if block
      Hyperclient::EntryPoint.new(url, block)
    else
      Hyperclient::EntryPoint.new(url)
    end
  end
end
