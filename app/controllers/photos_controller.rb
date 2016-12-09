class PhotosController <ApplicationController
 
 def index
  @photos = Photo.all
 end
 
 
 def show 
  @photo = Photo.find(params[:id])
 end
 
 
 def new 
  @photo = Photo.new
 end
 
 def create 
  #binding.pry
   @photo = Photo.new(photo_params)
   @photo.martist = Martist.find(21)
   
   
   if @photo.save
    # do something
    flash[:sucess] ="Your photo was uploaded succesfully"
    redirect_to photos_path
   else 
    render :new
   end
 end
 
 def edit
  @photo = Photo.find(params[:id])
 end
 
 
 def update
   @photo = Photo.find(params[:id])
   if @photo.update(photo_params)
     flash[:sucess] ="Your photo was editted succesfully"
     redirect_to photos_path(@photo)
   else 
    render :edit
   end 
 end
 
 private  #defining explicitly what paramters the form would accept  in this private method
 
     def photo_params
       params.require(:photo).permit(:summary)
     end
  
end