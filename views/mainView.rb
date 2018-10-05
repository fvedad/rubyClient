require_relative '../utils/strings'

class MainView
  class << self
    
    def showBooks(books)
      unless !books
        print Strings::seperator 
        books.each do |a|
          a.printImage
          a.printInfo
          print Strings::seperator
        end
      else
        print 'Cannot fetch books'
      end
    end

  end
end