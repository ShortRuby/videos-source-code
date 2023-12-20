# frozen_string_literal: true

module Universe
  module Galaxy
    class Sun < Star
      DYNAMIC_METHODS = %i(life? sun sun?).freeze

      def initialize
        super('Sun')
      end

      def our_planet
        Planet.new('Earth')
      end

      private

      def respond_to_missing?(name, include_private = false)
        DYNAMIC_METHODS.include?(name) || super
      end

      def method_missing(name, *args)
        return super unless DYNAMIC_METHODS.include?(name)

        handle_missing_method(name, *args)
      end

      def handle_missing_method(name, *args)
        case name
        when :life?
          true
        when :sun
          @name
        when :sun?
          true
        else
          super
        end
      end
    end
  end
end
