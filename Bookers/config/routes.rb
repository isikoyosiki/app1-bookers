Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get 'bookers/show'
  get 'bookers/index'
  get 'bookers/new'
  get 'bookers/:id/edit'=> 'bookers#edit', as: 'edit_bookers'
  get 'bookerss/:id' => 'bookerss#show', as: 'bookers'
  post 'bookers' => 'bookers#create'
  patch 'bookers/:id' => 'bookers#update', as: 'update_bookers'
  delete 'bookers/:id' => 'bookers#destroy', as: 'destroy_bookers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
