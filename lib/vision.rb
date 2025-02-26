# frozen_string_literal: true

require 'vision/engine'

module Vision
  # Your code goes here...
  class Configuration
    attr_accessor :researcher_not_found_redirect_path

    def initialize
      @researcher_not_found_redirect_path = '/'
    end
  end

  class << self
    attr_accessor :config

    def configure
      self.config ||= Configuration.new
      yield(config) if block_given?
    end
  end
end
