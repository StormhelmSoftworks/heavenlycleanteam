Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  devise_scope :user do
    get 'admin/login', to: "devise/sessions#new"
    get 'admin/logout', to: "devise/sessions#destroy"
  end
  root "statics#home"
  get "about", to: "statics#about"
  get "quote", to: "statics#quote"
  get "contact", to: "statics#contact"
  get "services", to: "statics#services", as: "services_list"
  get "debug", to: "statics#debug"
  namespace :admin do
    resources :services, except: [:create, :update, :show]
    post "services/new", to: "services#create"
    post "services/edit", to: "services#update"
  end
end
