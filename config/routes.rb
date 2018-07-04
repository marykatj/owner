Rails.application.routes.draw do
  resources :pets, only: [:index, :new, :create, :show, :edit, :update]
  resources :owners, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
