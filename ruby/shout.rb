# Release 1
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



















