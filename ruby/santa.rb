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

  # setter methods:
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    if @reindeer_ranking.include?(name)
      @reindeer_ranking.delete(name)
      @reindeer_ranking << name
    else
      @reindeer_ranking << name
    end
  end

  def gender=(gender)
    @gender = gender
  end

  #getter methods:
  def age
    @age
  end

  def ethnicity
    @ethnicity
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

p santas[0].celebrate_birthday
p santas[1].get_mad_at("Vixen")
p santas[2].gender = "N/A"
p santas[3].age
p santas[4].ethnicity












