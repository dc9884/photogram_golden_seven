class PhotosController < ApplicationController

def index

@all_photos = Photo.all

  render("photos/index.html.erb")
end

def new_form

  render("photos/new_form.html.erb")
end

def create_row

  p = Photo.new
  p.source = params["the_image_url"]
  p.caption = params["the_caption"]
  p.save
  redirect_to("/photos")
end

def show

  @photo =  Photo.find(params[:photo_id])

  @photo_id = @photo.id
  @image_url = @photo.source
  @caption = @photo.caption
  @created = @photo.created_at

  render("photos/show.html.erb")
end

def edit_form

  @photo = Photo.find(params[:photo_id])
  @photo_id = @photo.id
  @photo_source = @photo.source
  @photo_caption = @photo.caption

  render("photos/edit_form.html.erb")

end

def update_row

  p = Photo.find(params[:photo_id])
  p.source = params[:the_source]
  p.caption = params[:the_caption]
  p.save

  redirect_to("/photos")
end


end
