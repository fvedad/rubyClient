require_relative 'controllers/Book.rb'
require 'json'
require 'base64'

print "Fetching books... \n"
bC = BookController.new
books = bC.getBooks