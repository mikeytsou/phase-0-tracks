# Release 0 & 1
class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
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
=begin
santas = Santa.new("", "")
santas.speak
santas.eat_milk_and_cookies("chocolate chip cookie")
=end

santas = []
santa_genders = ["Male", "Female", "Trans-Male", "Trans-Female", "Other"]
santa_ethnicities = ["Asian", "Black", "White", "Hispanic", "Other"]

santa_genders.each_index do |idx|
  santas << Santa.new(santa_genders[idx], santa_ethnicities[idx])
end

















