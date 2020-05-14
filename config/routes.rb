Rails.application.routes.draw do
  resources :cocktails, only: %i[index show new create]
end
