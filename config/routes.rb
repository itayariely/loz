Rails.application.routes.draw do
  root :to => "friends#index"
  resources :events
  resources :circuls
  resources :friends
  

end
