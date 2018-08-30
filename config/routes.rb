Rails.application.routes.draw do
  root "statics#home"
  get "about", to: "statics#about"
end
