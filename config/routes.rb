Rails.application.routes.draw do
  post 'shop_token' => 'shop_token#create'
  resources :items
  resources :spins
  resources :categories
  resources :games
  post 'user_token' => 'user_token#create'
  get 'users/get_current_user'
  post 'users/register'
  post 'shops/register'
end
