# Release 2
module Flight

  def take_off(altitude) # don't need self when writing module as a mixin designed to add instance methods to a class. Only need self when not associated with a class.
    puts "Taking off and ascending until reaching #{altitude} ..."
  end

end

class Bird
  include Flight
end

class Plane
  include Flight
end

birds = Bird.new
birds.take_off(800)

planes = Plane.new
planes.take_off(30000)



