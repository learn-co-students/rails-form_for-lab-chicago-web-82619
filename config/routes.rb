Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/school_classes/index'

  resources :school_classes do
    resources :students
  end

  root 'school_classes#index'

end
