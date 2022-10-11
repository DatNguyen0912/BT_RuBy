require_relative "Person"
require_relative "Family"
require_relative "Town"

town_114 = Town.new

while true
    puts "Enter number town:"
    n_114 = gets.chomp.to_i
    for i in 0..n_114-1
        puts "\n----------Town #{i+1}:----------"
        # Input foreach family
        puts "Enter address:"
        address_114 = gets.chomp

        # Enter person number in family
        puts "Enter number person:"
        number_114 = gets.to_i

        for j in 0..number_114-1
            # Input person for famil
            puts "\nMember #{j+1}:"
            puts "Enter name:"
            name_114 = gets.chomp
            puts "Enter age:"
            age_114 = gets.to_i
            puts "Enter job:"
            job_114 = gets.chomp
            puts "Enter passport:"
            passport_114 = gets.chomp

            family_114 = Family.new(name_114, age_114, job_114, passport_114, address_114)
            town_114.addFamily(family_114)
        end
    end



    puts "\n------------------"
    town_114.showFamilyMembers()
end
