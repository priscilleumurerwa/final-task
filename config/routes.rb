Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :users, only: [:index, :show, :destroy]
  get 'comments/create'
  resources :families do
  resources :comments
end
  resources :brides
  resources :grooms
  # mount LetterOpenerWeb::Engine, at: "/letter_opener"
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
