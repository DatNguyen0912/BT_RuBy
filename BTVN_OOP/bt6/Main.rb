require_relative "Student"
require_relative "School"

school_114 = School.new
while true
  # add student
  puts "Enter number student:"
  number = gets.to_i
  for i in 0..number-1
    puts "\n-----Insert student #{i+1}-----"
    puts "Enter name:"
    name_114 = gets.chomp
    puts "Enter age:"
    age_114 = gets.to_i
    puts "Enter hometown:"
    hometown_114 = gets.chomp
    puts "Enter class:"
    classStudent_114 = gets.to_i

    student_114 = Student.new(name_114, age_114, hometown_114, classStudent_114)
    school_114.addStudent(student_114)
  end
  puts "\n\n-----List of Student-----"
  school_114.show()

  # Students 20 years old
  puts "\n\n-----List of Student 20 years old-----"
  school_114.getStudent20YearsOld()

  # Student 20 years old and in DN
  count_114 = school_114.countStudent23YearOldInDN()
  puts "count: #{count_114}"
end