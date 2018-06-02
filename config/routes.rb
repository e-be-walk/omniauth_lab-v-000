Rails.application.routes.draw do
  root 'welcome#home'

  get '/auth/:provider/callback' => 'sessions#create'

  resources :users, :sessions
end
