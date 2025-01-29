# frozen_string_literal: true

require_relative "rubocop_extension_poc/version"

# RubocopExtensionPoc is a True Link POC for a Rubocop Extension
module RubocopExtensionPoc
  class Error < StandardError; end

  def self.call
    puts "Hello world, this is the True Link Rubocop Extension POC!"
  end
end
