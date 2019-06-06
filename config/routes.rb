Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'pages/home', to: 'pages#home'
  # get 'pages/about', to: 'pages#about'
 root 'articles#home'
 resources :articles
 resources :users, except: [:new]
 get 'signup', to: "users#new"
 

end
