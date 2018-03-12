Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :tickets
  resources :comments

  get '/complete' => 'tickets#complete'
  post '/complete' => 'tickets#complete'

  post '/user/signup' => "users#google_sign_up"

end
