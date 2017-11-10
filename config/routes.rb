Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create, :destroy ]
  end
  resources :doses, only: [ :destroy ]
  root to: 'cocktails#index'
end

