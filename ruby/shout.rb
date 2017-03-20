# Release 1
=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "#{words}!!! :)"
  end

end

p Shout.yell_angrily("I'm so mad")
p Shout.yelling_happily("I'm so happy")
=end

# Release 3
module Shout

  def yell_angrily(words)
    "#{words}!!! :("
  end
  def yell_happily(words)
    "#{words}!!! :)"
  end

end

class Mom
  include Shout
end

class Dad
  include Shout
end

moms = Mom.new
p moms.yell_angrily("Clean up your room")
p moms.yell_happily("You did well on your test")

dads = Dad.new
p dads.yell_angrily("Stop fighting with your sister")
p dads.yell_happily("You played great")


