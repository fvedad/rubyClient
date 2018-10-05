require 'json'
require 'catpix'

class Book

  attr_reader :title, :author, :description, :image_base64

  def initialize(title, author, description, image_base64)
    @title = title
    @author = author
    @description = description
    @image_base64 = image_base64
  end

  def saveImage
    decoded = Base64.decode64(image_base64)
    File.open(File.join(Dir.pwd, "/images/#{title}.jpg"), 'wb') do |f|
      f.write(decoded)
    end
  end

  def printImage
    Catpix::print_image File.join(Dir.pwd, "/images/#{title}.jpg"),
      :limit_x => 0.5,
      :limit_y => 0.5,
      :center_x => false,
      :center_y => false,
      :bg => "black",
      :bg_fill => false,
      :resolution => "high"
  end

  def printInfo
    print "#{title} - #{author} \n"
    print "Description: \n #{description} \n"
  end

  def self.requiredBookArgs
    print "Required arguments: \n"
    print "title, author, description, base64 encoded image\n"
  end

end