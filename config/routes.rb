Rails.application.routes.draw do
  resources :ruta
  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'registrations'
      }


  devise_scope :users do
    resources :rutas
    resources :reportes
    resources :contactos
    resources :ecoaliados
    resources :acercade
    resources :eventos
    resources :politica
    resources :terminos
    resources :cultura
    resources :aprende
    resources :practica
    resources :calcula
    resources :beneficios


    get 'home/index'
    root 'home#index'
  end
end
