# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :achievements do
    member do
      get 'assign'
    end
  end

  resources :totals
  resources :sections
end