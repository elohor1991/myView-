Rails.application.routes.draw do
    root 'pages#home'
 get '/home' , to: 'pages#home'
 #get '/martists' , to: 'martist#index'
 #get '/bookings' , to: 'booking#new' ,as: 'new_booking'
 #get '/bookings/:id/edit', to: 'bookings#edit', as: 'edit_booking'
 #patch  '/bookings/:id', to: 'bookings#update'
 #get 'bookings/:id', to: 'bookings#show' , as: 'booking'
 #delete '/bookings/:id', to: 'bookings#destroy'
  #get '/martists/:id', to: 'bookings#show' , as: 'martist_username'
  #get 'martists/:id', to: 'martists#show' , as: 'id'
 resources :martists
 

 
end
