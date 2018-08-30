Rails.application.routes.draw do
  devise_for :users
  root "statics#home"
  get "about", to: "statics#about"
  resources :services
end
