require_relative "universe/galaxy/star"
require_relative "universe/galaxy/sun"
require_relative "universe/galaxy/planet"
require "debug"

star = Universe::Galaxy::Star.new("Some Other Sun")
sun = Universe::Galaxy::Sun.new

binding.irb

# When debugger starts you can use the following commands:

# From IRB
# show_source star.name
# show_source star.name=

# From Ruby
# star.method(:name).source_location
# star.method(:name=).source_location

# From Debug
# ls star # list all methods of the object Star
#