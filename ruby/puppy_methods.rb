# Release 0 & 1
class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_age = 0
    human_years.times do
      dog_age += 7
    end
    dog_age
  end

  def play_dead(bang)
    if bang == "bang" 
      puts "*playing dead*"
    end
  end

end

# DRIVER CODE ----------------------------------------

new_puppy = Puppy.new
new_puppy.fetch("bone")
new_puppy.speak(5)
new_puppy.roll_over
new_puppy.dog_years(5)
new_puppy.play_dead("bang")

# Release 2
class Basketball

  def initialize
    puts "Initializing new basketball instance..."
  end

  def dribbles(num)
    num.times {puts "*dribble*"}
  end

  def pass(name)
    puts "*passes the ball to #{name.upcase}*"
  end

end

players = []
def 
for i in 1..5
  players << i = Basketball.new
end

players.each do |player|
  "#{player.dribbles(5)} #{player.pass("mike")}"
end

