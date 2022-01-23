Rails.application.routes.draw do
  resources :lessons do
    resources :lesson_targets
    get 'question', on: :member
  end
  resources :notes
  root 'welcome#index'
end
