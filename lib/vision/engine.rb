# frozen_string_literal: true

require 'haml'

module Vision
  class Engine < ::Rails::Engine
    isolate_namespace Vision

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
