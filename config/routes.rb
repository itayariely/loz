Rails.application.routes.draw do
  # root :to => "friends#index"
  root :to => 'home#index'
  # resource :calendar, :only => [:show]
  resources :events
  resources :circuls
  resources :friends


end
