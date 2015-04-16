Rails.application.routes.draw do
  root to: 'main#index'
  post '/search' => 'main#search'
  resources :main, :except => [:destroy, :edit, :show, :update, :create, :new]
  resources :courses, :except => [:destroy, :edit, :update, :create, :new]
  resources :instructors, :except => [:destroy, :edit, :update, :create, :new]
end
