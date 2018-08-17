Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'registrations'
      }


  devise_scope :users do

    resources :reportes
    resources :contactos

    get 'puntos_cercanos/puntos_cercanos'
    get 'favoritos/favoritos'
    get 'recientes/recientes'
    get 'terminos/terminos'
    get 'politica/politica'
    get 'ecoaliados/ecoaliados'
    get 'beneficios/beneficios'
    get 'mi_ruta/mi_ruta'
    get 'cultura/cultura'
    get 'eventos/eventos'
    get 'acercade/acercade'
    get 'home/index'
    root 'home#index'
  end
end
