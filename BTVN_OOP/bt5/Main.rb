require_relative "Hotel"
require_relative "Person"
require_relative "Room"
require_relative "RoomA"
require_relative "RoomB"
require_relative "RoomC"

hotel_114 = Hotel.new
while true
  # system("clear") || system("cls")
  puts "\n\n-----Application Manager Candidate-----"
  puts "Enter 1: To insert person for rent"
  puts "Enter 2: To remove person by passport"
  puts "Enter 3: To calculator price by passport"
  puts "Enter 4: To show infor"
  puts "Enter 5: To exit:"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert person-----"
    puts "Enter name:"
    name_114 = gets.chomp
    puts "Enter age:"
    age_114 = gets.to_i
    puts "Enter passport:"
    passport_114 = gets.chomp

    puts "Choise a to rent room type A"
    puts "Choise b to rent room type B"
    puts "Choise c to rent room type C"
    choice_114 = gets.chomp
    if choice_114 == "a"
      room_114 = RoomA.new
    elsif choice_114 == "b"
      room_114 = RoomB.new
    elsif choice_114 == "c"
      room_114 = RoomC.new
    end

    puts "Enter number day for rent:"
    numberRent_114 = gets.to_i

    person_114 = Person.new(name_114, age_114, passport_114, room_114, numberRent_114)
    hotel_114.addPerson(person_114)
  when 2
    puts "\n-----Remove person-----"
    puts "Enter passport:"
    passport_114 = gets.chomp
    hotel_114.deletePerson(passport_114)
  when 3
    puts "\n-----Calculation price-----"
    puts "Enter passport:"
    passport_114 = gets.chomp
    price_114 = hotel_114.calculator(passport_114)
    puts "Price: #{price_114}"
  when 4
    puts "\n-----List of Customer-----"
    hotel_114.show()
  when 5
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end