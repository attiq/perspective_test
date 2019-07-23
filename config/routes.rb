Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'results', to: 'perspectives#results'
  root :to => "perspectives#index"
end
