Rails.application.routes.draw do

root to: 'restaurants#index'

resources :restaurants do
    resources :reviews, only: [:create]
  end

end
