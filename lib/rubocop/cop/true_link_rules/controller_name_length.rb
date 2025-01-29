# frozen_string_literal: true

require "rubocop"

module RuboCop
  module Cop
    module TrueLinkRules
      CHARACTER_LIMIT = 50

      # Limit number of characters in a Controller name
      class ControllerNameLength < RuboCop::Cop::Base
        MSG = "Controller class names should be less than #{CHARACTER_LIMIT} characters.".freeze

        def on_class(node)
          class_name_node = node.children[0]
          class_name = class_name_node.const_name

          return unless class_name&.end_with?("Controller") && class_name.length >= CHARACTER_LIMIT

          add_offense(class_name_node, message: MSG)
        end
      end
    end
  end
end
