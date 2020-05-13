Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :review, only: [:new, :create]
  end
  resources :reviews, only: [:index, :new, :show, :create]
end
