# frozen_string_literal: true

module Universe
  module Galaxy
    class Star
      attr_reader :name
      attr_writer :name

      def initialize(name)
        @name = name
      end
    end
  end
end