require_relative "Document"

class Book < Document
    attr_accessor :author_114, :pagenumber_114

    def initialize (id_114, publishCompany_114, releaseNumber_114, author_114, pagenumber_114)
        super(id_114, publishCompany_114, releaseNumber_114)
        @author_114 = author_114
        @pagenumber_114 = pagenumber_114
    end

    def showInfor()
        puts "Id: #{@id_114} - Publish Company: #{@publishCompany_114} 
        - Release Number: #{@releaseNumber_114} - Author: #{@author_114} 
        - Number Page: #{@pagenumber_114}" 
    end
end