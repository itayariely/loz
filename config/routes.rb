Rails.application.routes.draw do
  resources :calendars
  # root :to => "friends#index"
    root :to => "circuls#index"
  # root :to => 'home#index'
  resources :events do
    collection do
      get :data, as: 'data'
      get :db_action, as: 'db_action'
      # post :db_action, as: 'db_action'
    end
  end
  resources :circuls
  resources :friends
  resources :weeks
  resources :schedules
  resources :conflicts, only: [:index]

  resources :home, only: [:index]
  match "home/data", :to => "home#data", :as => "data", :via => "get"


  resources :events do
  	member do
        post :approved
        post :draft
  	end
  end

end
