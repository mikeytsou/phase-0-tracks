# Release 0 & 1
class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = ""
    @ethnicity = ""
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(eat)
    puts "That was a good #{eat}!"
  end

end

new_santa = Santa.new("male", "asian")
new_santa.speak
new_santa.eat_milk_and_cookies("chocolate chip cookie")






















