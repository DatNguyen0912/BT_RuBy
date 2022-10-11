require_relative "Family"
require_relative "Person"

class Town < Family
    # attr_accessor :families
    def initialize()
        @families_114 = []
    end

    def addFamily(family_114)
        @families_114 << family_114
    end

    def showFamilyMembers()
        @families_114.each do |member_114|
            member_114.show()
        end
    end
end