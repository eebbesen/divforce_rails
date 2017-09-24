Rails.application.routes.draw do
  resources :reqs
  resources :recruiters
  resources :employers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
