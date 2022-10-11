require_relative "Student"
require_relative "Card"

class ManagerCard < Card
  def initialize
    @cards_114 = []
  end

  def addCard(card)
    @cards_114 << cards_114
  end

  def deleteCard(id)
    @cards_114.each do |card_114|
      if card_114.id == id
        @cards_114.delete(card_114)
        return true
      end
    end

    return false
  end

  def show()
    @cards_114.each do |card_114|
      card_114.show()
    end
  end
end