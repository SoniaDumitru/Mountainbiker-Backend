Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :paths
        resources :users
        resources :comments
        resources :adventures
        
          post "/login", to: "auth#login"

          get "/current_user", to: "auth#get_user_from_token"

      end
    end
  end
