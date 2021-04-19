Rails.application.routes.draw do
  resources :services
  get '/completed/:id', to: 'completed#update', as: 'update_completed'
  root to: 'services#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
