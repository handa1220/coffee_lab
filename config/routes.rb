Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :public do
    root to: "homes#top"
    resources :reviews, only: [:index, :show, :new, :create, :edit, :update, :search, :destroy]
    resources :customers, only: [:show, :edit, :update]
  end

  namespace :admin do
    root to: "homes#top"
    resources :customers, only: [:index, :show, :edit, :update]
    resources :reviews, only: [:index, :show, :edit, :update, :destroy]
  end


end
