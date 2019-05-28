Rails.application.routes.draw do
  resources :crawlers, :only => [:index, :show] do
    resources :counters, :only => [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
