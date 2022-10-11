require_relative "Student"
require_relative "Card"
require_relative "ManagerCard"

managerCard = ManagerCard.new
while true
  puts "\n\n-----Application Manager Card-----"
  puts "Enter 1: To insert card"
  puts "Enter 2: To remove card"
  puts "Enter 3: To show cards"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\nEnter ID:"
    id_114 = gets.chomp
    puts "Enter name:"
    name_114 = gets.chomp
    puts "Enter age:"
    age_114 = gets.to_i
    puts "Enter school:"
    school_114 = gets.chomp
    puts "Enter borrow date:"
    borrowDate_114 =  gets.to_i
    puts "Enter payment date:"
    paymentDate_114 =  gets.to_i
    puts "Enter book id:"
    bookId_114 =  gets.chomp

    card = Card.new(name_114, age_114, school_114, id_114, borrowDate_114, paymentDate_114, bookId_114)

    managerCard.addCard(card)
  when 2
    puts "\nEnter id card:"
    id_114 = gets.chomp
    managerCard.deleteCard(id_114)
  when 3
    puts "\n-----Show cards-----"
    managerCard.show()
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end
