class Book

  attr_reader :title, :author, :description, :image_base64

  def initialize(title, author, description, image_base64)
    @title = title
    @author = author
    @description = description
    @image_base64 = image_base64
  end

  def printInfo
    print title + " - " + author + " \n"
    print "Description: \n" + description + "\n"
  end

  def self.requiredBookArgs
    print "Required arguments: \n"
    print "title, author, description, base64 encoded image\n"
  end

end