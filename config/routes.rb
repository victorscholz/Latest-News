Rails.application.routes.draw do
  resources :user_news_articles, except: [:delete]
  resources :news_articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  delete '/sessions/reset_page_count', to: 'sessions#reset_page_view_cookie', as: 'page_reset'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/create', to: 'sessions#create', as: 'login'
  get '/sessions/show', to: 'sessions#show', as: 'current_user'
  # get '/user_news_articles/show', to: 'user_news_articles#show', as: 'recent_user'

  delete '/user_news_articles/destroy', to: 'user_news_articles#destroy', as: 'delete_article'

end
