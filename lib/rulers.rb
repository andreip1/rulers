# frozen_string_literal: true

require_relative "rulers/version"
require "rulers/array"

module Rulers
  class Error < StandardError; end
  class Application 
    def call(env)
      File.write("debug.txt", "Running latest code version\n")
      [200, {'content-type' => 'text/html'}, ["hello from the latest version"]]
    end    
  end
end
