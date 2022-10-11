require_relative "Book"
require_relative "Journal"
require_relative "Newspaper"
require_relative "ManagerDocument"

documents_114 = []
managerDocument_114 = ManagerDocument.new

while(true)
    puts("\nApplication Manager Document")
    puts("Enter 1: To insert document")
    puts("Enter 2: To search document by category")
    puts("Enter 3: To show information documents")
    puts("Enter 4: To remove document by id")
    puts("Enter 5: To exit")

    line_114 = gets.chomp.to_i

    case line_114
    when 1
        puts("\nEnter a: to insert Book")
        puts("Enter b: to insert Newspaper")
        puts("Enter c: to insert Journal")
        type_114 = gets.chomp

        case type_114
        when "a"
            puts("Enter ID: ")
            id_114 = gets.chomp
            puts("Enter nxb: ")
            publishCompany_114 = gets.chomp
            puts("Enter number: ")
            releaseNumber_114 = gets.chomp
            puts("Enter author: ")
            author_114 = gets.chomp
            puts("Enter page number: ")
            pagenumber_114 = gets.chomp

            book_114 = Book.new(id_114, publishCompany_114, releaseNumber_114, author_114, pagenumber_114)
            managerDocument_114.addDocument(documents_114, book_114)
        when "b"
            puts("Enter ID: ")
            id_114 = gets.chomp
            puts("Enter nxb: ")
            publishCompany_114 = gets.chomp
            puts("Enter number: ")
            releaseNumber_114 = gets.chomp
            puts("Enter Day issue:")
            publishDay_114 = gets.chomp

            newspaper_114 = Newspaper.new(id_114, publishCompany_114, releaseNumber_114, publishDay_114)
            managerDocument_114.addDocument(documents_114, newspaper_114)
        when "c"
            puts("Enter ID: ")
            id_114 = gets.chomp
            puts("Enter nxb: ")
            publishCompany_114 = gets.chomp
            puts("Enter number: ")
            releaseNumber_114 = gets.chomp
            puts("Enter issue number: ")
            publishNumber_114 = gets.chomp
            puts("Enter issue month: ")
            publishMonth_114 = gets.chomp

            journal_114 = Journal.new(id_114, publishCompany_114, releaseNumber_114, publishNumber_114, publishMonth_114)
            managerDocument_114.addDocument(documents_114, journal_114)
        end
    when 2
        puts("Enter a to search book")
        puts("Enter b to search newspaper")
        puts("Enter a to search journal")
        choice_114 = gets.chomp

        case choice_114
        when "a"
            puts "Book:"
            managerDocument_114.searchByBook(documents_114)
        when "b"
            puts "Newspaper:"
            managerDocument_114.searchByNewspaper(documents_114)
        when "c"
            puts "Journal:"
            managerDocument_114.searchByJournal(documents_114)
        end
    when 3
        managerDocument_114.showInfor(documents_114)
    when 4
        puts "Enter id to remove: "
        id_rm_114 = gets.chomp
        managerDocument_114.deleteDocument(id_rm_114, documents_114)
        puts "List of documents: "
        managerDocument_114.showInfor(documents_114)
    when 5
        puts "Exits"
        return
    else
        puts "Invalid"
    end
end