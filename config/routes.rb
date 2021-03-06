Rorum::Application.routes.draw do
  devise_for :users
  resources :users, only: ['show']
  resources :forums

  root "pages#about"
  get '/about', to: "pages#about", as: :about
  get '/contact', to: "pages#contact", as: :contact
end
