Rails.application.routes.draw do
    root 'pages#home'
get '/home' , to: 'pages#home'
# get '/martists' , to: 'martist#index'
# get '/bookings' , to: 'booking#new' ,as: 'new_booking'
# get '/bookings/:id/edit', to: 'bookings#edit', as: 'edit_booking'
 #patch  '/bookings/:id', to: 'bookings#update'
 #get 'bookings/:id', to: 'bookings#show' , as: 'booking'
 #delete '/bookings/:id', to: 'bookings#destroy'
  #get '/martists/:id', to: 'bookings#show' , as: 'martist_username'
  #get '/photos/new', to: 'photos#new', as: 'new_photo'
  #post '/photos', to: 'photos#create'
  #get  '/photos/:id/editting', to: 'photos#editting', as: 'editting_photo'
  #patch '/photos/:id', to: 'photos#update'
 #get 'photos/:id', to: 'photos#show', as: 'photo'
 #delete '/photos/:id', to: 'photos#destroy'
  
   
resources :martists
resources :photos
  


 
end
