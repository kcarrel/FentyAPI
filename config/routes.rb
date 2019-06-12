Rails.application.routes.draw do
  resources :products
    get 'name/:name', to: 'products#name'
    get 'collection/:collection', to: 'products#collection'
    get 'ingredient/:ingredient', to: 'products#ingredient'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
