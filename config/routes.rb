Rails.application.routes.draw do
 
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, shallow: true
  end

  post "/cocktails/:cocktail_id/ingredient/new", to: 'cocktails#create_ingredent'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
