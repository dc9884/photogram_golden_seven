Rails.application.routes.draw do

# CREATE
get("/photos/new", { :controller => "photos", :action => "new_form" })

get("/create_photo", { :controller => "photos", :action => "create_row" })

#READ
get("/", { :controller => "photos", :action => "home" })

get("/photos", { :controller => "photos", :action => "index" })

get("/photos/:photo_id", { :controller => "photos", :action => "show" })

#UPDATE
get("/photos/:photo_id/edit", { :controller => "photos", :action => "edit_form" })

get("/update_photo/:photo_id", { :controller => "photos", :action => "update_row" })

#DELETE
get("/delete_photo/:photo_id", { :controller => "photos", :action => "delete_row" })



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
