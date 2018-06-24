Rails.application.routes.draw do
  get 'repiteds/destroy_all' => 'repiteds#destroy_all'
  get 'neededs/destroy_all' => 'neededs#destroy_all'
  resources :neededs
  resources :repiteds
  get '/calculate' => 'calculate#index'
  post '/calculate' => 'calculate#calculate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
