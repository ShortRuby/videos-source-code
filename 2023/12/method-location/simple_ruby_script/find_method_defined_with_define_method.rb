require_relative "universe/galaxy/star"
require_relative "universe/galaxy/sun"
require_relative "universe/galaxy/twin_sun"
require_relative "universe/galaxy/planet"
require "debug"

twin_sun = Universe::Galaxy::TwinSun.new

binding.irb

# When debugger starts you can use the following commands:

# From Debug
# ls twin_sun # list all methods of the object Star

# From IRB
# show_source twin_sun.twin_helios?

# From Ruby
# star.method(:twin_helios?).source_location
