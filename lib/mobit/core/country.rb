# encoding: utf-8
require 'csv'

module Mobit
  module Core
    class Country

      # Initialize country from csv file row (Array)
      def initialize(row = [])
        # "Name", "A2 (ISO)", "A3 (UN)", "Dialing code", "Trunk code"
        @name = row[0] rescue nil
        @iso_a2 = row[1] rescue nil
        @un_a3 = row[2] rescue nil
        @code = row[3] rescue nil
        @trunk_code = row[4] rescue nil
      end

      def name
        @name
      end

      def iso_a2
        @iso_a2
      end

      def un_a3
        @un_a3
      end

      def code
        @code
      end

      def trunk_code
        @trunk_code
      end

      # Country class methods
      class << self

        # Return Array of Mobit::Core::Country objects
        def all_codes
          countries_csv.map do |row|
            Mobit::Core::Country.new(row)
          end
        end

        private
          # Read csv file & create Array
          def countries_csv
            path = __dir__.sub(/core\Z/i, 'data')
            path += '/country_codes.csv'
            CSV.read(path)[1..-1] rescue []
          end

      end

    end
  end
end