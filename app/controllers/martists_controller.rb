class MartistsController <ApplicationController
  
  def index
    
    @martists = Martist.all
    
  end
     def show
       #binding.pry  
       #type in params to see th eactual id that was passed 
       @martist = Martist.find(params[:id])
     end
     
     
     def  new
       
      @martist = Martist.new
       
     end
     
     def create
      # binding.pry
      #type in params to see th eactual id that was passed ,rails 4 force you to list what fields that the application can accept,so a private method is created below
      @martist = Martist.new(martist_params)
     # @martist.booking = Martist.find(1)
     
      if  @martist.save
        flash[:success]  = "Your profile was created succesfully"     #sending a notification that recipee was created 
        redirect_to martists_path   #reirecting to index page,so martist profile would be displayed 
      else
        render :new
      end
     end
     
     
    def edit  #remeber to cretae a template like similar for for creating profilr for edit
       @martist = Martist.find(params[:id])  #params contain the id
        
    end
    
    def update
      @martist = Martist.find(params[:id])
      if @martist.update(martist_params)
         #do something
       flash[:success] = "Your profile was updates succesfully"
       redirect_to martist_path(@martist)
         else
          render :edit
      end
    end
    
     
      private
        
        
        def martist_params
          
          params.require(:martist).permit(:lastname, :firstname, :email, :username, :profilemessage,:country_located, :culture )
        end
          
          
end



