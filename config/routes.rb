Rails.application.routes.draw do
    root 'pages#home'
get '/home' , to: 'pages#home'

  get '/martists' , to: 'martists#index'
   get '/martists/new', to: 'martists#new', as: 'makeup_profile'
   post '/martists', to: 'martists#create'
    get  '/martists/:id/edit', to: 'martists#edit', as: 'edit_martist'
    patch '/martists/:id', to: 'martists#update'
     get 'martists/:id', to: 'martists#show', as: 'martist'

  
 get '/bookings' , to: 'booking#new' ,as: 'new_booking'
 get '/bookings/:id/edit', to: 'bookings#edit', as: 'edit_booking'
 patch  '/bookings/:id', to: 'bookings#update'
 get 'bookings/:id', to: 'bookings#show' , as: 'booking'
 delete '/bookings/:id', to: 'bookings#destroy'
 
 get '/photos', to: 'photos#index'
 get '/photos/new', to: 'photos#new', as: 'new_photo'
 post '/photos', to: 'photos#create'
 get '/photos/:id/edit', to: 'photos#edit', as: 'edit_photo'
 patch '/photos/:id', to: 'photos#update'
 get 'photos/:id', to: 'photos#show', as: 'photo'
 delete '/photos/:id', to: 'photos#destroy'
  
 


  

end
