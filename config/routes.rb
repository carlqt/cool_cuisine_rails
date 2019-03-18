Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :menu, only: :show, controller: :menu
  resources :cart_items, only: %i(index create destroy)
end
