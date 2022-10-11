require_relative "Person"

class Family < Person
    attr_accessor :name_114, :age_114, :job_114, :passport_114 ,:address_114

    def initialize(name_114, age_114, job_114, passport_114, address_114)
        super(name_114, age_114, job_114, passport_114)
        @address_114 = address_114
    end

    def show
        puts "Name: #{@name_114}"
        puts "age: #{@age_114}"
        puts "job: #{@job_114}"
        puts "passport: #{@passport_114}"
        puts "address: #{@address_114}"
    end
end