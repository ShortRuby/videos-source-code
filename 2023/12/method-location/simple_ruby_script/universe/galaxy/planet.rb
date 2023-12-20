module Universe
  module Galaxy
    class Planet
      attr_accessor :name

      def initialize(name)
        @name = name
      end

      def life?
        true
      end
    end
  end
end
