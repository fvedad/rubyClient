require 'rest-client'
require 'json'

require_relative '../models/Book'
require_relative '../utils/routes'
require_relative '../views/mainView'

class BookController

  def getBooks
    booksResponse = RestClient.get Routes::getBooksUri
    parsedResults = JSON.parse(booksResponse)
    books = []
    parsedResults['book'].each do |book|
      books << Book.new(book['title'], book['author'], book['description'], book["image"])
    end
    MainView::showBooks books
  end

end