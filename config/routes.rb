Rails.application.routes.draw do
  root "homes#index"

  get 'login', to: redirect('/auth/checkin'), as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
end
