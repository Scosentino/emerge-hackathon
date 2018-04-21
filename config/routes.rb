Rails.application.routes.draw do
  resources :email_messages
  root 'email_messages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
