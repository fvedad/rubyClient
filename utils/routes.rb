class Routes
  class << self
    @@base = 'https://sleepy-mountain-72170.herokuapp.com/'

    def getBaseUri
      @@base
    end

    def getBooksUri 
      @@base + 'books'
    end

    def getUsersUri
      @@base + 'users'
    end

  end
end