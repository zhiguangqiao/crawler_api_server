Rails.application.routes.draw do
  resources :counters, :only => [:index, :show]
  resources :crawlers, :only => [:index, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
