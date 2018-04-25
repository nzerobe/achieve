Rails.application.routes.draw do
  resources :feeds
  resources :contacts
  resources :models
  get 'sessions/new'

  get 'robs/index'

  post 'robs/new'
  resources :robs
  #post 'destroy/index'
  #post 'robs/new'
  resources :feeds, only: [:show, :edit, :update, :destroy]
  resources :robs, only: [:new, :create, :edit, :destroy]
  resources :sessions, only: [:new, :create, :edit, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
   resources :robs do
    collection do
      post :confirm
    end
end
end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

