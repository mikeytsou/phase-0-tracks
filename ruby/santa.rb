class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(eat)
    "That was a good #{eat}!"
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
=begin
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
=end
end

=begin
santas = Santa.new("", "")
santas.speak
santas.eat_milk_and_cookies("chocolate chip cookie")
=end

santas = []
santa_genders = ["Male", "Female", "Trans-Male", "Trans-Female", "Other"]
santa_ethnicities = ["Asian", "Black", "White", "Hispanic", "Other"]

=begin
santa_genders.each_index do |idx|
  santas << Santa.new(santa_genders[idx], santa_ethnicities[idx])
end

p santas[0].celebrate_birthday
p santas[1].get_mad_at("Vixen")
p santas[2].gender = "N/A"
p santas[3].age
p santas[4].ethnicity
=end

for i in 1..50
  puts new_santas = Santa.new(santa_genders.sample, santa_ethnicities.sample)
  puts new_santas.age = rand(0..140)
  puts new_santas.gender
  puts new_santas.ethnicity
  puts new_santas.speak
  puts new_santas.eat_milk_and_cookies("Chocolate Chip")
  puts "--------------------------------------"
end

