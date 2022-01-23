Rails.application.routes.draw do
  resources :lessons do
    get 'question', on: :member
  end
  resources :notes
  root 'welcome#index'
end
