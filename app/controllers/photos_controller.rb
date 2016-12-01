class PhotosController < ApplicationController
 def index2
   @photos = Photo.all
 end 
 
 def show
   @photo = Photo.find(params[:id])
 end 
end
 