Rails.application.routes.draw do
  resources :users

  resources :projects
  resources :tasks do
    put :complete, on: :member

  end
  root to: 'projects#index'

  get 'users/:id' => 'users#show'
  get 'users' => 'users#index'
  get 'new_user' => 'users#new'
  get 'sign_in' => 'devise/sessions#new'
  post 'login' => 'sessions#create'
  get 'index', to: 'sessions#index'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'log_out' => 'session#destroy', :as => 'log_out'
  get 'projects' => 'projects#index'
  get 'projects' => 'projects#show'
  get 'new_project' => 'projects#new'
  post 'projects' => 'projects#create'

  get 'tasks' => 'tasks#index'
  get 'tasks' => 'tasks#show'
  get 'new_task' => 'tasks#new'
  post 'tasks' => 'tasks#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
