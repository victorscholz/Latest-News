Rails.application.routes.draw do
  resources :user_news_articles
  resources :news_articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
