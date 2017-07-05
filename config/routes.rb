Rails.application.routes.draw do
  get 'test', to: 'test#index'

  resources :mind_maps, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
