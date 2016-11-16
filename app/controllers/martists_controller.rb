class MartistsController <ApplicationController
  
  def index
    
    @martists = Martist.all
    
  end
     def show
       #binding.pry  
       #type in params to see th eactual id that was passed 
       @martist = Martist.find(params[:id])
     end
end