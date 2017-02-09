Rails.application.routes.draw do
  
  root to: 'visitors#index'

  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions', passwords: 'passwords' }

end
