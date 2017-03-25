Rails.application.routes.draw do
  post 'shop_token' => 'shop_token#create'
  resources :items
  resources :spins
  resources :categories
  post 'user_token' => 'user_token#create'
  post 'users/register'
  post 'shops/register'
end
