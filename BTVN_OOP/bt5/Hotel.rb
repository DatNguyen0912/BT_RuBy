require_relative "Person"
require_relative "Room"

class Hotel < Person
  def initialize
    @room_114 = []
  end

  def addPerson(person_114)
    @room_114 << person_114
    puts("Add successfully")
  end

  def deletePerson(passport)
    person = findPersonByPassport(passport)
    @room_114.delete(person)
    puts "Remove successfully"
  end

  def calculator(passport)
    person = findPersonByPassport(passport)
    return total = person.room_114.price_114 * person.numberRent_114
  end

  def findPersonByPassport(passport)
    @room_114.each do |person_114|
      if person_114.passport_114 == passport
        return person_114
      end
    end
  end

  def show()
    @room_114.each do |person_114|
      person_114.show()
    end
  end
end