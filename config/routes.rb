Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
      resources :crawlers, :only => [:index, :show] do
        resources :counters, :only => [:index, :show]
      end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
