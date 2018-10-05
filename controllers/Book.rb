require_relative '../models/Book'
require 'rest-client'

def foo
  RestClient.get "https://sleepy-mountain-72170.herokuapp.com/users"
end