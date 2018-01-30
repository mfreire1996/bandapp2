Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :bands
resources :events
resources :venues

get '/bands' => 'bands#index'
get '/bands:id' => 'bands#show'
get '/venues' => 'venues#index'
get '/venues/:id' => 'venues#show'
get '/events' => 'events#index'
get '/events/:id' => 'events#show'

end
