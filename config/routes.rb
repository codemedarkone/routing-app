Rails.application.routes.draw do

  namespace :admin do
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
end

  get 'about', to: 'pages#about'

  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead_page'

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing'

  get 'query/:something/:another_one', to: 'pages#something'
  get 'query/:something', to: 'pages#something'
  root to: 'pages#home'

end
