require_relative "Student"

class School < Student
  def initialize
    @students_114 = []
  end

  def addStudent(student_114)
    @students_114 << student_114
  end

  def getStudent20YearsOld()
    students = []
    @students_114.each do |student_114|
      if student_114.age_114 == 20
        students << student_114
      end
    end

    if students != []
      students.each do |student|
        student.show()
      end
    else
      puts "null"
    end
  end

  def countStudent23YearOldInDN()
    count = 0
    @students_114.each do |student_114|
      if student_114.age_114 == 23 && student_114.hometown_114 == "DN"
        count += 1
      end
    end
    return count
  end

  def show()
    @students_114.each do |student_114|
      student_114.show()
    end
  end
end