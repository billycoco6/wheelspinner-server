Rails.application.routes.draw do
  resources :items
  resources :spins
  resources :categories
  post 'user_token' => 'user_token#create'
  post 'store_token' => 'store_token#create'
  post 'users/register'
end
