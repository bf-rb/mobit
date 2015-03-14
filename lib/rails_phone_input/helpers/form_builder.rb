# encoding: utf-8
module RailsPhoneInput
  module Helpers

    module FormBuilder
      extend ActiveSupport::Concern

      def rails_phone_field(method, options = {})
        @template.send("rails_phone_tag", @object_name, method, objectify_options(options))
      end

    end

  end
end