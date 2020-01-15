Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :images 

  # set up another route to get all the pictures that isn't limiting 10 images 
  get '/get_All_Pictures', to: 'images#get_All_Pictures'
end
