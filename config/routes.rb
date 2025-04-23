Rails.application.routes.draw do
  root "home#index"

  get  'text_summaries/analise', to: 'text_summaries#analise_form'
  post 'text_summaries/analise', to: 'text_summaries#analise'

  resources :politicas
  get "up" => "rails/health#show", as: :rails_health_check
end
