Rails.application.routes.draw do
  resources :repiteds
  get ' repiteds/destroy_all' => 'repiteds#destroy_all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
