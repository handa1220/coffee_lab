Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about", as: "about"
    resources :reviews, only: [:index, :show, :new, :create, :edit, :update, :search, :destroy]
    get "customers/my_page" => "customers#show", as: "my_page_customers"
    get "customers/information/edit" => "customers#edit", as: "edit_information_customers"
    get "customers/information" => "customers#update", as: "information_customers"
  end

  namespace :admin do
    root to: "homes#top"
    resources :customers, only: [:index, :show, :edit, :update]
    resources :reviews, only: [:index, :show, :edit, :update, :destroy]
  end

end
