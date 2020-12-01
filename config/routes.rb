Rails.application.routes.draw do
  resources :transactions, only: [:index] do
    post 'default_webhook', :on => :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
