# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :achievements do
    collection do
      get 'add_group'
    end
  end
  resources :totals
end