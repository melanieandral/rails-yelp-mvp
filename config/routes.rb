Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ressources :restaurants do
    ressources :review, only: [:new, :create]
  end
  ressources :reviews, only: [:index, :new, :show, :create]
end
