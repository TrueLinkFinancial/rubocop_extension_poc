# frozen_string_literal: true

require "rubocop"

module RuboCop
  module Cop
    module TrueLinkRules
      CHARACTER_LIMIT = 50

      # V2 Controllers must have a pundit policy
      class V2ControllerPunditPolicy < RuboCop::Cop::Base
        MSG = "V2 API Controllers must have a pundit policy"

        def on_class(node)
          class_name_node = node.children[0]
          class_name = class_name_node.const_name

          return unless class_name&.start_with?("API::V2::") && class_name&.end_with?("Controller")

          # TODO: Verify there is a pundit policy

          add_offense(class_name_node, message: MSG)
        end
      end
    end
  end
end
