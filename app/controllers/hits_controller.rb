class HitsController < ApplicationController
  
  def index
	@hits = Hits.all
  end

  def one_pixel_image_hit
  	Hit.create!(uri: request["Referer"])
  	render file: "pixel.gif"
  end

end
