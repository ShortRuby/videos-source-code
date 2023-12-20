module Universe
  module Galaxy
    class TwinSun < Star
      NAME_ALTERNATIVES = %i(twin_helios twin_sun twin_sol twin_solis)

      def initialize
        super('TwinSun')
      end

      def our_planet
        Planet.new('TwinEarth')
      end

      def life?
        false
      end


      NAME_ALTERNATIVES.each do |name|
        define_method "#{name}?" do
          true
        end

        define_method name do
          name
        end
      end
    end
  end
end
