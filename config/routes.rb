Rails.application.routes.draw do
  root 'goddesses#index'
  resources :goddesses
end