class PhotosController < ApplicationController
 def index2
  @photos = Photo.all
  #martist = Martist.find(params[:id]) # a variable  to store a particular makeup artist by their id
  #@photos = martist.photos     #gets all photos by that makeup artist
 end 
 
 def index     # index action for nested routes 
  #@photos = Photo.all
  martist = Martist.find(params[:martist_id]) # a variable  to store a particular makeup artist by their id
  @photos = martist.photos     #gets all photos by that makeup artist
 end 
 
 
 def show
 #martist = Martist.find(params[:id])
 #@photo = martist .photos.find(params[:id])
  @photo = Photo.find(params[:id]) #grabbbing individual photo gallery 

 end 
 
 def new
  @photo = Photo.new
  
 end
 
 def create 
  # binding.pry
      #type in params to see th eactual id that was passed ,rails 4 force you to list what fields that the application can accept,so a private method is created below
     @photo = Photo.new(photo_params)
      @photo.martist = Martist.find(19)
     
     if  @photo.save
       flash[:success]  = "Your profile was created succesfully"     #sending a notification that recipee was created 
       redirect_to photos_path #reirecting to index page,so martist profile would be displayed nested path
     else
        render :new
     end
 end 
 
 private 
    def photo_params
    params.require(:photo).permit(:summary)
    end
 
end
 