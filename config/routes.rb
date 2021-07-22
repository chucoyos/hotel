Rails.application.routes.draw do
  resources :services do
    resource :completed
  end
  root to: 'services#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
