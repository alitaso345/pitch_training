Rails.application.routes.draw do
  resources :lessons
  resources :notes
  root 'welcome#index'
end
