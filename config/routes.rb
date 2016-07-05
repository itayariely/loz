Rails.application.routes.draw do
  # root :to => "friends#index"
    root :to => "circuls#index"
  # root :to => 'home#index'
  # resource :calendar, :only => [:show]
  resources :events
  resources :circuls
  resources :friends
  resources :weeks


  resources :home, only: [:index]
match "home/data", :to => "home#data", :as => "data", :via => "get"


  resources :events do
  	member do
        post :approved
        post :draft
  	end
  end

end
