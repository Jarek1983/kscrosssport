Rails.application.routes.draw do

  devise_for :users
  root 'practices#index'
  resources :practices do
  	collection do
  		get :search
  		get :practice_list
  	end
  end

# resources :carousels
resources :players
resources :about 
resources :messages
# root 'messages#new'
# match "message/new" => "message#new", as: :message_new, via: [:get, :post]
# get 'messages/index'
# post 'messages/create', to: 'messages#create' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
