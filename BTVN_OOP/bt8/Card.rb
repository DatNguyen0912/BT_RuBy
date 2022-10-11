require_relative "Student"

class Card < Student
  attr_accessor :name_114, :age_114, :school_114, :id_114, :borrowDate_114, :paymentDate_114, :bookId_114

  def initialize(name_114, age_114, school_114, id_114, borrowDate_114, paymentDate_114, bookId_114)
    super(name_114, age_114, school_114)
    @id_114 = id_114
    @borrowDate_114 = borrowDate_114
    @paymentDate_114 = paymentDate_114
    @bookId_114 = bookId_114
  end

  def show()
    puts "Id: #{@id_114} - name: #{@name_114} - age: #{@age_114} 
    - school: #{@school_114} - borrow date: #{@borrowDate_114} 
    - payment date: #{@paymentDate_114} - book id: #{@bookId_114}"
  end
end