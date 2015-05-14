Rails.application.routes.draw do
    root 'events#index'
      resources :sessions
      resources :events do
        resources :jtables
      end
end
