class PhotosController < ApplicationController

def index

@all_photos = Photo.all

  render("photos/index.html.erb")
end

def show

  id_number = params["photo_id"]
  p = Photo.find(id_number)

  @image_url = p.source
  @caption = p.caption
  @created = p.created_at

  render("photos/show.html.erb")
end

end
