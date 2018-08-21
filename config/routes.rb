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

    get 'puntos_cercanos/puntos_cercanos'
    get 'favoritos/favoritos'
    get 'recientes/recientes'
    get 'beneficios/beneficios'
    get 'cultura/cultura'
    get 'home/index'
    root 'home#index'
  end
end
