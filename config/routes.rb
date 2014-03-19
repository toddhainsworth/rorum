Rorum::Application.routes.draw do
  root "pages#about"
  get '/about', to: "pages#about", as: :about
  get '/contact', to: "pages#contact", as: :contact
end
