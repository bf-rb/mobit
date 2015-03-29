# encoding: utf-8
module Mobit
  module Config
    module SelectConfig

      # Class for user template
      # visual style of input
      class Template

        def initialize(name)
          @name = name
        end

      end

      class Config

        def initialize
          # Set default value
          @templates = Array.new
        end

        def template(name)
          template = Template.new(name)
          yield(template)
          @templates << template
        end

        def find_template(name)
          @templates.select{|t| t.name == name}.first
        end

      end

      def self.set_config
        @config = Config.new
        yield(@config)
      end

    end

  end

end