Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'users#new'
  post   'signup'   => 'users#usercreate'
  get    'show/:id' => 'profiles#show'
  get    'project/:id'=>'project#new'
  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experience , only: [:new]
  
  resources :users
end
