Rails.application.routes.draw do
  resources :school_classes, only: [:index, :show, :edit, :new, :update, :create]
  resources :students, only: [:index, :show, :edit, :new, :update, :create]
end
