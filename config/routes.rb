Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'silly', to:'silly#fun'

  resources :dogs, only:[:index, :show, :create, :update, :destroy]
  resources :dogs do 
    resources :toys ,only:[:index]
  end
  resources :toys, only:[:show, :create, :update, :destroy]
end
