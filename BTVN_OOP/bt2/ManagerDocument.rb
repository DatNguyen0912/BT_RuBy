require_relative "Book"
require_relative "Journal"
require_relative "Newspaper"

class ManagerDocument
    def initialize

    end

    def addDocument(documents_114, document_114)
        documents_114.push(document_114)
    end

    def deleteDocument(id_114, documents_114)
        for document_114 in documents_114 do
            if document_114.id_114 == id_114
                documents_114.delete(document_114)
                puts("Remove successfully")
            end
        end
    end

    def showInfor(documents_114)
        for document_114 in documents_114 do
            document_114.showInfor
        end
    end

    def searchByBook(documents_114)
        for document_114 in documents_114 do
            if document_114.instance_of? Book
                document_114.showInfor
            end
        end
    end

    def searchByJournal(documents_114)
        for document_114 in documents_114 do
            if document_114.instance_of? Journal
                document_114.showInfor
            end
        end
    end

    def searchByNewspaper(documents_114)
        for document_114 in documents_114 do
            if document_114.instance_of? Newspaper
                document_114.showInfor
            end
        end
    end
end