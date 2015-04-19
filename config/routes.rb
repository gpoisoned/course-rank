Rails.application.routes.draw do
  root to: 'main#index'
  get '/search' => 'main#search'
  resources :main, :except => [:destroy, :edit, :show, :update, :create, :new]
  resources :courses, :except => [:destroy, :edit, :update, :create, :new]
  resources :instructors, :except => [:destroy, :edit, :update, :create, :new]
  get '/wtf' => 'static_pages#wtf'
end
