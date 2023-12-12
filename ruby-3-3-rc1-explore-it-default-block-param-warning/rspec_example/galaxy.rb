class Galaxy
  attr_accessor :name, :number_of_stars, :stars

  def initialize(name, number_of_stars)
    @name = name
    @number_of_stars = number_of_stars
    @stars = []
  end

  def description
    "#{@name} contains approximately #{@number_of_stars} stars."
  end

  def number_of_known_stars
    @stars.size
  end
end
