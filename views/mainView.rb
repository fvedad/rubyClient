class MainView
  class << self
    
    def showBooks(books)
      unless !books
        print "--------------- \n" 
        books.each do |a|
          a.printInfo
          print "--------------- \n"  
        end
      else
        print 'Cannot fetch books'
      end
    end

  end
end