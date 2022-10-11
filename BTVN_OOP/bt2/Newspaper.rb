require_relative "Document"

class Newspaper < Document
    attr_accessor :publishDay_114

    def initialize(id_114, publishCompany_114, releaseNumber_114, publishDay_114)
        super(id_114, publishCompany_114, releaseNumber_114)
        @publishDay_114 = publishDay_114
    end

    def showInfor()
        puts "Id: #{@id_114} - Publish Company: #{@publishCompany_114} 
        - Release Number: #{@releaseNumber_114} 
        - Publish Day: #{@publishDay_114}"
    end
end