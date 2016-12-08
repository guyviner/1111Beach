Rails.application.routes.draw do
  root to: 'rooms#show'

  mount ActionCable.server => '/cable'

  resources :users, only: [:edit, :update, :show] do
    get "/change_password" => "users#change_password"
  end

  resources :sessions, only: [:new, :create, :destroy] do
    delete :destroy, on: :collection
    get :forgot_password, on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
