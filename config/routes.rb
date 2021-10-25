Rails.application.routes.draw do
  devise_for :users
  resources :advertisements do  
      resources:comments
  end
  #root 'home#index'
  root 'advertisements#index'

  get "allads",to:"advertisements#allads"

  # for about page
  get 'home/about'
end
