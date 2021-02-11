Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users, controllers: { 
    sessions: 'users/sessions', 
    registrations: "users/registrations",
  }

  
  # namespace 'admin' do
  #   resources 'users'
  #   root 'users#index'
  # end

  # namespace 'newbie' do
  #   get 'history', to: 'user#history'
  #   root 'user#index'
  # end

  # namespace 'master' do
  #   resources 'users', only: [:index, :show, :update]
  #   resources 'salaries', except: [:new, :create] do
  #     collection  do
  #       get :pdf
  #     end  
  #   end   
  #   get 'history', to: 'user#history'
  #   get 'home', to: 'users#home'
  #   root 'users#home'
  # end

  # resources 'problems', only: [:index, :new, :create]

  # get 'about', to: 'home#about'
  # get 'contact', to: 'home#contact'
  # get 'qa', to: 'home#qa'




end
