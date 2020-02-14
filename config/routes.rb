Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/studios', to: 'studios#index'
  get '/actors/:id', to: 'actors#show'
  get '/movies/:id', to: 'movies#show'
  get '/movies/:id/actors/new', to: 'movies#new'
  patch '/movies/:id', to: 'movies#update'
end
