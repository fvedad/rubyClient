require_relative 'controllers/Book.rb'
require 'json'
require 'base64'

print "Fetching books..."
bC = BookController.new
books = bC.getBooks