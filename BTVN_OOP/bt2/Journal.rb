require_relative "Document"

class Journal < Document
    attr_accessor :publishNumber_114, :publishMonth_114

    def initialize(id_114, publishCompany_114, releaseNumber_114, publishNumber_114, publishMonth_114)
        super(id_114, publishCompany_114, releaseNumber_114)
        @publishNumber_114 = publishNumber_114
        @publishMonth_114 = publishMonth_114
    end

    def showInfor()
        puts" Id: #{@id_114} - Publish Company: #{@publishCompany_114} 
        - Release Number: #{@releaseNumber_114} - Publish Number: #{@publishNumber_114} 
        - Publish Month: #{@publishMonth_114}"
    end
end