class PhotosController < ApplicationController
 def index2
   @photos = Photo.all
 end 
end
 