Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'
  get 'products/:id' => 'products#show'
end
