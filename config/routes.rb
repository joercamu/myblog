Rails.application.routes.draw do
  
  resources :categories
  resources :articles do
    resources :comments
  end
  devise_for :users
  root 'articles#index'
  
  get  "/dashboard", to: "welcome#dashboard"
  put "/articles/:id/publish", to: "articles#publish"

end
