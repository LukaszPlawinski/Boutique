Rails.application.routes.draw do
  devise_for :users
  get 'cart/index'
  resources :products
  get '/' => 'static_pages#home'
  get '/thankyou' => 'static_pages#thankyou'
  get '/login' => 'user#login'
  get '/logout' => 'user#logout'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/remove/:id' => 'cart#remove'
  get '/clear' => 'cart#clear'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
