Rails.application.routes.draw do
  resources :products
  get '/' => 'static_pages#home'
  get '/thankyou' => 'static_pages#thankyou'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
