require_relative "Teacher"

class ManagerTeacher
  def initialize
    @teachers_114 = []
  end

  def addTeacher(teacher_114)
    @teachers_114 << teacher_114
  end

  def deleteById(id)
    @teachers_114.each do |teacher_114|
      if teacher_114.id == id
        @teachers_114.delete(teacher_114)
        return true
      end
    end

    return false
  end

  def getSalary(id)
    @teachers_114.each do |teacher_114|
      if teacher_114.id == id
        return teacher_114.salary_114 + teacher_114.bonus_114 + teacher_114.penaty_114
      end
    end

    return 0
  end
end