Rails.application.routes.draw do

  root 'practices#index'
  resources :practices do
  	collection do
  		get :search
  		get :practice_list
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
