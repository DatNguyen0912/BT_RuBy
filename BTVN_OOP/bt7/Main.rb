require_relative "ManagerTeacher"
require_relative "Teacher"

managerTeacher = ManagerTeacher.new
while true
  puts "\n\n-----Application Manager Teacher-----"
  puts "Enter 1: To insert teacher"
  puts "Enter 2: To remove teacher"
  puts "Enter 3: To get salary"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert Teacher-----"
    puts "Enter ID:"
    id_114 = gets.chomp
    puts "Enter name:"
    name_114 = gets.chomp
    puts "Enter age:"
    age_114 = gets.to_i
    puts "Enter hometown:"
    hometown_114 = gets.chomp
    puts "Enter salary:"
    salary_114 = gets.to_i
    puts "Enter bonus:"
    bonus_114 = gets.to_i
    puts "Enter penaty"
    penaty_114 = gets.to_i
    puts "Enter real salary:"
    realSalary_114 = gets.to_i

    teacher_114 = Teacher.new(salary_114, bonus_114, penaty_114, realSalary_114, name_114, age_114, hometown_114, id_114)

    managerTeacher.addTeacher(teacher_114)
  when 2
    puts "\n-----Remove teacher-----"
    puts "Enter id teacher:"
    id_114 = gets.chomp
    managerTeacher.deleteById(id_114)
  when 3
    puts "\n-----Get salary teacher-----"
    puts "Enter id teacher:"
    id_114 = gets.chomp
    managerTeacher.getSalary(id_114)
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end