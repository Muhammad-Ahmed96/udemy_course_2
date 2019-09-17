Rails.application.routes.draw do
  resources :protfolios, except: [:show] do
    member do
      get :toggle_status
    end
  end

  get 'protfolios/:type', to: 'protfolios#index'
  get 'protfolio/:id', to: 'protfolios#show', as: 'protfolio_show'
  resources :blogs
  #custom routes for login, resigeter in devise
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
