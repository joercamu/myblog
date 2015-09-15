Rails.application.routes.draw do
  
  resources :contacts
  resources :categories
  resources :articles do
    resources :comments
  end
  devise_for :users
  root 'welcome#index'
  
  get  "/dashboard", to: "welcome#dashboard"
  get "/contactenos", to: "contacts#new"
  get "/tecnologias", to: "pages#technologies"
  get "/quienes-somos", to: "pages#about_us"
  get "/siguenos", to: "pages#follow"
  
  put "/articles/:id/publish", to: "articles#publish"

end
