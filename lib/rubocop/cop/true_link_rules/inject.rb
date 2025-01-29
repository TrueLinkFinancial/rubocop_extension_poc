# frozen_string_literal: true

module RuboCop
  module Cop
    # WIP: Automatically include rules instead of having to require them in the rubocop.yml
    module TrueLinkRules
      CONFIG_PATH = File.expand_path("../../config/default.yml", __dir__)

      def self.inject_defaults!
        path = CONFIG_PATH
        hash = RuboCop::ConfigLoader.send(:load_yaml_configuration, path)
        RuboCop::ConfigLoader.instance_variable_get(:@default_configuration).merge!(hash)
      end
    end
  end
end

RuboCop::TrueLinkRules.inject_defaults!
