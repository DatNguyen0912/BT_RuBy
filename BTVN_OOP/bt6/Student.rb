class Student
  attr_accessor :name_114, :age_114, :hometown_114, :classStudent_114

  def initialize(name_114, age_114, hometown_114, classStudent_114)
    @name_114 = name_114
    @age_114 = age_114
    @hometown_114 = hometown_114
    @classStudent_114 = classStudent_114
  end

  def show()
    puts "Name: #{@name_114} - age: #{@age_114} - hometown: #{@hometown_114} - class student: #{@classStudent_114}"
  end
end