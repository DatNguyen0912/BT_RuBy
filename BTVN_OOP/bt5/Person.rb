require_relative "Room"

class Person < Room
  attr_accessor :name_114, :age_114, :passport_114, :room_114, :numberRent_114

  def initialize(name_114, age_114, passport_114, room_114, numberRent_114)
    @name_114 = name_114
    @age_114 = age_114
    @passport_114 = passport_114
    @room_114 = room_114
    @numberRent_114 = numberRent_114
  end

  def show()
    puts "Name: #{@name_114}"
    puts "age: #{@age_114}" 
    puts "passport: #{@passport_114}"
    puts "room: #{@room_114}"
    puts "number rent: #{@numberRent_114}"
  end
end