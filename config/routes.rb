Rails.application.routes.draw do
  root :to => 'teams#index'
  resources :teams, only: [:index]
  get 'raw_data', to: 'teams#raw_data'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
