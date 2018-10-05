require 'rest-client'
require 'json'

require_relative '../models/Book'
require_relative '../utils/routes'
require_relative '../views/mainView'

class BookController

  def getBooks
    checkImagesDir
    booksResponse = RestClient.get Routes::getBooksUri
    parsedResults = JSON.parse(booksResponse)
    books = []
    parsedResults['book'].each do |book|
      currentBook = Book.new(book['title'], book['author'], book['description'], book["image"])
      books << currentBook
      currentBook.saveImage
    end
    MainView::showBooks books
  end

  def checkImagesDir
    file = File.join(Dir.pwd, "/images")
    Dir.mkdir(file) unless Dir.exist?(file)
  end

end