Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  resources :articles do
  	resources :comments
  end
  resources :tags

  get 'article/:id/remove_image', to: 'articles#remove_image', as: 'remove_article_image'
end
