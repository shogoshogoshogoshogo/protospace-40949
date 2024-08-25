Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
     resources :comments, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  end
     resources :users, only: [:show]  
end
