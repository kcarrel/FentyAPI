Rails.application.routes.draw do
  resources :products
    get 'name/:name', to: 'products#name'
    get 'random', to: 'products#random'
    get 'collection/:collection', to: 'products#collection'
    get 'ingredient/:ingredient', to: 'products#ingredient'
    get 'color/:color', to: 'products#color'
    get 'price/:price', to: 'products#price'
    get 'type/:type', to: 'products#type'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
