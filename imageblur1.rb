class Image

  def initialize(picture)
    @picture = picture
  end

  def output_image
    @picture.each do |line|
      puts line.join
    end
  end

end


anyimage = Image.new([[1,0,1],[0,1,0],[1,0,1],[0,1,0],[1,0,1],[0,1,0]])
anyimage.output_image