Rails.application.routes.draw do
  get 'pages/home'
  resources :services do
    resource :completed
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
