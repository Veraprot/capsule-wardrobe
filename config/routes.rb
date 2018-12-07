Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :categories do
        resources :items
      end
      resources :outfits do
        resources:items
      end
    end
  end
end
