Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  devise_scope :user do
    get 'admin/login', to: "devise/sessions#new"
    delete 'admin/logout', to: "devise/sessions#destroy"
  end
  root "statics#home"
  get "about", to: "statics#about"
  resources :services
end
