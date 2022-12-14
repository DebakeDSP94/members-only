Rails.application.routes.draw do
  resources :posts
  
  devise_scope :user do
    get "users", to: "devise/sessions#new"
  end

  devise_for :users, path: '',
                path_names: { 
                sign_in: 'login',
                sign_out: 'logout',
                sign_up: 'register'
                            }
  root to: 'pages#home'

end
